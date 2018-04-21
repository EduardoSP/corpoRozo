<!-- service section -->
<?php $wl_theme_options = weblizar_get_options(); ?>
<div class="enigma_service">
<?php if($wl_theme_options['home_service_heading'] !='') { ?>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="enigma_heading_title">
				<h3><?php echo esc_attr($wl_theme_options['home_service_heading']); ?></h3>		
			</div>
		</div>
	</div>
</div>	
<?php } ?>
<div class="container">
		<div class="row isotope" id="isotope-service-container">		
			<?php for($i=1; $i<4; $i++ ) { ?>
			<div class=" col-md-4 service">
				<div class="enigma_service_area appear-animation bounceIn appear-animation-visible">
					<?php if($wl_theme_options['service_'.$i.'_icons'] !='') { ?><div class="enigma_service_iocn pull-left"><i class="<?php echo esc_attr($wl_theme_options['service_'.$i.'_icons']); ?>"></i></div><?php } ?> 
					<div class="enigma_service_detail media-body">
						<?php if($wl_theme_options['service_'.$i.'_title'] !='') { ?><h3 class="head_<?php echo $i ?>"><a href="<?php echo esc_url($wl_theme_options['service_'.$i.'_link']); ?>"><?php echo esc_attr($wl_theme_options['service_'.$i.'_title']); ?></a></h3><?php } ?>
						<?php if($wl_theme_options['service_'.$i.'_text'] !='') { ?><p><?php echo get_theme_mod('service_'.$i.'_text' , $wl_theme_options['service_'.$i.'_text']); ?><?php } ?></p>
					</div>
				</div>
			</div>
			<?php } ?>
			<div class=" col-md-5 col-md-offset-4 service">
<div class="enigma_service_area appear-animation bounceIn appear-animation-visible">
<div class="enigma_service_iocn pull-left"><i class="fa-lock"></i></div> 
<div class="enigma_service_detail media-body">
<h3 class="head_3"><a href="#">Seguridad</a></h3> <p>La Corporación trabaja de la mano con la Secretaria de Gobierno Municipal, Policía Nacional y Ejercito para brindar mayor seguridad en el sector, nuestro gran aporte a la seguridad lo hacemos a través del programa Dare con el que buscamos disminuir los índices de violencia y delincuencia a través de la prevención del uso de las  drogas psicoactivas.</p>
</div>
</div>
</div>
		</div>
	
	</div>
</div>	 
<!-- /Service section -->