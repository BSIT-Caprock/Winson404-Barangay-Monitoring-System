<?php include 'navbar.php'; ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Barangay Business Plate</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Barangay Business Plate</li>
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
            <div class="invoice mb-3" id="printElement" style="border: none;line-height: 16px;">

                  <div class="row p-0 m-0 position-relative" style="max-height: 530px; min-height: 530px;">
                    <div class="col-12"  style="z-index: 1; font-style: italic;">
                       <h5 class="text-center" style=" margin-top: 162px;"><b>SAMPLE NAME</b></h5>
                       <h5 class="text-center" style=" margin-top: 23px;"><b>SAMPLE NAME</b></h5>
                       <h5 class="text-center" style=" margin-top: 23px;"><b>SAMPLE NAME</b></h5>
                       <h5 class="text-center" style=" margin-top: 35px;"><b>SAMPLE NAME</b></h5>
                    </div>

                    <div class="col-12 position-absolute" style="z-index: 1; top: 403px;">
                      <p class="text-sm" style="margin-left: 110px; margin-top: 40px;"><b>2022-120</b></p>
                      <p class="text-sm" style="margin-left: 110px; margin-top: -16px;"><b>2022-120</b></p>
                      <p class="text-sm" style="margin-left: 110px; margin-top: -16px;"><b>2022-120</b></p>
                      <p class="text-sm" style="margin-left: 110px; margin-top: -16px;"><b>2022-120</b></p>
                      <p class="text-sm" style="margin-left: 110px; margin-top: -16px;"><b>2022-120</b></p>

                      <p class="text-xs position-absolute" style="right: 50px; margin-top: -47px;"><b>December 21, 2022</b></p>
                    </div>

                    <img src="../images/Permit2.jpg" alt="" class="position-absolute" width="100%" height="100%">
                    
                  </div>
            </div>


              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <button id="printButton" type="button" class="btn btn-dark float-right mt-3"><i class="fas fa-print"></i> Print</button>
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
 