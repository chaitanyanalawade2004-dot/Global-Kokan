<!doctype html>
<html lang="en">

<head>
	<title>Kokan Global</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/png" href="<?= base_url();?>assets/images/favicon.png">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/animate.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/boxicons.min.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/font/flaticon.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/style.css">
	<link rel="stylesheet" href="<?= base_url();?>/assets/css/responsive.css">

	<style type="text/css">
		.justify1{
			text-align: justify !important;
		}
	</style>
</head>
<body>

<!-- <div class="preloader">
<div class="loader loader1">
<span style="--i:1;"></span>
<span style="--i:2;"></span>
<span style="--i:3;"></span>
<span style="--i:4;"></span>
<span style="--i:5;"></span>
<span style="--i:6;"></span>
<span style="--i:7;"></span>
<span style="--i:8;"></span>
<span style="--i:9;"></span>
<span style="--i:10;"></span>
<span style="--i:11;"></span>
<span style="--i:12;"></span>
<span style="--i:13;"></span>
<span style="--i:14;"></span>
<span style="--i:15;"></span>
<span style="--i:16;"></span>
<span style="--i:17;"></span>
<span style="--i:18;"></span>
<span style="--i:19;"></span>
<span style="--i:20;"></span>
<div class="rocket"></div>
</div>
</div> -->


<div class="topbar-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 tob-contact-row">
				<div class="topbar-contact">
					<ul>
						<li><i class="bx bxs-phone"></i><a href="tel:+919852525252"></a>8600197441 / 31</li> 
						<li><i class="bx bxs-envelope"></i><a href="mailto:kokanglobalyahoo.com"><span class="__cf_email__" data-cfemail="1871767e77587d60797568747d367b7775"> kokanglobal@yahoo.com</span></a></li>
					    
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 col-6">
				<div class="topbar-social">
					<ul>
						<li>
							<a href="#"><i class="bx bxl-instagram"></i></a>
						</li>
						<li>
							<a href=""><i class="bx bxl-facebook"></i></a>
						</li>
						<li>
							<a href=""><i class="bx bxl-whatsapp"></i></a>
						</li>
					</ul>
				</div>
			</div>
<!-- <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-6">
<div class="custom-select languege-select">
<select>
<option value="0">ENG</option>
<option value="1">BAN</option>
<option value="2">FSP</option>
<option value="3">CHI</option>
</select>
</div>
</div> -->
</div>
</div>
</div>

<header>
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-12 col-sm-12 col-xs-12">
					<div class="navbar-wrap">
						<div class="logo d-flex justify-content-between">
							<a href="<?php echo base_url() ?>" class="navbar-brand"> <img src="<?php echo base_url() ?>assets/images/logo.jpg" style="width:140px; " alt></a>
						</div>
						<div class="navbar-icons">
							<!-- <div class="searchbar-open">
								<i class="flaticon-magnifier"></i>
							</div> -->

							<div class="mobile-menu d-flex ">
								<div class="top-search-bar m-0 d-block d-xl-none">
								</div>
								<a href="javascript:void(0)" class="hamburger d-block d-xl-none">
									<span class="h-top"></span>
									<span class="h-middle"></span>
									<span class="h-bottom"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
					<nav class="main-nav">
						<div class="navber-logo-sm">
							<img src="<?php echo base_url() ?>assets/images/logo.jpg" width="80%" alt class="img-fluid">
						</div>
						<ul>
							<li>
								<a href="<?php echo base_url() ?>">Home</a>
							</li>
							<li><a href="<?php echo base_url() ?>about">About us </a></li>
							<?php 
							foreach ($tour_category as $tc)
							{                     
								?> 
								<li class="has-child-menu">
									<a href="javascript:void(0)"><?= $tc->cat_name;?></a>
									<i class="fl flaticon-plus">+</i>
									<ul class="sub-menu">
										<?php 
										foreach ($tour as $t)
										{  
											if($tc->cat_id==$t->cat_id)
											{

												?>
												<li><a href="<?php echo base_url()?>tour/detail/<?= $t->urltitle;?>" class="sub-item"> <?= $t->tour_name;?>  </a></li>
												<?php 
											}
										} 

										?>
									</ul>
								</li>
								<?php 
							} ?>

							<li><a href="<?php echo base_url() ?>gallary" class="sub-item">Gallery </a></li>

							<li><a href="<?php echo base_url() ?>contact">Contact Us </a></li>
						</ul>


					</nav>
				</div>
			</div>
		</div>
		<form>
			<div class="main-searchbar">
				<div class="searchbar-close">
					<i class="bx bx-x"></i>
				</div>
				<input type="text" placeholder="Search Here......">
				<div class="searchbar-icon">
					<i class="bx bx-search"></i>
				</div>
			</div>
		</form>
	</div>
</header>