<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?= base_url (); ?>assets/admin/plugins/summernote/summernote-bs4.min.css">
   
        <script src="//cdn.ckeditor.com/4.5.9/standard/ckeditor.js"></script>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

 
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
     
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
  
<li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/login/logout" class="nav-link active">
             
            <button type="button" class=" float-right text-sm btn btn-outline-danger ">Log Out</button>
            
            </a>
        </li>
      <!-- Messages Dropdown Menu -->

          </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="<?= base_url() ?>assets/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/admin/index" class="nav-link active"> 
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
        </li>
        <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/tour_category" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
               Tour Category
             </p>
            </a>
        </li>
        <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/tour" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
               Tour
             </p>
            </a>
        </li>
        <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/gallery" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
               Gallery
             </p>
            </a>
        </li>
        <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/review" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
               Review
             </p>
            </a>
        </li>

         <li class="nav-item menu-open">
            <a href="<?= base_url() ?>admin/booking_report" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
             <p>
               Reports
             </p>
            </a>
        </li>
         
       
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>