<div id="content-top-header">
	<div id="access" class="grid_2">
	<ul>
		<li><a href="">Login</a></li>
		<li>|</li>
		<li><a href="">Sign Up</a></li>
	</ul>
	</div>	
	<div id="blockview" class="prefix_8">
		<a href="" class="view_block"></a>
		<a href="" class="view_list"></a>
	</div>
</div>

<div id="content-header-section">
	<div id="content-header-icon">
		<img src="<?echo $icon; ?>"></img>
		<div id="deal-feeds">Deals Feeds running...</div>
	</div>
</div>
<!--
<div id="deal-category">
	<span>Menu Category</span>
</div>
-->
<div id="content-body">
	<div id="slideshow" class="">
		<div id="myCarousel" class="carousel slide">
		  <!-- Carousel items -->
		  <div class="carousel-inner">
		    <div class="active item"><img src="<?php echo base_url('assets/images_baru/maroon.jpg'); ?>"></div>
		    <div class="item"><img src="<?php echo base_url('assets/images_baru/soulnation.jpg'); ?>"></div>
		  </div>
		  <!-- Carousel nav -->
		  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
		</div>
	</div>
	<div id="deals" class="grid_9 alpha omega">
		<?php foreach ($listed as $row => $val) { ?>
		<div id="list-items"> 
			<div class="items-img"><img src="<?php echo base_url('assets/images_baru/banner2.jpg'); ?>"></div>
			<div class="items-desc">
				<div class="items-title"><strong><?php echo $val['title']; ?></strong></div>
				<div class="items-price">
					<div class="split-left">
						<div class="blocks">Price</div>
						<div class="blocks"><strong><?php echo $val['price']; ?></strong></div>	
					</div>
					<div class="split-right">
						<div class="blocks">Save</div>
						<div class="blocks"><strong><?php echo $val['save']; ?></strong></div>	
					</div>	
					<div class="clear"></div>
				</div>	
			
				<div class="items-detail">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
				<div class="items-addon">
					<div class="split-left"><span class="icon-tag ico"></span><span name="count" value="<?php echo $val['maxbuy']; ?>" style="font-weight: bold"></span> Sale</div>
					<div class="split-right"><span class="icon-time"></span><span name="clock" value="<?php echo $val['maxtime']; ?>"></span></div>
				</div>
				<div class="clear"></div>	
				<div class="view_button"><a href="#" class="btn btn-large btn-info">View</a></div>	
			</div>
		</div>
		<div class="separator"></div>
		<?php } ?>
	</div>
</div>

