<!-- logo  -->
<div id="logo" class="block-nontitle">
	<a href="<?php echo base_url();?>">
  		<img src="<?php echo base_url('assets/images/wins-logo.png'); ?>">
 	</a>
</div><!-- /div logo  -->

<!-- menu -->
<div class="block-separator"></div>

<div id="menu" class="block-nonborder block-inner-menu">
	<div class="accordion" id="accordion2">	
		<?php switch ($cat) {
			case 'deals':
				//echo 'deals';
				$div1 = 'accordion-body collapse in';
				$div2 = 'accordion-body collapse';
				break;
			case 'directory':
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
		  <div class="accordion-group">

		    <div class="accordion-heading">
		      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
		      	<span class="icon-white icon-tag"></span>
		      	<span class="name">Deals</span>
		      </a>
		    </div>

		    <div id="collapseOne" class="<?echo $div1; ?>">
		      <div class="accordion-inner">
		      	<ul class="ul-vertical" id="nav">
		      		<? foreach ($deals as $list => $val) { ?>
		      			<li><a href="<?php echo $val['link']; ?>"><span class="icon-white <?php echo $val['icon']; ?> vertical"></span><span class="name"><?php echo $val['name']; ?></span></a></li>
		      		<? } ?>
		      	</ul>
		      </div>
		    </div>

		  </div>

	  <div class="accordion-group">
	    <div class="accordion-heading">
	      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
	      	<span class="icon-white icon-th-large"></span>
	      	<span class="name">Directory</span>
	      </a>
	    </div>
	    <div id="collapseTwo" class="<?echo $div2; ?>">
	      <div class="accordion-inner">
	      	<ul class="ul-vertical" id="nav">
				<?php foreach($directory as $list => $val ) { ?>
					<li><a href="<?php echo base_url("shop/directory/$list");?>"><span class="icon-white <?php echo $val['icon']; ?> vertical"></span><span class="name"><?php echo $val['name']; ?></span></a>
						<ul>
							<?php 
								foreach ($val['content'] as $key => $value) { 
									if(count($val['content']) < 0) echo "";
									else echo "<li><a href=".base_url("shop/directory/$value").">".$value."</a></li>";
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

