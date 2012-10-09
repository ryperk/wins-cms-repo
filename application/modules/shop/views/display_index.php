<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><?php echo $title; ?></title>
<meta name="keywords" content="<?php echo $keywords; ?>">
<meta name="description" content="<?php echo $description; ?>">
<meta name="robots" content="<?php echo $robots; ?>">
<meta name="author" content="<?php echo $author; ?>">
<!-- Styles -->
<link rel="stylesheet" type="text/css" href="<?php echo $grid_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $main_css; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo $custom_css; ?>">
<body>
<div id="wrapper" class="container_12">
	
	<!-- Top Header 
	<div id="top" class="grid_12">
		<div class="block-nonborder block-inner">
			<div class="grid_10">Welcome to WINS MALL</div>
			<ul class="ul-horizontal">
				<li><a href="#">Signup</a></li>
				<li> | </li>
				<li><a href="#">Login</a></li>
			</ul>
		</div>
	</div>-->
	<div class="block-separator block-clear"></div>
	<!-- /div top header  -->

	<!-- left column  -->	
	<div id="left-colm" class="grid_3">
		<?php $this->load->view($sidebar);?>
	</div>
	<!-- /div left column  -->

	<!-- Right Column -->
	<div id="content" class="grid_9">
		<?php $this->load->view($content);?>
	</div>
	<!-- /div right column  -->

</div>
<!-- /div wrapper  -->

<!-- Javascript -->
<script type="text/javascript" src="<?php echo $main_js; ?>"></script>
<script type="text/javascript" src="<?php echo $bootstrap_js; ?>"></script> 
<script type="text/javascript" src="<?php echo base_url('assets/js/custom.js'); ?>"></script>
<script type="text/javascript">
	$(function(){
	   $('.carousel').carousel();
	});

	$(function(){
		$('a').tooltip();
	});
</script>
</body>
<html>