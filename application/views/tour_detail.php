
<style>
	.p-overview ul{
		list-style-type:disc !important;
		margin-left:20px ;
	}

</style>


<div class="breadcrumb-area" style="min-height:150px !important;" >
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12" style="">
				<div class="breadcrumb-wrap" style="">
					<h2 class="mt-5"><?= $tour_detail->tour_name;?></h2>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="package-details-wrapper pt-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="package-details">
					<div class="package-thumb">
							<img src="<?= base_url();?>/<?= $tour_detail->filename;?>" alt>
						</div>
						<div class="package-header">
							<div class="package-title">
								<h4><b><?= $tour_detail->tour_name;?> </b></h4>
								<h5 class="mt-2 mb-1"><?= $tour_detail->short_description;?></h5>
							</div>
						</div>

						<div class="package-tab">
							<ul class="nav nav-pills" id="pills-tab" role="tablist">
								<li class="nav-item" role="presentation">
									<a href="#info" class="btn btn-outline-danger m-1 bnt11">Information</a>
								</li>

								<li class="nav-item" role="presentation">
									<a href="#itinerary" class="btn btn-outline-danger  m-1 bnt11">Itinerary</a>
								</li>

								<li class="nav-item" role="presentation">
									<a href="#photos" class="btn btn-outline-danger  m-1">Photos</a>
								</li>

								<li class="nav-item" role="presentation">
									<a href="#dates" class="btn btn-outline-danger  m-1">Dates</a>
								</li>

								<li class="nav-item" role="presentation">
									<a href="#review" class="btn btn-outline-danger  m-1">Review</a>
								</li>

							</ul>
							<div class="tab-content p-tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="info" style="scroll-margin-top: 190px !important; ">
									<div class="row">
									     
										<div class="col-lg-12 " >
										  
											<div class="tab-content-1" >
												<div class="p-overview">
													<h5>Overview</h5>
													<p style="text-align:justify;">
														<?= $tour_detail->tour_details;?>

													</p>
												</div>
											</div>
											<div class="tab-content-2 mt-5" id="itinerary"  style="scroll-margin-top: 200px !important; ">

												<div class="col-lg-12">

													<div class="p-overview" >
														<h5>Itinerary</h5>
													</div>


													<div class="faq-wrap mt-3">
														<div class="accordion-box">
															<div class="accordion" id="accordionExample">

																<?php 
														$count =1;
														foreach ($tour_itinerary as $ti)
														{ 
															if($ti->tour_id == $tour_id)
															{

																?> 
																
																<div class="accordion-item">
																	<h2 class="accordion-header" id="headingOne">
																		<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#alwaysOpenOne" data-bs-target="#collapse<?= $count;?>" aria-expanded="true" aria-controls="collapse<?= $count;?>">
																			<?= $ti->day;?> <i class="bx bx-chevron-down"></i>
																		</button>
																	</h2>
																	<div id="collapse<?= $count;?>" class="accordion-collapse collapse show" aria-labelledby="heading<?= $count;?>" data-bs-parent="#accordionExample" data-bs-target="#alwaysOpenOne" style="">
																		<div class="accordion-body">
																			<?= $ti->day_details;?>
																		</div>
																	</div>
																</div>
																<?php 
																$count++;
															}
														}
														?>  
																
															</div>
														</div>

													</div>

											
												</div>

												<a href="<?= base_url();?>assets/document/Traveller_Checklist.pdf" class="btn btn-danger mt-2 btn-sm " target="_blank" >Download Check List <i class="bx bx-cloud-download" style="color:white;font-size:15px"></i> </a>

											</div>



											<div class="tab-contant-3 mt-5 mb-3" id="dates" style="scroll-margin-top: 200px !important; ">
												<div class="col-lg-12 col-md-12">

													<div class="p-overview mb-3">
														<h4><b> Tour Dates </b> </h4>
													</div>

													<div class="package-grid-one">
														<table class="table table-bordered mb-5">
															<thead>
																<tr class="bg-info">
																	<th >Sr.No</th>
																	<th>Date</th>
																	<th>Tour Name</th>    
																	<th> Cost </th> 
																</tr>
															</thead>


															<?php 
															$count1 =1;
															foreach ($tour_dates as $row)
															{ 
																if($row->tour_id == $tour_id)
																{


																	?> 

																	<tbody>
																		<tr>
																			<td> <?= $count1;?></td>
																			<td><?= $row->date;?></td>
																			<td><?= $row->name;?></td>
																			<td><?= $row->cost;?></td>

																		</tr>
																	</tbody>
																	<?php 
																	$count1++;
																}

															}
															?>  
														</table>

													</div>
												</div>
											</div>
											<div class="tab-contant-3 mt-5 mb-3" id="group" style="scroll-margin-top: 200px !important; ">
												<div class="col-lg-12 col-md-12">

													<div class="p-overview mb-3">
														<h4><b> Group / Fixed Departure Packages </b> </h4>
													</div>

													<div class="package-grid-one">
														<!-- <div class="container"> -->


															<table class="table table-bordered">
																<thead>
																	<tr  class="bg-info">
																		<th >Sr.No</th>
																		<th>Title</th>
																		<th>Per person</th>      
																	</tr>
																</thead>


																<?php 
																$count2 =1;
																foreach ($group_packages as $gf)
																{ 
																	if($gf->tour_id == $tour_id)
																	{

																		?> 

																		<tbody>
																			<tr>
																				<td> <?= $count2;?></td>
																				<td><?= $gf->title;?></td>
																				<td><?= $gf->per_person;?></td>


																			</tr>
																		</tbody>
																		<?php 
																		$count2++; 
																	}

																}
																?>  
															</table>


														</div>
													</div>
												</div>

												<div class="tab-contant-3 mt-5 mb-3" id="customized" style="scroll-margin-top: 200px !important; ">
													<div class="col-lg-12 col-md-12">

														<div class="p-overview mb-3">
															<h4><b> Customized Or FIT Packages </b> </h4>
														</div>

														<div class="package-grid-one">

															<table class="table table-bordered">
																<thead>
																	<tr  class="bg-info">
																		<th >Sr.No</th>
																		<th>Per Head</th>
																		<th>Delux</th>    
																		<th>AC Delux</th>   
																	</tr>
																</thead>


																<?php 
																$count3 =1;
																foreach ($customized_packages as $cp)
																{ 
																	if($cp->tour_id == $tour_id)
																	{
																		?> 

																		<tbody>
																			<tr>
																				<td> <?= $count3;?></td>
																				<td><?= $cp->per_head;?></td>
																				<td><?= $cp->delux;?></td>
																				<td><?= $cp->ac_delux;?></td>
																			</tr>
																		</tbody>
																		<?php 
																		$count3++; 
																	}


																}
																?>  
															</table>

														</div>
													</div>
												</div>


												<div class="tab-contant-3" id="price1" style="scroll-margin-top: 200px !important; ">
													<div class="col-lg-12 col-md-12">

														<div class="p-overview mb-3">
															<h4><b> <font color="green">Price Includes</font> </b> </h4>

															<?= $tour_detail->price_includes;?>

														</div>
													</div>
												</div>


												<div class="tab-contant-3" id="price2">
													<div class="col-lg-12 col-md-12">
														<div class="p-overview mb-3">
															<h4><b><font color="red">Price Excludes</font></b> </h4>
															<?= $tour_detail->price_excludes;?>
														</div>
													</div>
												</div>

												<div class="tab-contant-3 mb-4" id="price3">
													<div class="col-lg-12 col-md-12">
														<div class="p-overview mb-3">
															<h4><b><font color="blue">Note </b></font> </h4>
															<?= $tour_detail->note;?>
														</div>
													</div>
												</div>

												<div class="tab-contant-3" id="photos" style="scroll-margin-top: 200px !important; ">
													<div class="col-lg-12 col-md-12">

														<div class="p-overview mb-3">
															<h4><b> Photos </b> </h4>
														</div>

														<div class="package-grid-one">
															<div class="row">

																<?php 
																$count4 =1;
																foreach ($tour_photos as $tp)
																{ 

																	if($tp->tour_id == $tour_id)
																	{


																		?> 
																		<div class="col-lg-6">
																			<a class="main-gallary" href="<?= base_url();?>/<?= $tp->filename;?>">
																				<img src="<?= base_url();?>/<?= $tp->filename;?>" class="img-thumbnail" style="height: 90%;" width="100%" alt>
																			</a>
																		</div>
																		<?php 
																		$count4++; 
																	}

																}
																?>  
															</div>
														</div>
													</div>
												</div>


												<div class="tab-contant-3 mb-5" id="review" style="scroll-margin-top: 200px !important; ">
													<div class="p-review">
														<div class="p-overview mb-3">
															<h4><b> Reviews </b> </h4> 
														</div>
														<div class="container">
															<?php $count6 =1;
															foreach ($review as $r)
																{ ?>
																	<div class="row p-2 rounded shadow mb-3">
																		<div class="col-lg-4 text-center">

																			<div class="p-review-info">
																				<div class="p-reviewr-img">
																					<img src="<?= base_url();?><?=  $r->filename;?>" style="width:80px" alt="">
																				</div>
																				<div class="p-reviewer-info">
																					<strong><?=  $r->name;?></strong>
																					<p><?=  $r->position;?></strong>

																					</div>
																				</div>
																			</div>
																			<div class="col-lg-8">
																				<div class="p-review-texts">

																					<p><?=  $r->message;?> </p>
																					<div style="color:#b34a27;">
																						<i class="bx bxs-star"></i>
																						<i class="bx bxs-star"></i>
																						<i class="bx bxs-star"></i>
																						<i class="bx bxs-star"></i>
																						<i class="bx bxs-star"></i>
																					</div>
																				</div>
																			</div>

																		</div>


																		<?php 
																	}
																	?>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="package-d-sidebar">
									<div class="row">
										<div class="col-lg-12 col-md-6">
										      <?php 
                                if( $this->session->flashdata('message') )
                                {   
                                    echo '<div class="alert alert-success">';
                                    echo $this->session->flashdata('message');
                                    echo '</div>';
                                }
                                ?>
                                
											<div class="p-sidebar-form">
												<form method="POST" action="<?= base_url();?>tour/submitBooking">
													<h5 class="package-d-head">Book Tour</h5>
													<input type="hidden" name="urltitle" value="<?= $urltitle;?>">
													<div class="row">

														<div class="col-lg-12">
															<select class="form-control" name="tour_id">
																<option>Select Tour</option>
															<?php 
															foreach ($tour as $t)
															{  
																
																?>
																	<option value="<?= $t->tour_id;?>"><?= $t->tour_name;?></option>
																	
																	<?php 
																
															} 

															?>

															</select>
														</div>

														<div class="col-lg-12">
															<input type="text" name="name" placeholder="Your Full Name" required>
														</div>
														<div class="col-lg-12">
															<input type="email" name="email" placeholder="Your Email" required>
														</div>
														<div class="col-lg-12">
															<input type="tel" name="mobileno" placeholder="Mobile No" required>
														</div>

														<div class="col-lg-12">
															<input type="number" name="no_of_person" placeholder="Number of Person" required>
														</div>

														<div class="col-lg-12">
															<input type="date" name="date" placeholder="Date" required>
														</div>





														<div class="col-lg-12">
															<textarea cols="30" rows="7" name="message" placeholder="Message" required></textarea>
														</div>
														<div class="col-lg-12">
															<input type="submit" value="Submit">
														</div>
													</div>
												</form>
											</div>
										</div>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
				<script>
				
$(".bnt11").click(function() {
 $('html, body').animate({
    scrollTop: $(".scrolltothis").offset().top + 50;
 }, 500);
});

</script>

