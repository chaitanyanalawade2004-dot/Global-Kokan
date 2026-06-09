<div class="content-wrapper">
  <section class="content">
    <div class="container-fluid">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Customer Booking Report</h3>
        </div>
        <div class="card-body">

          <form method="get" action="">
            <div class="row">
              <div class="col-md-2">
                <label>Category</label>
                <select name="cat_id" class="form-control">
                  <option value="">-- Select Category --</option>
                  <?php foreach ($categories as $cat): ?>
                    <option value="<?= $cat->cat_id ?>" <?= @$_GET['cat_id'] == $cat->cat_id ? 'selected' : '' ?>><?= $cat->cat_name ?></option>
                  <?php endforeach; ?>
                </select>
              </div>

              <div class="col-md-3">
                <label>Tour</label>
                <select name="tour_id" class="form-control">
                  <option value="">-- Select Tour --</option>
                  <?php foreach ($tours as $tour): ?>
                    <option value="<?= $tour->tour_id ?>" <?= @$_GET['tour_id'] == $tour->tour_id ? 'selected' : '' ?>><?= $tour->tour_name ?></option>
                  <?php endforeach; ?>
                </select>
              </div>

              <div class="col-md-2">
              <label>No. of Person</label>
              <input type="number" name="no_of_person" class="form-control" value="<?= @$_GET['no_of_person'] ?>">
            </div>


              <div class="col-md-2">
                <label>From Date</label>
                <input type="date" name="from_date" class="form-control" value="<?= @$_GET['from_date'] ?>">
              </div>

              <div class="col-md-2">
                <label>To Date</label>
                <input type="date" name="to_date" class="form-control" value="<?= @$_GET['to_date'] ?>">
              </div>

              <div class="col-md-12 mt-3">
                <button type="submit" class="btn btn-primary">Filter</button>
                <a href="<?= base_url('admin/booking_report') ?>" class="btn btn-secondary">Reset</a>
              </div>
            </div>
          </form>

          <hr>

          <table class="table table-bordered mt-3">
            <thead>
              <tr>
                <th>Sr.No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>No. of Person</th>
                <th>Date</th>
                <th>Tour</th>
                <th>Category</th>
                <th>Message</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; foreach ($result as $row): ?>
                <tr>
                  <td><?= $i++ ?></td>
                  <td><?= $row->name ?></td>
                  <td><?= $row->email ?></td>
                  <td><?= $row->mobileno ?></td>
                  <td><?= $row->no_of_person ?></td>
                  <td><?= $row->date ?></td>
                  <td><?= $row->tour_name ?></td>
                  <td><?= $row->cat_name ?></td>
                  <td><?= $row->message ?></td>
                </tr>
              <?php endforeach; ?>
              <?php if (empty($result)): ?>
                <tr><td colspan="9" class="text-center">No records found.</td></tr>
              <?php endif; ?>
            </tbody>
          </table>

        </div>
      </div>
    </div>
  </section>
</div>
