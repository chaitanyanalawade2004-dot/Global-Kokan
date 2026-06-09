     <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
       
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
                <h3 class="card-title">Edit Tour</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/tour/edit_tour_code/<?= $data->tour_id;?>" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sr. No.</label>
                    <input type="number" name="srno"  class="form-control" id="srno" placeholder="Enter Sr. No. "  value="<?= $data->tour_name;?>" required>
                  </div>  
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tour Name</label>
                    <input type="text" name="tour_name"  class="form-control" id="tour_name" placeholder="Enter name" value="<?= $data->tour_name;?>" required>
                  </div>
                  
                   <div class="form-group">
                    <label for="exampleInputEmail1">Short Description</label>
                    <input type="text" name="short_description"  class="form-control" id="short_description" placeholder="Enter Short Description" value="<?= $data->short_description;?>" required>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Select Tour Category</label>
                    <select class="form-control" name="cat_id" required>
                  <?php
                  foreach ($category as $row)
                  { ?> 
                          <option value="<?php echo $row->cat_id;?>" <?= $row->cat_id == $data->cat_id ? "selected" : "";?> > <?php echo $row->cat_name;?> </option>
                  <?php 
                  }
                ?>  
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tour Photo</label>
                    <input type="file" name="filename"  class="form-control" id="filename"  placeholder="Enter name"> 
                  </div>
                 <div class="form-group">
                    <label for="exampleInputEmail1">Tour Details</label>
                    <textarea type="text" name="tour_details"  class="form-control" id="tour_details" required  placeholder="Enter name"> <?= $data->tour_details;?> </textarea>
                  </div>
                  

                   <div class="form-group">
                    <label for="exampleInputEmail1">Price Includes</label>
                    <textarea type="text" name="price_includes"  class="form-control" id="price_includes" required placeholder="" class="ckeditor"> <?= $data->price_includes;?>  </textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Price Excludes</label>
                    <textarea type="text" name="price_excludes"  class="form-control" id="price_excludes" required placeholder="" class="ckeditor"> <?= $data->price_excludes;?>  </textarea>
                  </div>


                  <div class="form-group">
                    <label for="exampleInputEmail1">Note</label>
                    <textarea type="text" name="note"  class="form-control" id="note" required placeholder="" class="ckeditor"> <?= $data->note;?>  </textarea>
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