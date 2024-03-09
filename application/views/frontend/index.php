<!DOCTYPE html>
<html lang="en">

	<head>

	   
	    <?php include 'site_meta.php';?>

	    
	    <?php include 'includes_top.php';?>

	</head>

	<body>
		<div id="page">

			
			<?php
			if ($page_name == 'home' || $page_name == '404')
				include 'header_home.php';
			else if ($page_name == 'listings' || $page_name == 'listing/create')
				include 'header_listing.php';
			else if ($page_name == 'directory_listing')
				include 'header_home.php';
			else
				include 'header.php';
			?>

			
			<main>
				<?php include $page_name . '.php'; ?>
			</main>

			
			<?php
				if(!($page_name == 'listings' && $this->session->userdata('listings_view') == 'list_view')):
					include 'footer.php';
				endif;
			?>
		</div>

		
		

	
		<div id="toTop"></div>

		
		<?php include 'includes_bottom.php';?>
		
	
		<?php include 'modal.php'; ?>
		<?php
			if(get_frontend_settings('cookie_status') == 1):
				include 'eu-cookie.php';
			endif;
		?>
		<?php
			if(get_addon_details('fb_messenger') != 0){
				if(isset($listing_details['id'])):
					if(check_facebook_page_data($listing_details['id']) && $page_name == 'directory_listing'){
						include 'fb_messenger.php';
					}
				endif;
			}
		?>
	</body>
</html>
