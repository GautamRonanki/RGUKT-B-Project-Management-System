<div class="hero_in shop_detail" style="background: url(<?php echo base_url('uploads/listing_cover_photo/'.$listing_details['listing_cover']); ?>) center center no-repeat; background-size: cover;">
</div>

<nav class="secondary_nav sticky_horizontal_2">
	<div class="container">
		<ul class="clearfix">
			<li><a href="#description" class="active"><?php echo get_phrase('description'); ?></a></li>
			<li><a href="#reviews"><?php echo get_phrase('reviews'); ?></a></li>
			<li><a href="#sidebar"><?php echo get_phrase('booking'); ?></a></li>
		</ul>
	</div>
</nav>

<div class="container margin_60_35">
	<div class="row">
		<div class="col-lg-8">
			<section id="description">
				<div class="detail_title_1">
					<div class="row">
						<div class="col-6">

						</div>
						<div class="col-6">

						</div>
					</div>
					<h1>
						<?php echo $listing_details['name']; ?>

						<?php $claiming_status = $this->db->get_where('claimed_listing', array('listing_id' => $listing_id))->row('status'); ?>
						<?php if($claiming_status == 1): ?>
							<span class="claimed_icon" data-toggle="tooltip" title="<?php echo get_phrase('this_listing_is_verified'); ?>">
								<img src="<?php echo base_url('assets/frontend/images/verified.png'); ?>" width="30" />
							</span>
						<?php endif; ?>
					</h1>
					
				</div>

				<div class="add_bottom_15">
					<?php
					$categories = json_decode($listing_details['categories']);
					for ($i = 0; $i < sizeof($categories); $i++):
						$this->db->where('id',$categories[$i]);
						$category_name = $this->db->get('category')->row()->name;
						?>
						<span class="loc_open mr-2">
							<a href="<?php echo site_url('home/filter_listings?category='.slugify($category_name).'&&status=all'); ?>"
								style="color: #32a067;">
								<?php echo $category_name;?>
								>
							</a>
						</span>
						<?php
					endfor;
					?>
				</div>

				<h5><?php echo get_phrase('about'); ?></h5>
				<p>
					<?php echo nl2br($listing_details['description']); ?>
				</p>

				
				<?php if (count(json_decode($listing_details['photos'])) > 0): ?>
					<h5 class="add_bottom_15"><?php echo get_phrase('photo_gallery'); ?></h5>
					<div class="grid-gallery">
						<ul class="magnific-gallery">
							<?php foreach (json_decode($listing_details['photos']) as $key => $photo): ?>
								<?php if (file_exists('uploads/listing_images/'.$photo)): ?>
									<li>
										<figure>
											<img src="<?php echo base_url('uploads/listing_images/'.$photo); ?>" alt="">
											<figcaption>
												<div class="caption-content">
													<a href="<?php echo base_url('uploads/listing_images/'.$photo); ?>" title="" data-effect="mfp-zoom-in">
														<i class="pe-7s-plus"></i>

													</a>
												</div>
											</figcaption>
										</figure>
									</li>
								<?php endif; ?>
							<?php endforeach; ?>
						</ul>
					</div>
				<?php endif; ?>

				<hr>
				<?php include 'files.php'; ?>
				<hr>
				
				<?php include 'team.php'; ?>
				

				<?php include 'video_player.php'; ?>

				<hr>
				<h3>Documentation</h3>
				<div style="z-index: 50;">
					
					<iframe src="<?php echo $listing_details['phone']; ?>" style="width:100%;height: 500px;"></iframe>
				</div>
			</section>

			<?php 
			
			include 'listing_reviews.php'; ?>

			<?php $google_analytics_id = $this->db->get_where('listing', array('id' => $listing_id))->row('google_analytics_id'); ?>
			<script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $google_analytics_id; ?>"></script>
			<script>
			window.dataLayer = window.dataLayer || [];
			function gtag(){dataLayer.push(arguments);}
			gtag('js', new Date());

			gtag('config', '<?php echo $google_analytics_id; ?>');
			</script>
		</div>

		<?php if(has_package_feature('ability_to_add_contact_form', $listing_details['user_id']) == 1): ?>
			<aside class="col-lg-4" id="sidebar">
				<h3>Share</h3>

				<ul class="share-buttons">
					<li><a href = "https://www.facebook.com/sharer/share.php?u=<?php echo current_url();?>" class="fb-share" target="_blank"><i class="social_facebook"></i> Share</a></li>
					<li><a href = "https://twitter.com/share?url=<?php echo current_url();?>" target = "_blank" class="twitter-share"><i class="social_twitter"></i> Tweet</a></li>
					<li><a href = "http://pinterest.com/pin/create/link/?url=<?php echo current_url();?>" target="_blank" class="gplus-share"><i class="social_pinterest"></i> Pin</a></li>
					<li><a href = "https://web.whatsapp.com://send?text=<?php echo current_url();?>" target="_blank" class="wa-share"><i class="icon-ok"></i> WhatsApp</a></li>
					
				</ul>
			</aside>


		<?php endif; ?>

	</div>
</div>


<script type="text/javascript">
var isLoggedIn = '<?php echo $this->session->userdata('is_logged_in'); ?>';

// This function performs all the functionalities to add to wishlist
function addToWishList(listing_id) {
	if (isLoggedIn === '1') {
		$.ajax({
			type : 'POST',
			url : '<?php echo site_url('home/add_to_wishlist'); ?>',
			data : {listing_id : listing_id},
			success : function(response) {
				if (response == 'added') {
					$('#btn-wishlist').html('<i class="icon_heart"></i> <?php echo get_phrase('remove_from_wishlist'); ?>');
				}else {
					$('#btn-wishlist').html('<i class="icon_heart"></i> <?php echo get_phrase('add_to_wishlist'); ?>');
				}
			}
		});
	}else {
		loginAlert();
	}
}

function showClaimForm(){
	$('#claim_form').toggle();
	$('#report_form').hide();
}
function showReportForm() {
	$('#report_form').toggle();
	$('#claim_form').hide();
}

function getTheGuestNumberForBooking(listing_type) {
	if (isLoggedIn === '1') {
		if (listing_type === "restaurant" || listing_type === "hotel") {
			$('#adult_guests_for_booking').val($('#adult_guests').val());
			$('#child_guests_for_booking').val($('#child_guests').val());
		}

		$('.contact-us-form').submit();
	}else {
		loginAlert();
	}

}
</script>


<script>
createListingsMap({
	mapId: 'map',
	jsonFile: '<?php echo base_url('assets/frontend/single-listing-geojson/listing-id-'.$listing_id.'.json'); ?>'
});
</script>
