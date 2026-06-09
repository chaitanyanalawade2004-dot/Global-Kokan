     <div class="content-wrapper">
    

   <section class="content mt-4">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header"> 
                <h3 class="card-title">Edit Itinerary - <?= $tour_detail->tour_name;?></h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="<?= base_url();?>admin/tour/edit_tour_itinerary_code/<?= $tour_id;?>/<?= $data->iti_id;?>" method="POST" enctype="multipart/form-data"> 
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Day</label>
                    <input type="text" name="day"  class="form-control" id="" value="<?= $data->day;?>" placeholder="Enter Day">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Day Details</label>
                    <textarea type="text" name="day_details"  class="form-control"  id="day_details" placeholder="Enter name" class="ckeditor"><?= $data->day_details;?> </textarea>
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