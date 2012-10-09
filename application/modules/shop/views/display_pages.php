<div class="block-nontitle block-inner">
	<h3><?php echo $cat.' '.$param; ?></h3>
</div>

<div class="block-separator"></div>

<div class="items-wrap">
	<?php for($i=0;$i<20;$i++){ ?>
		<div class="items">
			<div class="items-inner">
				<div class="inner-left">
					<div class="img_wrap">
						
					</div>
				</div>
				<div class="inner-right">
					<div class="items-name">
						<h4>Item Name</h4>
					</div>
					<div class="items-info">
						<div class="items-price">
							<span class="items-info-title">Price</span>
							<span class="items-info-value">Rp. 500.000</span>
						</div>
						<div class="items-save">
							<span class="items-info-title">Save</span>
							<span class="items-info-value">50%</span>
						</div>
					</div>
					<div class="items-desc">Item Desc</div>
					<div class="items-view"><a href="#" class="btn btn-info">View</a></div>
					<div class="items-timer">
						<div class="count-sale">	
								<div class="sale-icon">
									<span class="icon-tag"></span>	
								</div>	
								<div>
								<span><strong>100</strong></span>
								<span>Sell</span>
								</div>		
						</div>
						<div class="count-time">
								<div class="sale-icon">
									<span class="icon-time"></span>	
								</div>	
								<div>
									<span><strong>1 Days</strong></span>
									<span>Left</span>
								</div>	
						</div>
						<!-- Javascript Timer -->		
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
</div>