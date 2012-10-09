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

<script type="text/javascript">
var subsubmenu = function (){
  this.navLi=$('#nav > li').children('ul').css('display', 'none').end();
  this.init();
};

subsubmenu.prototype={
    init : function(){
        this.setMenu();
    },
    //Memberikan efek slide
    setMenu: function(){
        this.navLi.hover(function(){
        //mouseover
            $(this).find('>ul').stop(true,true).slideDown(250);
        }, function(){
        //mouseout
            $(this).find('>ul').stop(true,true).fadeOut(200);
        });
    }
}
new subsubmenu();
</script>

<body>
<div id="wrapper" class="container_12">
	<div class="grid_12">
		<div class="block-nonborder block-inner">
			<div class="grid_10">Welcome to WINS MALL</div>
			<ul class="ul-horizontal">
				<li><a href="#">Signup</a></li>
				<li> | </li>
				<li><a href="#">Login</a></li>
			</ul>
		</div>
	</div>
	<div class="block-separator block-clear"></div>
	<!-- left column  -->	
	<div id="left-colm" class="grid_3">
		<!-- logo  -->
		<div id="logo" class="block-nontitle">
			<a href="<?php echo $base_url; ?>">
	      		<img src="<?php echo base_url('assets/images/wins-logo.png'); ?>">
	     	</a>
		</div><!-- /div logo  -->
		
		<!-- menu  -->
		<div class="block-separator"></div>
		<div class="block-header-title"><span>Directory</span></div>
		<div id="menu" class="block block-inner-menu">
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

	<div id="content" class="grid_9">
		
		<div class="block-nontitle block-inner">
			<span>Header</span>
		</div>

		<div class="block-separator"></div>
		<div class="grid_9 alpha">
			<div id="content-header" class="block-header-title"><span>Promo</span></div>
			<div id="slider" class="block block-inner">
				<span>Promo Slider</span>
			</div>
		</div>

		<div class="block-separator block-clear"></div>
		<div class="grid_9 alpha omega">
		
			<div class="grid_3 alpha">
				<div id="content-header" class="block-header-title"><span>Electronics</span></div>
				<div class="block block-inner">
					<span>Electronics Content</span>	
				</div>	
			</div>

			<div class="grid_3">
				<div id="content-header" class="block-header-title"><span>Clothings</span></div>
				<div class="block block-inner">
					<span>Clothing Content</span>	
				</div>	
			</div>

			<div class="grid_3 omega">
				<div id="content-header" class="block-header-title"><span>Books</span></div>
				<div class="block block-inner">
					<span>Books Contents</span>	
				</div>	
			</div>
			
		</div>

	</div>

</div>
<!-- Javascript -->
<script type="text/javascript" src="<?php echo $main_js; ?>"></script>	
<script type="text/javascript" src="<?php echo $bootstrap_js; ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/bootstrap/js/main.js');  ?>"></script>	
<script type="text/javascript">
$('a').tooltip();
$('.carousel').carousel()
</script>	
</body>
<html>