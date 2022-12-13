<?php 

    include 'navbar.php'; 
    date_default_timezone_set('Asia/Manila');
    $dateToday = date("F d, Y");

    if(isset($_GET['residenceId']) && isset($_GET['purpose']) && isset($_GET['date'])) {
    $residenceId = $_GET['residenceId'];
    $purpose     = $_GET['purpose'];
    $date        = $_GET['date'];

    $fetch = mysqli_query($conn, "SELECT * FROM residence WHERE residenceId='$residenceId'");
    $row = mysqli_fetch_array($fetch);
?>

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Certificate of Indigency</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Certificate of Indigency</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            <!-- Main content -->
            <div class="invoice p-3 mb-3" id="printElement" style="border: none;">

              <!-- CERTIFICATE HEADER -->
              <?php include 'certificate-Header.php'; ?>
              <!-- END CERTIFICATE HEADER -->

                <style>
                    div.row div.col-4 p.lead {
                      font-size: 15px;
                    }
                    div.row div.col-4 p.name {
                      font-size: 10px;
                      margin-top: -10px;
                    }
                     div.row div.col-4 p.role {
                      margin-top: -25px;
                      font-size: 10px;
                    }
                    div.row div.col-8 .row p.name, div.row div.col-8 p.names {
                      font-size: 10px;
                    }
                    div.row div.col-8 .row p.name {
                      margin-top: -21px;
                    }
                </style>

                <div class="row p-0">

                <!-- CERTIFICATE SIDEBAR -->
                <?php include 'certificate-Sidebar.php'; ?>
                <!-- END CERTIFICATE SIDEBAR -->

                  <div class="col-8">
                    <!-- BACKGROUND LOGO -->
                      <img src="../images/logo.png" alt="" width="80%" class="position-absolute" style="opacity: .15; top: 100px; left: 50px;">

                      <div class="row">
                        <div class="col-sm-7 invoice-col text-center"></div>
                        <div class="col-sm-5 invoice-col text-center">
                          <small>Control No:__________</small><br>
                          <small>Issued on: <span style="text-decoration: underline;"><?php echo $dateToday; ?></span></small>
                        </div>
                      </div>

                      <h4 class="text-center mt-4 mb-3">
                        CERTIFICATION <br>
                        <span class="text-xs">(First Time Jobseekers Assistance Act - RA 11261)</span>
                      </h4>

                      <p class="text-sm" style="text-indent: 30px; text-align: justify; margin-bottom: -20px;">This is to certify that Mr./Ms. <b><?php echo ' '.$row['firstname'].' '.$row['middlename'].' '.$row['lastname'].' '.$row['suffix'].' '; ?></b> <?php echo ' '.$row['house_no'].' '.$row['street_name'].' '.$row['purok'].' '.$row['zone'].' '.$row['barangay'].' '.$row['municipality'].' '.$row['province'].' '.$row['region'].' '; ?> for 19 years, is a qualified availed of RA 11261 or the The First Time Jobseekers Assistance Act of 2019.</p>
                      <br>
                      <p class="text-sm" style="text-indent: 30px; text-align: justify; margin-bottom: -20px;">I further certify that the holder/bearer was informed of his/her rights, including the duties and responisibilities accorded by RA 11261 through the Oath of Undertaking he/she has signed and executed in the presence of Barangay Official/s.</p>
                      <br>
                      <p class="text-sm" style="text-indent: 30px; text-align: justify; margin-bottom: -20px;">Signed and issued this <b><?php echo date("F d, Y"); ?></b> in the City of Pasay.</p>
                      <br>
                      <p class="text-sm" style="text-indent: 30px; text-align: justify;">This certification is only valid one(1) year from the assistance.</p>

                      <div class="row" >
                        <div class="col-6 d-flex justify-content-center mt-5 pt-5">
                          <div class="">
                              <p>Witnessed by:</p>
                              <p>Melita L. Llonor</p>
                              <p class="text-muted text-center" style="margin-top: -20px;border-top: 1px solid grey;">Barangay Secretary</p>
                          </div>
                        </div>
                        <div class="col-6">
                            <div class="text-center mb-5">
                              <br>
                              <p style="border-top: 1px solid grey;"><strong>HON. MICHAEL F. DAWAL</strong></p>
                              <p class="text-sm" style="margin-top: -25px;">Punong Barangay</p>
                              <p class="text-sm" style="margin-top: -25px;">Pag Nag Droga Ka, Lagot Ka</p>
                            </div>
                            <p class="text-sm float-right">Encoded by: </p><br>
                            <p class="text-sm text-right mt-3" style="border-bottom: 1px solid grey;width: 50%;position: absolute;right: 0;"></p><br>
                            <p class="text-sm float-right" style="margin-top: -10px;">R. ENRIQUEZ</p>
                        </div>
                      </div>
                  </div>
                </div>

                <div class="row mt-4">
                  <div class="col-4 d-flex justify-content-center">
                      <img src="../images/pasay.png" alt="" width="100" class="position-absolute" >
                  </div>
                  <div class="col-4">
                      <p class="name">THIS FORM NEED NOT BE NOTARIZED</p>
                      <p class="name text-muted" style="margin-top: -20px;">RA 11261 Form 1</p>
                  </div>
                  <div class="col-12 text-center mt-3">
                    <div class="dropdown-divider"></div>
                    <small class="text-danger text-center" style="font-style: italic;font-size: 10px;"><strong>A mark erasure or alteration of any entry invalidates this clearance/Not valid without official dry seal/Expires in ninety(90) days from the date of issue.</strong></small>
                  </div>
                </div>


              </div>


              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <button id="printButton"type="button" class="btn btn-primary" style="margin-right: 5px;"><i class="fas fa-print"></i> Print</button>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </section>
   
  </div>
 
  <?phP } else { include '404.php'; } ?>

<script src="print.js"> </script>
<?php include 'footer.php'; ?>
 