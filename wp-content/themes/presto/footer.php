<!-- presto Callout Section -->
<?php $wl_theme_options = weblizar_get_options(); ?>
<!-- Footer Widget Secton -->
<div  style="background-color:#3F6965;">	
	<div class="container">
		<div class="row">
			<div class="col-md-6 google-maps">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.8762563205028!2d-76.39028368514884!3d3.6157619473689104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3a01bd62ef1bd5%3A0x535db8634970cb!2sRozo%2C+Palmira%2C+Valle+del+Cauca!5e0!3m2!1ses!2sco!4v1524371443643" width="600" height="450" frameborder="0" style="border:0"></iframe>
			</div>
			

			<div class="col-md-6">
				<h1 style="color:white">
					Contáctenos
				</h1>
				<h2 style="color:white">
					Teléfono: 3182702148

				</h2>
				<h2 style="color:white">
					Email : corporozo@hotmail.com
				</h2>
			</div>
			
		</div>		
	</div>	
</div>
<div class="enigma_footer_area">
		<div class="container">
			<div class="col-md-12">
			<p class="enigma_footer_copyright_info wl_rtl" >
			<?php if($wl_theme_options['footer_customizations']) { echo esc_attr($wl_theme_options['footer_customizations']); }
			if($wl_theme_options['developed_by_text']) { echo "|" .esc_attr($wl_theme_options['developed_by_text']); } ?>
			<a target="_blank" rel="nofollow" href="<?php if($wl_theme_options['developed_by_link']) { echo esc_url($wl_theme_options['developed_by_link']); } ?>"><?php if($wl_theme_options['developed_by_weblizar_text']) { echo esc_attr($wl_theme_options['developed_by_weblizar_text']); } ?></a></p>
			<?php if($wl_theme_options['footer_section_social_media_enbled'] == '1') { ?>
			<div class="enigma_footer_social_div">
				<ul class="social">
					<?php if($wl_theme_options['fb_link']!='') { ?>
					   <li class="facebook" data-toggle="tooltip" data-placement="top" title="Facebook"><a  href="<?php echo esc_url($wl_theme_options['fb_link']); ?>"><i class="fa fa-facebook"></i></a></li>
					<?php } if($wl_theme_options['twitter_link']!='') { ?>
					<li class="twitter" data-toggle="tooltip" data-placement="top" title="Twitter"><a href="<?php echo esc_url($wl_theme_options['twitter_link']) ; ?>"><i class="fa fa-twitter"></i></a></li>				
					<?php } if($wl_theme_options['linkedin_link']!='') { ?>
					<li class="linkedin" data-toggle="tooltip" data-placement="top" title="Linkedin"><a href="<?php echo esc_url($wl_theme_options['linkedin_link']) ; ?>"><i class="fa fa-linkedin"></i></a></li>
					<?php } if($wl_theme_options['youtube_link']!='') { ?>
					<li class="youtube" data-toggle="tooltip" data-placement="top" title="Youtube"><a href="<?php echo esc_url($wl_theme_options['youtube_link']) ; ?>"><i class="fa fa-youtube"></i></a></li>
	                <?php } if($wl_theme_options['gplus']!='') { ?>
					<li class="twitter" data-toggle="tooltip" data-placement="top" title="gplus"><a href="<?php echo esc_url($wl_theme_options['gplus']) ; ?>"><i class="fa fa-google-plus"></i></a></li>
	                <?php } if($wl_theme_options['instagram']!='') { ?>
					<li class="facebook" data-toggle="tooltip" data-placement="top" title="instagram"><a href="<?php echo esc_url($wl_theme_options['instagram']) ; ?>"><i class="fa fa-instagram"></i></a></li>
	                <?php } if($wl_theme_options['vk_link']!='') { ?>
					<li class="twitter" data-toggle="tooltip" data-placement="top" title="vk"><a href="<?php echo esc_url($wl_theme_options['vk_link']) ; ?>"><i class="fa fa-vk"></i></a></li>
	                <?php } if($wl_theme_options['qq_link']!='') { ?>
					<li class="youtube" data-toggle="tooltip" data-placement="top" title="qq"><a href="<?php echo esc_url($wl_theme_options['qq_link']) ; ?>"><i class="fa fa-qq"></i></a></li>
	                <?php } if($wl_theme_options['whatsapp_link']!='') { ?>
					<li class="linkedin" data-toggle="tooltip" data-placement="top" title="whatsapp"><a href="tel:<?php echo esc_attr($wl_theme_options['whatsapp_link']) ; ?>""><i class="fa fa-whatsapp"></i></a></li>
	                <?php } ?>
				</ul>
			</div>
			<?php } ?>			
			</div>		
		</div>		
</div>	
<!-- /Footer Widget Secton -->
</div>
<?php if(get_theme_mod('scroll_up','0')=='1') { ?>
<a href="#" title="<?php echo esc_attr_e("Go Top","presto");?>" class="enigma_scrollup" style="display: inline;"><i class="fa fa-chevron-up"></i></a>
<?php } ?>

<?php if($wl_theme_options['custom_css']) ?>
<style type="text/css">
<?php { echo esc_attr($wl_theme_options['custom_css']); } ?>
</style>
<?php get_template_part('google', 'font'); ?>
<?php wp_footer(); ?>
</body>
</html>