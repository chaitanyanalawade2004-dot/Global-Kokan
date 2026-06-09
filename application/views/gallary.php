


<div class="breadcrumb-area" style="min-height:150px !important">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12" style="">
				<div class="breadcrumb-wrap" style="">
					<h2 class="mt-5">Gallery</h2>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="blog-area pt-80 mb-5">
	<div class="container">
		
		<div class="gallary-wrapper mt-12">
			<div class="container">
				<div class="row">


					<div class="package-grid-one">
						<div class="row">

							<?php 
							$count =1;
							foreach ($gallery as $g)
							{ 

								?>
								<div class="col-lg-4">
									<a class="main-gallary" href="<?= base_url();?>/<?= $g->filename;?>">
										<img src="<?= base_url();?>/<?= $g->filename;?>" class="img-thumbnail" style="height: 90%;" width="100%" alt>
									</a>
								</div>
								<?php 

								$count++; 

								
							}
							?>  
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

