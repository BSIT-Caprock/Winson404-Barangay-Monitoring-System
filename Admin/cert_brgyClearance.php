<?php include 'navbar.php'; ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Barangay Clearance</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Barangay Clearance</li>
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
                          <small>Issued on: __________</small>
                        </div>
                      </div>

                      <h4 class="text-center mt-3 mb-3">BARANGAY CLEARANCE</h4>
                      <div class="row mt-4">
                          <div class="col-sm-3">
                              <p class="name"><strong>FIRST NAME</strong></p>
                          </div>
                          <div class="col-sm-9">
                              <p class="name"><strong><span style="font-style: italic;">LOREM</span></strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>MIDDLE NAME</strong></p>
                          </div>
                          <div class="col-sm-9">
                              <p class="name"><strong><span style="font-style: italic;">LOREM</span></strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>LAST NAME</strong></p>
                          </div>
                          <div class="col-sm-9">
                              <p class="name"><strong><span style="font-style: italic;">LOREM</span></strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>SUFFIX</strong></p>
                          </div>
                          <div class="col-sm-9">
                              <p class="name"><strong><span style="font-style: italic;">LOREM</span></strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>ADDRESS</strong></p>
                          </div>
                          <div class="col-sm-9">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><strong>BIRTHDAY</strong></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><strong>AGE</strong></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><strong>CITIZENSHIP</strong></p>
                          </div>
                          <div class="col-sm-2">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>CIVIL STATUS</strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><strong>RESIDENCE STATUS</strong></p>
                          </div>
                          <div class="col-sm-3">
                              <p class="name"><span style="font-style: italic;">LORfsdfsEM</span></p>
                          </div>
                      </div>

                      <p class="text-sm m-0" style="text-indent: 30px; text-align: justify;">This certifies that the above-named individual whose signature, photo, and right thumbprint appear hereunder ia a bona fide resident of this barangay and as far as this office is concerned as of this date, he/she is a good moral character and good standing in the country.</p>
                      <p class="text-sm m-0" style="text-indent: 30px; text-align: justify;">Furthermore, this certifies that he/she has no derogatory nor criminal record nor pending charge for any violation or infraction of rules or regulations, ordinances and laws per periods kept and filed in this office: ("Katarungang Pambarangay", Book III, Chapter 7, Sec. 399-422; RA 7160).</p>
                      <p class="text-sm m-0" style="text-indent: 30px; text-align: justify;">This certification is being issued upon the verbal request of the above-mentioned individual for the purpose of: </p>
                      <h6 class="text-center">FINANCIAL ASSISTANCE</h6>
                  </div>

                </div>

                <!-- CERTIFICATE FOOTER -->
                <?php include 'cert-Footer.php'; ?>
                <!-- CERTIFICATE FOOTER -->


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
 

<script src="print.js"> </script>
<?php include 'footer.php'; ?>
 