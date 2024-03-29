<?php
	$number_of_visible_categories = 10;
	$number_of_visible_amenities 	= 10;
	$number_of_visible_cities 		= 10;

	isset($category_ids) ? "" : $category_ids = array();
	isset($amenity_ids) ? "" 	: $amenity_ids = array();
	isset($city_id) ? "" 			: $city_id = 'all';
	isset($price_range) ? "" 			: $price_range = 0;
	isset($with_video) ? "" 	: $with_video = "";
	isset($with_open) ? "" 	: $with_open = "";
	isset($search_string) ? "": $search_string = "";
?>
<div id="results">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-4 col-10">
				<h4><strong><?php echo count($listings); ?></strong> <?php echo get_phrase('result_for_all'); ?></h4>
			</div>
			<div class="col-lg-9 col-md-8 col-2">
				<a href="#0" class="search_mob btn_search_mobile"></a> <!-- /open search panel -->
				<form action="<?php echo site_url('home/search'); ?>" method="GET">
					<div class="row no-gutters custom-search-input-2 inner">
						<div class="col-lg-8">
							<div class="form-group">
								<input class="form-control" name="search_string" type="text" value="<?php echo $search_string; ?>" placeholder="<?php echo get_phrase('what_are_you_looking_for'); ?>...">
								<i class="icon_search"></i>
							</div>
						</div>
						<div class="col-lg-3">
							<select class="wide" name="selected_category_id">
								<option value=""><?php echo get_phrase('all_categories'); ?></option>
								<?php
								$categories = $this->crud_model->get_categories()->result_array();
								foreach ($categories as $category):?>
									<option value="<?php echo $category['id']; ?>" <?php if($selected_category_id == $category['id']) echo 'selected'; ?>><?php echo $category['name']; ?></option>
								<?php endforeach; ?>
							</select>
						</div>
						<div class="col-lg-1">
							<input type="submit" value="Search">
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- /row -->
		<div class="search_mob_wp">
			<div class="custom-search-input-2">
				<form action="<?php echo site_url('home/search'); ?>" method="GET">
				<div class="form-group">
					<input class="form-control" name = "search_string" type="text" placeholder="<?php echo get_phrase('what_are_you_looking_for') ?>...">
					<i class="icon_search"></i>
				</div>
				<select class="wide" name="selected_category_id">
					<option><?php echo get_phrase('all_categories'); ?></option>
					<?php $categories = $this->db->get('category')->result_array();
					foreach ($categories as $key => $category):?>
					<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
					<?php endforeach; ?>
				</select>
				<input type="submit" value="Search">
			</form>
			</div>
		</div>
		<!-- /search_mobile -->
	</div>
	<!-- /container -->
</div>
<!-- /results -->
<!-- /filters -->

<div class="filters_listing version_2  sticky_horizontal">
	<div class="container">
		<ul class="clearfix">
			<li class=" float-right">
				<div class="layout_view">
					<?php
						$active_listing_view = $this->session->userdata('listings_view');

						if($active_listing_view == 'list_view'){
							$color_list = 'text-success';
							$color_grid = null;
						}else{
							$color_grid = 'text-success';
							$color_list = null;
						}

					?>
					
					<a href="javascript::" id="grid_view" onclick="toggleListingView('grid_view')" class="<?php echo $color_grid; ?>"><i class="icon-th mr-1"></i><?php echo get_phrase('grid_view'); ?></a>
				</div>
			</li>
			<li class=" float-right mr-1">
				<div class="layout_view">
					<?php
						$active_listing_view = $this->session->userdata('listings_view');

						if($active_listing_view == 'list_view'){
							$color_list = 'text-success';
							$color_grid = null;
						}else{
							$color_grid = 'text-success';
							$color_list = null;
						}

					?>
					
					<a href="javascript::" id="list_view" onclick="toggleListingView('list_view')" class="<?php echo $color_list; ?>"><i class="icon-map mr-1"></i><?php echo get_phrase('map_view'); ?></a>
				</div>
			</li>
		</ul>
	</div>
	<!-- /container -->
</div>

<div class="collapse" id="collapseMap">

</div>
<!-- /Map -->

<div class="container-fluid margin_60_35">
	<div class="row justify-content-md-center">
		
		<!-- /aside -->

		<div class="col-xl-8 col-md-12 order-xl-1 order-2" id="listings">

			<div class="row">

				<?php
				foreach($listings as $listing):
					if(!has_package($listing['user_id']) > 0)
						continue; ?>

					<?php
						// $active_package = has_package($listing['user_id']);
						// $listing_allowed_number = $this->db->get_where('package_purchased_history', array('id', $active_package))->row('number_of_listings');
						// $listings_2 = $this->db->get_where('listing', array('user_id' => $listing['user_id']));

					?>



				<!-- A Single Listing Starts-->
				<div class="col-lg-6 col-md-6 listing-div " data-marker-id="<?php echo $listing['code']; ?>" id = "<?php echo $listing['code']; ?>">

					<div class="strip grid <?php if($listing['is_featured'] == 1) echo 'featured-tag-border'; ?>">
						<figure>
							
							<a href="javascript::" class="wishlist-icon" onclick="addToWishList(this, '<?php echo $listing['id']; ?>')">
								<i class=" <?php echo is_wishlisted($listing['id']) ? 'fas fa-heart' : 'far fa-heart'; ?> "></i>
							</a>
							<?php if($listing['is_featured'] == 1){ ?>
								<a href="javascript::" class="featured-tag-grid"><?php echo get_phrase('featured'); ?></a>
							<?php } ?>
							<a href="<?php echo get_listing_url($listing['id']); ?>"  id = "listing-banner-image-for-<?php echo $listing['code']; ?>"  class="d-block h-100 img" style="background-image:url('<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>')">
								<!-- <img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt=""> -->
								<div class="read_more"><span><?php echo get_phrase('watch_details'); ?></span></div>
							</a>
							<small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
						</figure>
						<div class="wrapper <?php if($listing['is_featured'] == 1) echo 'featured-body'; ?>">
							<div class="add_bottom_15">

									<?php
									$categories = json_decode($listing['categories']);
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
							<h3 class="ellipsis">
								<a href="<?php echo get_listing_url($listing['id']); ?>"><?php echo $listing['name']; ?></a>
								<?php $claiming_status = $this->db->get_where('claimed_listing', array('listing_id' => $listing['id']))->row('status'); ?>
				                <?php if($claiming_status == 1): ?>
									<span class="claimed_icon" data-toggle="tooltip" title="<?php echo get_phrase('this_listing_is_verified'); ?>">
					                	<img src="<?php echo base_url('assets/frontend/images/verified.png'); ?>" width="23" />
					                </span>
								<?php endif; ?>
							</h3>
							
							<p class="ellipsis">
								<?php echo $listing['description']; ?>
							</p>
							

						</div>
						<ul class="<?php if($listing['is_featured'] == 1) echo 'featured-footer'; ?> mb-0">

							<li><span class="<?php echo strtolower(now_open($listing['status'])) == 'active' ? 'loc_closed' : 'loc_open'; ?>">

									<?php 
										if($listing['status'] == 'active') echo "Approved";
										else echo "Not Approved"


									?></span></li>
							<li>
								<div class="score">
									<span>
										<?php
				            if ($this->frontend_model->get_listing_wise_rating($listing['id']) > 0) {
				              $quality = $this->frontend_model->get_rating_wise_quality($listing['id']);
				              echo $quality['quality'];
				            }else {
											echo get_phrase('unreviewed');
										}
				            ?>
										<em>
											<?php echo count($this->frontend_model->get_listing_wise_review($listing['id'])).' '.get_phrase('reviews'); ?>
										</em>
									</span>
									<strong><?php echo $this->frontend_model->get_listing_wise_rating($listing['id']); ?></strong></div>
							</li>
						</ul>
					</div>
				</div>
				<!-- A Single Listing Ends-->
				<?php endforeach; ?>
			</div>

			<!-- custom pagination -->
			<?php if(isset($pagination) && isset($total_page_number) && $pagination == 'search_page'): ?>
				<nav class="text-center" aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				  	<li class=""><a class="page-link" href="<?php echo site_url('home/search/1?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo strtolower(get_phrase('first')); ?></a></li>
				  	<?php
				  		
			  			if($total_page_number <= 6){
			  				for($i=1; $i <= 6;  $i++){
			  					?>
			  					<li class=""><a class="page-link <?php if($active_page_number == $i) { echo 'active'; } ?>" href="<?php echo site_url('home/search/'.$i.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo $i; ?></a></li>
			  				<?php }
			  			}else{
			  				if($active_page_number-3 >= 1 && $active_page_number+3 <= $total_page_number){
			  					$start_i = $active_page_number - 3;
			  					$end_i = $active_page_number + 3;
			  					for($start_i; $start_i <= $end_i;  $start_i++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $start_i) { echo 'active'; } ?>" href="<?php echo site_url('home/search/'.$start_i.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo $start_i; ?></a></li>
			  					<?php }
			  				}elseif($active_page_number <= 3 && $total_page_number >=6){
			  				    $start_i = 1;
			  					$end_i = 6;
			  					for($start_i; $start_i <= $end_i;  $start_i++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $start_i) { echo 'active'; } ?>" href="<?php echo site_url('home/search/'.$start_i.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo $start_i; ?></a></li>
			  					<?php }
			  				}else{
			  				    
			  					$it= $total_page_number-6;
			  					for($it; $it <= $total_page_number;  $it++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $it) { echo 'active'; } ?>" href="<?php echo site_url('home/search/'.$it.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo $it; ?></a></li>
			  					<?php }
			  				}
			  			}
				  	?>
				    <li class=""><a class="page-link" href="<?php echo site_url('home/search/'.$total_page_number.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo strtolower(get_phrase('last')); ?></a></li>
				  </ul>
				</nav>
			<?php elseif(isset($pagination) && isset($total_page_number) && $pagination == 'filter_page'): ?>
				<nav class="text-center" aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				  	<li class=""><a class="page-link" href="<?php echo site_url('home/search/1?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo strtolower(get_phrase('first')); ?></a></li>
				  	<?php
				  		
			  			if($total_page_number <= 6){
			  				for($i=1; $i <= 6;  $i++){
			  					?>
			  					<li class=""><a class="page-link <?php if($active_page_number == $i) { echo 'active'; } ?>" href="<?php echo site_url('home/filter_listings/'.$i.'?'.$_SERVER['QUERY_STRING']); ?>"><?php echo $i; ?></a></li>
			  				<?php }
			  			}else{
			  				if($active_page_number-3 >= 1 && $active_page_number+3 <= $total_page_number){
			  					$start_i = $active_page_number - 3;
			  					$end_i = $active_page_number + 3;
			  					for($start_i; $start_i <= $end_i;  $start_i++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $start_i) { echo 'active'; } ?>" href="<?php echo site_url('home/filter_listings/'.$start_i.'?'.$_SERVER['QUERY_STRING']); ?>"><?php echo $start_i; ?></a></li>
			  					<?php }
			  				}elseif($active_page_number <= 3 && $total_page_number >=6){
			  				    $start_i = 1;
			  					$end_i = 6;
			  					for($start_i; $start_i <= $end_i;  $start_i++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $start_i) { echo 'active'; } ?>" href="<?php echo site_url('home/filter_listings/'.$start_i.'?'.$_SERVER['QUERY_STRING']); ?>"><?php echo $start_i; ?></a></li>
			  					<?php }
			  				}else{
			  				    
			  					$it= $total_page_number-6;
			  					for($it; $it <= $total_page_number;  $it++){
			  					?>
			  						<li class=""><a class="page-link <?php if($active_page_number == $it) { echo 'active'; } ?>" href="<?php echo site_url('home/filter_listings/'.$it.'?'.$_SERVER['QUERY_STRING']); ?>"><?php echo $it; ?></a></li>
			  					<?php }
			  				}
			  			}
				  	?>
				    <li class=""><a class="page-link" href="<?php echo site_url('home/search/'.$total_page_number.'?search_string='.$search_string.'&selected_category_id='.$selected_category_id); ?>"><?php echo strtolower(get_phrase('last')); ?></a></li>
				  </ul>
				</nav>
			<?php endif; ?>
			<!-- custom pagination end-->

			<nav class="text-center">
				<?php echo $this->pagination->create_links(); ?>
			</nav>
		</div>



		
	</div>
</div>
<!-- /container -->
<script type="text/javascript">
$(document).ready(function() {
	var deviceWidth = $(window).width();
	// windows laptop
	if (deviceWidth >= 1300 && deviceWidth <= 1450) {
		$('#sidebar').removeClass('col-xl-2');
		$('#sidebar').addClass('col-xl-3');
		$('#listings').removeClass('col-xl-5');
		$('#listings').addClass('col-xl-6');
	}
	//Macbook pro Ratina display
	if (deviceWidth >= 2550 && deviceWidth <= 2900) {
		$('#sidebar').removeClass('col-xl-2');
		$('#sidebar').addClass('col-xl-3');
		$('#listings').removeClass('col-xl-5');
		$('#listings').addClass('col-xl-6');
	}
});
	function filter(elem) {
		var urlPrefix 	= '<?php echo site_url('home/filter_listings?'); ?>'
		var urlSuffix = "";
		var slectedCategories = "";
		var selectedAmenities = "";
		var selectedCity = "";
		var selectedVideoAvailability = 0;
		var selectedPriceRange = 0;
		var selectedOpeningStatus = "all";

		$('.categories:checked').each(function() {
			(slectedCategories === "") ? slectedCategories = $(this).attr('value') : slectedCategories = slectedCategories + "--" + $(this).attr('value');
		});

		$('.amenities:checked').each(function() {
			(selectedAmenities === "") ? selectedAmenities = $(this).attr('value') : selectedAmenities = selectedAmenities + "--" + $(this).attr('value');
		});

		$('.city:checked').each(function() {
			(selectedCity === "") ? selectedCity = $(this).attr('value') : selectedCity = selectedCity + "--" + $(this).attr('value');
		});

		$('.video_availability:checked').each(function() {
			(selectedVideoAvailability === 0) ? selectedVideoAvailability = $(this).attr('value') : selectedVideoAvailability = selectedVideoAvailability + "--" + $(this).attr('value');
		});
		$('.openingStatus:checked').each(function() {
			(selectedOpeningStatus === 'all') ? selectedOpeningStatus = $(this).attr('value') : selectedOpeningStatus = $(this).attr('value');
		});


		selectedPriceRange = $('.price-range').val();
		urlSuffix = "category="+slectedCategories+"&&amenity="+selectedAmenities+"&&city="+selectedCity+"&&price-range="+selectedPriceRange+"&&video="+selectedVideoAvailability+"&&status="+selectedOpeningStatus;
		window.location.replace(urlPrefix+urlSuffix);
	}

	function addToWishList(elem, listing_id) {
		var isLoggedIn = '<?php echo $this->session->userdata('is_logged_in'); ?>';
		if (isLoggedIn === '1') {
			$.ajax({
				type : 'POST',
				url : '<?php echo site_url('home/add_to_wishlist'); ?>',
				data : {listing_id : listing_id},
				success : function(response) {
					if (response == 'added') {
						$(elem).html('<i class="fas fa-heart"></i>');
						toastr.success('<?php echo get_phrase('added_to_wishlist'); ?>');
					}else {
						$(elem).html('<i class="far fa-heart"></i>');
						toastr.success('<?php echo get_phrase('removed_from_the_wishlist'); ?>');
					}
				}
			});
		}else {
			loginAlert();
		}
	}


	function showToggle(elem, selector) {
		$('.'+selector).slideToggle();
		console.log($(elem).text());
		if($(elem).text() === "<?php echo get_phrase('show_more'); ?>")
    {
        $(elem).text('<?php echo get_phrase('show_less'); ?>');
    }
    else
    {
        $(elem).text('<?php echo get_phrase('show_more'); ?>');
    }
	}
</script>

<!-- This map-category.php file has all the fucntions for showing the map, marker, map info and all the popup markups -->
<?php include 'assets/frontend/js/map/map-category.php'; ?>

<!-- This script is needed for providing the json file which has all the listing points and required information -->
<script>
	function toggleListingView(type) {
		$.ajax({
			url:'<?php echo site_url('home/listings_view/'); ?>'+type,
			success: function(response){
				location.reload();
			}
		});
	}
</script>