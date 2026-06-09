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
                <h3 class="card-title">Edit Gallery</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/gallery/edit_gallery_code/<?= $data->gallery_id;?>" method="POST" enctype="multipart/form-data">
              
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1"> Name</label>
                    <input type="text" name="title"  class="form-control" id="title" placeholder="Enter name" value="<?= $data->title;?>" required>
                  </div>
                 
                  <div class="form-group">
                    <label for="exampleInputEmail1">Gallery</label>
                    <input type="file" name="filename"  class="form-control" id="filename"  placeholder="Enter name"> 
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