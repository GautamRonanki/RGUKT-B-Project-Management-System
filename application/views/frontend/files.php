<?php $user_details = $this->user_model->get_all_users($listing_details['user_id'])->row_array(); ?>
<div class="row mb-3">
	<div class="col-12">
		<h5 class="mb-3"><?php echo get_phrase('agent_details'); ?></h5>

		<div class="row mb-1">
			<div class="col-md-12">
				
					<img src="<?php echo $this->user_model->get_user_thumbnail($listing_details['user_id']); ?>" alt="" class="float-left mr-3" width="80">
				
			
				<p class="m-0 pt-3"><b><?= $user_details['name']; ?></b><br><span style="font-size: 13px;"><?= $user_details['email']; ?></span></p>
				<p>
					<small><?php echo get_phrase('total').' '.$this->user_model->get_listing_by_user_id($user_details['id'])->num_rows().' '.get_phrase('listings'); ?></small>
				</p>
			</div>
		</div>
		<hr>
		<h5 class="mb-3">Project Files</h5>

		<?php if($listing_details['website'] != ""){ ?>
			<a href="<?php echo $listing_details['website']; ?>" target="blank" class="btn_1 full-width outline wishlist social-button" id = "btn-wishlist-social"><i class="icon-globe-6 mr-2"></i><?php echo get_phrase('website'); ?></a>
		<?php } ?>

		<?php if($listing_details['email'] != ""){ ?>
			<a href="<?php echo $listing_details['email']; ?>" target="blank" class="btn_1 full-width outline wishlist social-button" id = "btn-wishlist-social"><i class="icon-folder mr-2"></i>Project File</a>
		<?php } ?>

		<?php if($listing_details['phone'] != ""){ ?>
			<a href="<?php echo $listing_details['phone']; ?>" target="blank" class="btn_1 full-width outline wishlist social-button" id = "btn-wishlist-social"><i class="icon-paste mr-2"></i>Document</a>
		<?php } ?>


		<?php $social = $listing_details['social']; ?>
		<?php $social = json_decode($social, true); ?>

		<?php if($social['facebook'] != ""){ ?>
			<a href="<?php echo $social['facebook']; ?>" target="blank" class="btn_1 full-width outline wishlist social-button" id = "btn-wishlist-social"><i class="icon-expand mr-2"></i>PPT</a>
		<?php } ?>

		<?php if($social['twitter'] != ""){ ?>
			<a href="<?php echo $social['twitter']; ?>" target="blank" class="btn_1 full-width outline wishlist social-button" id = "btn-wishlist-social"><i class="icon-link mr-2"></i>Others</a>
		<?php } ?>

		
	</div>
</div>
