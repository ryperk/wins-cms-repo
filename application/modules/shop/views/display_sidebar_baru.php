<div id="sidebar-top-header"><a id="logo" href="<?php echo base_url('shop');?>">logo</a></div>
<div id="sidebar-menu-list">
	<?php 	
		switch ($cat) {
			case 'deals':
				//echo 'deals';
				$div1 = 'accordion-body collapse in';
				$div2 = 'accordion-body collapse';
				break;
			case 'products':
				//echo 'directory';
				$div1 = 'accordion-body collapse ';
				$div2 = 'accordion-body collapse in';
				break;
			default:
				$div1 = 'accordion-body collapse';
				$div2 = 'accordion-body collapse';
				break;
		}	
	?>
	<div class="accordion" id="accordion2">	
		<div class="accordion-group">

		    <div class="accordion-heading">
		    	<div class="menu-deal">
		    		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"></a>
		    	</div>
		    </div>

		    <div id="collapseOne" class="<? echo $div1; ?>">
		      <div class="accordion-inner">
		      	<ul class="menu-list">
		      		<li><a href="<?php echo base_url("shop/deals/all");?>"><i class="icon-white icon-list-alt"></i><span class="name">All Category</span></a></li>				
		      		<? foreach ($deals as $list => $val) { ?>
		      			<li><a href="<?php echo $val['link']; ?>"><i class="icon-white <?php echo $val['icon']; ?>"></i><span class="name"><?php echo $val['name']; ?>	</span></a></li>
		      		<? } ?>
		      	</ul>
		      	<ul class="menu-list-embed">
		      		<li><a href=""><span>Previous Deals</span></a></li>
		      		<li><a href=""><span>Upcoming Deals</span></a></li>
		      	</ul>
		      </div>
		    </div>

		</div>

		<div class="accordion-group">

		    <div class="accordion-heading">
		    	<div class="menu-directory">
		     		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#menu2"></a>
		     	</div>	
		    </div>

		    <div id="menu2" class="<? echo $div2; ?>">
		      <div class="accordion-inner">
		      	<ul class="menu-list">
		      		<li><a href="<?php echo base_url("shop/products/all");?>"><i class="icon-white icon-list-alt"></i><span class="name">All Category</span></a></li>
		      		<?php foreach($directory as $list => $val ) { ?>
		      			<li><a href="<?php echo base_url("shop/products/".$val['id']);?>"><i class="icon-white <?php echo $val['icon']; ?>"></i><span class="name"><?php echo $val['name']; ?></span></a></li>
		      		<? } ?>
		      	</ul>
		      </div>
		    </div>

		</div>
		
		<div class="accordion-group">

		    <div class="accordion-heading">
		    	<div class="menu-travel">
		     		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#menu3"></a>
		     	</div>	
		    </div>

		</div>    
		    
	</div>
	<!-- End of Menu  -->
</div>
<div id="sidebar-bottom-footer"></div>