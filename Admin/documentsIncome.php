<title>BMS | Documents Income</title>
<?php include 'navbar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h1>Documents Income</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Documents Income</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- /.col -->
          <div class="col-md-12">
            <div class="card">
              <div class="card-header p-2">
                <a href="export.php?export=officials" class="btn btn-sm bg-success float-right mr-2"><i class="fa-solid fa-file-excel"></i> Export</a>
               <!--  <div class="card-tools mr-1 mt-3">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div> -->
              </div>
              <div class="card-body p-3">

                 <!-- <table id="example1" class="table table-bordered table-hover text-sm"> -->
                 <table id="exampleUser" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr>
                    <th>DOCUMENT TYPE</th>
                    <th>PAYMENT AMOUNT</th>
                    <th>ADDED BY</th>
                    <th>REQUESTED BY</th>
                    <th>DATE ADDED</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                    <tr>
                      <?php 
                        $sql = mysqli_query($conn, "SELECT * FROM income JOIN users ON income.added_by=users.user_Id");
                        if(mysqli_num_rows($sql) > 0 ) {
                        while ($row = mysqli_fetch_array($sql)) {
                      ?>
                        <td><?php echo $row['paymentFor']; ?></td>
                        <td>₱ <?php echo number_format($row['paymentAmount'], 2, '.', ','); ?></td>
                        <td><?php echo ' '.$row['firstname'].' '.$row['middlename'].' '.$row['lastname'].' '.$row['suffix'].' '; ?></td>
                        <td><?php echo $row['paid_by']; ?></td>
                        <td><?php echo date("F d, Y", strtotime($row['date_added'])); ?></td>
                    </tr>
                    <?php include 'officials_update_delete.php'; } } else { ?>
                        <td colspan="100%" class="text-center">No record found</td>
                      </tr>
                    <?php }?>
                  </tbody>
                </table>

              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<?php include 'officials_add.php'; ?>
<?php include 'footer.php'; ?>
