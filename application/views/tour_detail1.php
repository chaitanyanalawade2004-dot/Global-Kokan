

<div class="breadcrumb-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="breadcrumb-wrap">
					<h2><?= $tour_detail->tour_name;?></h2>
					<ul class="breadcrumb-links">
						<li>
							<a href="<?= base_url();?>">Home</a>
							<i class="bx bx-chevron-right"></i>
						</li>
						<li><?= $tour_detail->tour_name;?></li>
					</ul>
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
							<h3><?= $tour_detail->tour_name;?></h3>
							
						</div>
					</div>
					
					<div class="package-tab">
						<ul class="nav nav-pills" id="pills-tab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true"><i class="flaticon-info"></i>
								INFORMATION</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false"><i class="flaticon-clipboard"></i>
								ITINERARY</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false"> <i class="flaticon-gallery"></i>
								PHOTOS</button>
							</li>
						</ul>
						<div class="tab-content p-tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
								<div class="row">
									<div class="col-lg-12">
										<div class="tab-content-1">
											<div class="p-overview">
												<h5>Overview</h5>
												<p style="text-align:justify;">
													<?= $tour_detail->tour_details;?>

												</p>
											</div>

											
											<div class="p-review mt-5">
												<h4 class="mb-4"><b> Customer Reviews </b> </h4>
												<ul>
													<li class="p-review-card">
														<div class="p-review-info">
															<div class="p-reviewr-img">
																<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
															</div>
															<div class="p-reviewer-info">
																<strong>Bertram Bil</strong>
																<p>2 April, 2021 10.00PM</p>
																<ul class="review-star">
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																</ul>
															</div>
														</div>
														<div class="p-review-texts">
															<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
															sed lacinia ipsum. Suspendisse </p>
														</div>
														
													</li>
													<li class="p-review-card">
														<div class="p-review-info">
															<div class="p-reviewr-img">
																<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
															</div>
															<div class="p-reviewer-info">
																<strong>Bertram Bil</strong>
																<p>2 April, 2021 10.00PM</p>
																<ul class="review-star">
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																</ul>
															</div>
														</div>
														<div class="p-review-texts">
															<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
															sed lacinia ipsum. Suspendisse </p>
														</div>
														
													</li>
													<li class="p-review-card">
														<div class="p-review-info">
															<div class="p-reviewr-img">
																<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
															</div>
															<div class="p-reviewer-info">
																<strong>Bertram Bil</strong>
																<p>2 April, 2021 10.00PM</p>
																<ul class="review-star">
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																	<li> <i class="bx bxs-star"></i> </li>
																</ul>
															</div>
														</div>
														<div class="p-review-texts">
															<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
															sed lacinia ipsum. Suspendisse </p>
														</div>
														
													</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
								<div class="tab-content-2">
									<div class="row">
										<div class="col-lg-12">

											<div class="p-overview">
												<h5>Itinerary</h5>
											</div>

											<ul class="p-timeline">

												<?php 
												$count =1;
												foreach ($tour_itinerary as $ti)
													{ 
														if($ti->tour_id == $tour_id)
														{
														?> 

														<li>
															<div class="timeline-index">
																<div class="index-circle">
																	<h5><?= $count;?></h5>
																</div>
															</div>
															<div class="timeline-content">
																<h5><?= $ti->day;?></h5>
																<p><?= $ti->day_details;?></p>
															</div>
														</li>

														<?php 
													}

														$count++; 
													}
													?>  

												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">

									<div class="tab-contant-3">
										<div class="row">
											<div class="col-lg-12 col-md-12">
												
												<div class="p-overview mb-3">
													<h4><b> Photos </b> </h4>
												</div>

												<div class="package-grid-one">
													<div class="row">

														<?php 
														$count =1;
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
															}
																$count++; 
															}
															?>  
														</div>
													</div>
												</div>


													<div class="p-rationg">
													<h5>Rating</h5>
													<div class="rating-card">
														<div class="r-card-avarag">
															<h2>4.9</h2>
															<h5>Excellent</h5>
														</div>
														<div class="r-card-info">
															<ul>
																<li>
																	<strong>Accommodation</strong>
																	<ul class="r-rating">
																		<li>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																		</li>
																	</ul>
																</li>
																<li>
																	<strong>Transport</strong>
																	<ul class="r-rating">
																		<li>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bx-star"></i>
																			<i class="bx bx-star"></i>
																		</li>
																	</ul>
																</li>
																<li>
																	<strong>Comfort</strong>
																	<ul class="r-rating">
																		<li>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bx-star"></i>
																		</li>
																	</ul>
																</li>
																<li>
																	<strong>Hospitality</strong>
																	<ul class="r-rating">
																		<li>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bx-star"></i>
																		</li>
																	</ul>
																</li>
																<li>
																	<strong>Food</strong>
																	<ul class="r-rating">
																		<li>
																			<i class="bx bxs-star"></i>
																			<i class="bx bxs-star"></i>
																			<i class="bx bx-star"></i>
																			<i class="bx bx-star"></i>
																			<i class="bx bx-star"></i>
																		</li>
																	</ul>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="p-review">
													<ul>
														<li class="p-review-card">
															<div class="p-review-info">
																<div class="p-reviewr-img">
																	<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
																</div>
																<div class="p-reviewer-info">
																	<strong>Bertram Bil</strong>
																	<p>2 April, 2021 10.00PM</p>
																	<ul class="review-star">
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																	</ul>
																</div>
															</div>
															<div class="p-review-texts">
																<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																	lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
																sed lacinia ipsum. Suspendisse </p>
															</div>
															<a href="#" class="r-reply-btn"><i class="bx bx-reply"></i> Reply</a>
														</li>
														<li class="p-review-card">
															<div class="p-review-info">
																<div class="p-reviewr-img">
																	<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
																</div>
																<div class="p-reviewer-info">
																	<strong>Bertram Bil</strong>
																	<p>2 April, 2021 10.00PM</p>
																	<ul class="review-star">
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																	</ul>
																</div>
															</div>
															<div class="p-review-texts">
																<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																	lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
																sed lacinia ipsum. Suspendisse </p>
															</div>
															<a href="#" class="r-reply-btn"><i class="bx bx-reply"></i> Reply</a>
														</li>
														<li class="p-review-card">
															<div class="p-review-info">
																<div class="p-reviewr-img">
																	<img src="<?= base_url();?>assets/images/package/pr-1.png" alt>
																</div>
																<div class="p-reviewer-info">
																	<strong>Bertram Bil</strong>
																	<p>2 April, 2021 10.00PM</p>
																	<ul class="review-star">
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																		<li> <i class="bx bxs-star"></i> </li>
																	</ul>
																</div>
															</div>
															<div class="p-review-texts">
																<p>Morbi dictum pulvinar velit, id mollis lorem faucibus acUt sed
																	lacinia ipsum. Suspendisse massa augue lorem faucibus acUt
																sed lacinia ipsum. Suspendisse </p>
															</div>
															<a href="#" class="r-reply-btn"><i class="bx bx-reply"></i> Reply</a>
														</li>
													</ul>
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
									<div class="p-sidebar-form">
										<form>
											<h5 class="package-d-head">Book This Package</h5>
											<div class="row">
												<div class="col-lg-12">
													<input type="text" placeholder="Your Full Name">
												</div>
												<div class="col-lg-12">
													<input type="email" placeholder="Your Email">
												</div>
												<div class="col-lg-12">
													<input type="tel" placeholder="Phone">
												</div>
												<div class="col-lg-12">
													<select class="form-select" aria-label="Default select example">
														<option selected>Tickets Type</option>
														<option value="1">Travel With Bus</option>
														<option value="2">Travel With Plane</option>
													</select>
												</div>
												<div class="col-lg-6">
													<select class="form-select" aria-label="Default select example">
														<option selected>Adult</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
													</select>
												</div>
												<div class="col-lg-6">
													<select class="form-select" aria-label="Default select example">
														<option selected>Child</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
													</select>
												</div>
												<div class="col-lg-12">
													<div class="calendar-input">
														<input type="text" name="check-in" class="input-field check-in" placeholder="dd-mm-yy">
														<i class="flaticon-calendar"></i>
													</div>
												</div>
												<div class="col-lg-12">
													<textarea cols="30" rows="7" placeholder="Message"></textarea>
												</div>
												<div class="col-lg-12">
													<input type="submit" value="Book Now">
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

