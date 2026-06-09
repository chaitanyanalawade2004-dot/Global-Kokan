  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Add Tour</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Add Tour</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

   <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Tour</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/tour/add_tour_code" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                    
                 <div class="form-group">
                    <label for="exampleInputEmail1">Sr. No.</label>
                    <input type="number" name="srno"  class="form-control" id="srno" placeholder="Enter Sr. No. " required>
                  </div>    
                    
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tour Name</label>
                    <input type="text" name="tour_name"  class="form-control" id="tour_name" placeholder="Enter name" required>
                  </div>
                  
                   <div class="form-group">
                    <label for="exampleInputEmail1">Short Description</label>
                    <input type="text" name="short_description"  class="form-control" id="short_description" placeholder="Enter Short Description" required>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Select Tour Category</label>
                    <select class="form-control" name="cat_id" required>
                  <?php
                  foreach ($category as $row)
                  { ?> 
                          <option value="<?php echo $row->cat_id;?>"> <?php echo $row->cat_name;?> </option>
                  <?php 
                  }
                ?>  
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tour Photo</label>
                    <input type="file" name="filename"  class="form-control" id="filename" placeholder="Enter name" required>
                  </div>
                
                 <div class="form-group">
                    <label for="exampleInputEmail1">Tour Details</label>
                    <textarea type="text" name="tour_details"  class="form-control" id="tour_details" required placeholder="Enter name" class="ckeditor"></textarea>
                  </div>


                  <div class="form-group">
                    <label for="exampleInputEmail1">Price Includes</label>
                    <textarea type="text" name="price_includes"  class="form-control" id="price_includes" required placeholder="" class="ckeditor"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Price Excludes</label>
                    <textarea type="text" name="price_excludes"  class="form-control" id="price_excludes" required placeholder="" class="ckeditor"></textarea>
                  </div>


                  <div class="form-group">
                    <label for="exampleInputEmail1">Note</label>
                    <textarea type="text" name="note"  class="form-control" id="note" required placeholder="" class="ckeditor"></textarea>
                  </div>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>

  <script>
    CKEDITOR.replace( 'tour_details' );
    CKEDITOR.replace( 'price_includes' );
    CKEDITOR.replace( 'price_excludes' );
    CKEDITOR.replace( 'note' );
  </script>