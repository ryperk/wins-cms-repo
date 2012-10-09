<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><?php echo $title; ?></title>
<meta name="description" content="">
<meta name="author" content="">
<!-- Styles -->
<link rel="stylesheet" type="text/css" href="<?php echo $grid_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $main_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $custom_css; ?>">
<body>
<div id="wrapper" class="container_12">
	
	<!-- Top Header -->
	<div id="top" class="grid_12">
		<div class="block-nonborder block-inner">
			<div class="grid_10">Welcome to WINS MALL</div>
			<ul class="ul-horizontal">
				<li><a href="#">Signup</a></li>
				<li> | </li>
				<li><a href="#">Login</a></li>
			</ul>
		</div>
	</div>
	<!-- /div top header  -->
	<!-- no content, only for separator 
	<div class="block-separator block-clear"></div> -->

	<!-- left column  -->	
	<div id="left-colm" class="grid_3">
		
		<!-- logo  -->
		<div id="logo" class="block-nontitle">
			<a href="<?php echo $base_url; ?>">
	      		<img src="<?php echo base_url('assets/images/wins-logo.png'); ?>">
	     	</a>
		</div><!-- /div logo  -->
		
		<!-- menu -->
		<div class="block-separator"></div>
		<!--<div class="block-header-title"><span>Directory</span></div>-->
		<div id="menu" class="block-nonborder block-inner-menu">
			<div class="accordion" id="accordion2">	

			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Deals</a>
			    </div>
			    <div id="collapseOne" class="accordion-body collapse in">
			      <div class="accordion-inner">
			      	<ul class="ul-vertical" id="nav-deals">
			      		<li><a href="#"><span class="icon-ok vertical"></span><span class="name">Todays Deals</span></a></li>
			      		<li><a href="#"><span class="icon-backward vertical"></span><span class="name">Previous Deals</span></a></li>
			      		<li><a href="#"><span class="icon-star vertical"></span><span class="name">Merchants Deals</span></a></li>
			      	</ul>
			      </div>
			    </div>
			  </div>

			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Directory</a>
			    </div>
			    <div id="collapseTwo" class="accordion-body collapse">
			      <div class="accordion-inner">
			      	<ul class="ul-vertical" id="nav">
						<?php foreach($menu as $list => $val ) { ?>
							<li><a href="#"><span class="<?php echo $val['icon']; ?> vertical"></span><span class="name"><?php echo $val['name']; ?></span></a>
								<ul>
									<?php 
										foreach ($val['content'] as $key => $value) { 
											if(count($val['content']) < 0) echo "";
											else echo "<li><a href=\"#\">".$value."</a></li>";
									 	} 
									?>
								</ul>
							</li>
						<? } ?>
					</ul>
			      </div>
			    </div>
			  </div>
			</div>
			<!--
			<ul class="ul-vertical" id="nav">
				<?php foreach($menu as $list => $val ) { ?>
					<li><a href="#"><span class="<?php echo $val['icon']; ?> vertical"></span><span class="name"><?php echo $val['name']; ?></span></a>
						<ul>
							<?php 
								foreach ($val['content'] as $key => $value) { 
									if(count($val['content']) < 0) echo "";
									else echo "<li><a href=\"\">".$value."</a></li>";
							 	} 
							?>
						</ul>
					</li>
				<? } ?>
			</ul>
			-->
		</div><!-- /div menu  -->

		<!-- newsletter  -->
		<div class="block-separator"></div>
		<div class="block-header-title">
			<span>Newsletter</span>
		</div>
		<div id="newsletter" class="block block-inner-form">
			<form>
				<div class="input-append">
				  <input class="grid_2 alpha omega" id="appendedInputButton" size="16" type="text"><button class="btn btn-info" type="button"><i class="icon-envelope"></i></button>
				</div>
			</form>
		</div><!-- /div newsletter  -->

		<div class="block-separator"></div>
		<div class="block-header-title">
			<span>Popular</span>
		</div>
		<div id="block" class="block block-inner">
			<span>Most Popular</span>
		</div>

	</div>
	<!-- /div left column  -->

	<!-- Right Column -->
	<div id="content" class="grid_9">
		
		<div class="block-nontitle block-inner">
			<span>Header</span>
		</div>

		<div class="block-separator"></div>
		<div class="grid_9 alpha">
			<div id="content-header" class="block-header-title"><span>Promos</span></div>
			<div id="promo" class="block">
				<div id="crslPromo" class="carousel slide">
				  <!-- Carousel items -->
				  <div class="carousel-inner">
				    <div class="item active"><img src="<?php echo base_url('assets/images/slider-example.jpg'); ?>"/></div>
				    <div class="item"><img src="<?php echo base_url('assets/images/slider-example.jpg'); ?>"/></div>
				    <div class="item"><img src="<?php echo base_url('assets/images/slider-example.jpg'); ?>"/></div>
				  </div>
				  <!-- Carousel nav -->
 
				  <a class="carousel-control left icons icon_thin_arrow_left" href="#crslPromo" data-slide="prev"></a>
				  <a class="carousel-control right icons icon_thin_right_arrow" href="#crslPromo" data-slide="next"></a>
				</div>
			</div>
		</div>

		<div class="block-separator block-clear"></div>

		<div class="grid_9 alpha omega">
			<!-- Main Promo -->
			<div class="grid_3 alpha">
				<div id="content-header" class="block-header-title"><span>Electronics</span></div>
				<div class="block block-inner">
					<div id="crslPromo1" class="carousel slide">
					  <!-- Carousel items -->
					  <div class="carousel-inner">
					    <div class="item active">
					    	<img src="http://ak.buy.com/PI/0/125/202973377.jpg"/>
						    <div class="carousel-caption">
			                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			                    </div>
		                </div>
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/218895790.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
						</div>		                    
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/221499332.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
		                </div>    
					  </div>
					  <!-- Carousel nav -->

					  <a class="carousel-control left icons icon_thin_arrow_left" href="#crslPromo1" data-slide="prev"></a>
					  <a class="carousel-control right icons icon_thin_right_arrow" href="#crslPromo1" data-slide="next"></a>
					</div>	
				</div>	
			</div>

			<div class="grid_3">
				<div id="content-header" class="block-header-title"><span>Clothings</span></div>
				<div class="block block-inner">
					<div id="crslPromo2" class="carousel slide">
					  <!-- Carousel items -->
					  <div class="carousel-inner">
					    <div class="item active">
					    	<img src="http://ak.buy.com/PI/0/125/202973377.jpg"/>
						    <div class="carousel-caption">
			                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			                    </div>
		                </div>
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/218895790.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
						</div>		                    
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/221499332.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
		                </div>    
					  </div>
					  <!-- Carousel nav -->

					  <a class="carousel-control left icons icon_thin_arrow_left" href="#crslPromo2" data-slide="prev"></a>
					  <a class="carousel-control right icons icon_thin_right_arrow" href="#crslPromo2	" data-slide="next"></a>
					</div>		
				</div>	
			</div>

			<div class="grid_3 omega">
				<div id="content-header" class="block-header-title"><span>Books</span></div>
				<div class="block block-inner">
					<div id="crslPromo3" class="carousel slide">
					  <!-- Carousel items -->
					  <!-- Carousel items -->
					  <div class="carousel-inner">
					    <div class="item active">
					    	<img src="http://ak.buy.com/PI/0/125/202973377.jpg"/>
						    <div class="carousel-caption">
			                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			                    </div>
		                </div>
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/218895790.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
						</div>		                    
					    <div class="item">
					    	<img src="http://ak.buy.com/PI/0/125/221499332.jpg"/>
					    	<div class="carousel-caption">
		                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
		                    </div>
		                </div>    
					  </div>
					  <!-- Carousel nav -->

					  <a class="carousel-control left icons icon_thin_arrow_left" href="#crslPromo3" data-slide="prev"></a>
					  <a class="carousel-control right icons icon_thin_right_arrow" href="#crslPromo3" data-slide="next"></a>
					</div>		
				</div>	
			</div>
			
		</div>

	</div>

</div>
<!-- Javascript -->
<script type="text/javascript" src="<?php echo $main_js; ?>"></script>
<script type="text/javascript" src="<?php echo $bootstrap_js; ?>"></script> 
<script type="text/javascript" src="<?php echo base_url('assets/js/custom.js'); ?>"></script>
<script type="text/javascript">
	$(function(){
	   $('.carousel').carousel();
	});

	S(function(){
		$('a').tooltip();
	});
</script>
</body>
<html>