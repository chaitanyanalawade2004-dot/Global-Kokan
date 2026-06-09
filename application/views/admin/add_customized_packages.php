     <div class="content-wrapper">
    

   <section class="content mt-4">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Customized Or FIT Packages - <?= $tour_detail->tour_name;?></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/tour/add_customized_packages_code/<?= $tour_id;?>" method="POST" enctype="multipart/form-data">

                <div class="card-body"> 
                  <div class="form-group">
                    <label for="exampleInputEmail1">Per Head</label>
                    <input type="text" name="per_head"  class="form-control" id="" placeholder="" required>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Delux</label>
                    <input type="text" name="delux"  class="form-control" id="" placeholder="" required>
                  </div>

                   <div class="form-group">
                    <label for="exampleInputEmail1">AC Delux</label>
                    <input type="text" name="ac_delux"  class="form-control" id="" placeholder="" required>
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

        <script>
  CKEDITOR.replace('day_details' );
</script>