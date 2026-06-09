     <div class="content-wrapper">
    

   <section class="content mt-4">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Photos - <?= $tour_detail->tour_name;?></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/tour/add_tour_photos_code/<?= $tour_id;?>" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Photos Name</label>
                    <input type="text" name="photo_name"  class="form-control" id="photo_name" placeholder="Enter name">
                  </div>
                 
                  <div class="form-group">
                    <label for="exampleInputEmail1">Filename</label>
                    <input type="file" name="filename"  class="form-control" id="filename">
                  </div>
               
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>