  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <!-- <h1 class="m-0">Dashboard</h1> -->
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Group Fixed Packages - <?= $tour_detail->tour_name;?></h3>
              </div>
              <!-- /.card-header -->
              
              <div class="card-body">

                <a href="<?= base_url() ?>admin/tour/add_group_fixed_packages/<?= $tour_id;?>" class="btn btn-primary float-right" style="margin-bottom:20px;">Add Group Fixed Packages</a>

                        <!-- <?php 
                                  if( $this->session->flashdata('message') )
                                  {   
                                      echo '<div class="alert alert-success">';
                                      echo $this->session->flashdata('message');
                                      echo '</div>';
                                  }
                                ?> -->
                                
                                <table class="table table-bordered">
                                  <thead>
                                    <tr>
                                      <th >Sr.No</th>
                                      <th>Title</th>
                                      <th>Per person</th>                
                                      <th >Action</th>
                                    </tr>
                                  </thead>


                                  <?php 
                                  $count =1;
                                  foreach ($result as $row)
                                    { 
                                      if($row->tour_id == $tour_id)
                                       {

                                      ?> 

                                      <tbody>
                                        <tr>
                                          <td> <?= $count;?></td>
                                          <td><?= $row->title;?></td>
                                          <td><?= $row->per_person;?></td>
                                        
                                          <td>

                                            <a href="<?= base_url(); ?>admin/tour/edit_group_fixed_packages/<?= $tour_id;?>/<?= $row->group_id;?>"  class="btn btn-primary"><i class="fa fa-edit"></i></a>

                                            <a href="<?= base_url(); ?>admin/tour/delete_group_fixed_packages/<?= $tour_id;?>/<?= $row->group_id;?>" onclick="return confirm('do you want to delete?')" class="btn btn-danger "><i class="fa fa-trash"></i></a>

                                            

                                          </td>
                                        </tr>
                                      </tbody>
                                      <?php 
                                    }
                                      $count++; 
                                    }
                                    ?>  
                                  </table>
                                  
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </section>

                    </div>
                    <!-- /.row (main row) -->
                  </div><!-- /.container-fluid -->
                </section>
                <!-- /.content -->
              </div>
              <!-- /.content-wrapper -->
