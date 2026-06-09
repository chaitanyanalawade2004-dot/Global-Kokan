     <div class="content-wrapper">
    

   <section class="content mt-4">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit Dates - <?= $tour_detail->tour_name;?></h3>
              </div>

              <form action="<?= base_url();?>admin/tour/edit_tour_dates_code/<?= $tour_id;?>/<?= $data->date_id;?>" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Date</label>
                    <input type="text" name="date"  class="form-control" id="" placeholder="Enter Date" value="<?= $data->date;?>" required>
                  </div>

                   <div class="form-group">
                    <label for="exampleInputEmail1">Tour Name</label>
                    <input type="text" name="name"  class="form-control" id="" placeholder="Enter Name" value="<?= $data->name;?>" required>
                  </div>

                   <div class="form-group">
                    <label for="exampleInputEmail1">Tour cost</label>
                    <input type="text" name="cost"  class="form-control" id="" placeholder="Enter Cost" value="<?= $data->cost;?>" required> 
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