<title>BMS | Dashboard</title>
<?php include 'navbar.php'; ?>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row d-none">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content ">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row d-flex justify-content-center">

          <div class="col-lg-12 col-12">
              <div class="row d-flex justify-content-center">

                <div class="col-lg-3 col-6">
                  <div class="small-box bg-gradient-success">
                    <div class="inner">
                      <?php
                        $users = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='Admin'");
                        $row_users = mysqli_num_rows($users);
                      ?>
                      <h3><?php echo 'SAMPLE';//echo $row_users; ?></h3>

                      <p>Population</p>
                    </div>
                    <div class="icon">
                      <i class="fa-solid fa-house"></i>
                    </div>
                    <a href="admin.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-6">
                  <div class="small-box bg-gradient-info">
                    <div class="inner">
                      <?php
                        $users = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='User'");
                        $row_users = mysqli_num_rows($users);
                      ?>
                      <h3><?php echo 'SAMPLE';//echo $row_users; ?></h3>

                      <p>Age</p>
                    </div>
                    <div class="icon">
                      <i class="fa-solid fa-user"></i>
                    </div>
                    <a href="users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <div class="col-lg-3 col-6">
                  <div class="small-box bg-gradient-warning">
                    <div class="inner">
                      <?php
                        $users = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='User'");
                        $row_users = mysqli_num_rows($users);
                      ?>
                      <h3><?php echo 'SAMPLE';//echo $row_users; ?></h3>

                      <p>Sector</p>
                    </div>
                    <div class="icon">
                      <i class="fa-solid fa-file"></i>
                    </div>
                    <a href="users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-6">
                  <div class="small-box bg-gradient-danger">
                    <div class="inner">
                      <?php
                        $users = mysqli_query($conn, "SELECT user_Id from users WHERE user_type='User'");
                        $row_users = mysqli_num_rows($users);
                      ?>
                      <h3><?php echo 'SAMPLE';//echo $row_users; ?></h3>

                      <p>Civil Status</p>
                    </div>
                    <div class="icon">
                      <i class="fa-solid fa-file"></i>
                    </div>
                    <a href="users.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

               <h1 class="card p-3 mt-5">Display in Graph presentation</h1>
                


              </div>
          </div>


        </div>
      </div>
    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include 'footer.php'; ?>
