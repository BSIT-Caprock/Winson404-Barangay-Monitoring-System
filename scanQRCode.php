<title>BMS | Login</title>
<?php include 'navbarResidentOnly.php'; ?>

  <div class="content-wrapper bg-info">
    
    <div class="content">
      <div class="container">
        <div class="row d-flex justify-content-center">

            <div class="col-lg-10 col-md-10 col-12 card m-5">
              <div class="row"  style="min-height: 460px;max-height: 460px;">
                <div class="col-lg-8 col-md-12 col-sm-12 col-12 position-relative justify-content-center d-flex bg-navy p-0 m-0">
                    <?php 
                      $fetchpic = mysqli_query($conn, "SELECT * FROM customization WHERE status='Active'");
                      if(mysqli_num_rows($fetchpic) > 0) {
                        while ($pic = mysqli_fetch_array($fetchpic)) {
                          echo '<img src="images-customization/'.$pic['picture'].'" alt="" class="img-fluid">';
                        }
                      } else {
                        echo '<img src="images/logo.png" alt="" class="img-fluid">';
                      }
                    ?>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12 col-12 bg-light">
                    <div class="card-header text-center justify-content-center d-flex p-0 mt-3">
                      <div class="col-12 p-1">
                        <a  class="h3" ><b>INPUT QR CODE</b></a>
                        <p>Please Place the QR Code Located at the back of your ID in front of the camera.</p>
                      </div>
                    </div>
                     <form action="processes.php" method="POST" class="form-horizontal">
                        <input type="hidden" name="residentQR" id="residentQR" class="form-control" autofocus>
                     </form>
                  <div class="card-body p-1 m-0">
                    <div class="position-relative mt-3 bg-dark"  style="max-height: 200px; min-height: 200px;" id="containerScanner">
                       <video id="preview" width="100%" height="100%" class="position-absolute rounded"></video>
                    </div>
                  </div>
                  <div class="card-footer position-relative d-flex justify-content-center bg-light">
                    <!-- <p class="mb-1"><a href="forgot-password.php">I forgot my password</a></p> -->
                    <button type="button" class="btn bg-gradient-primary position-absolute mt-3" id="clickMe" onclick="refreshPage()"><i class="fa-solid fa-camera"></i> RESET CAMERA</button>
                  </div>
                </div>
              </div>
            </div>
        </div>

        </div>
      </div>
    </div>

<?php include 'footer.php'; ?>

<script type="text/javascript" src="plugins/instascan.min.js"></script>
<script>

  $(window).on('load', function() {
      document.getElementById("containerScanner").classList.remove("bg-dark");
      let scanner = new Instascan.Scanner({ video: document.getElementById('preview')});
        Instascan.Camera.getCameras().then(function(cameras){
          if(cameras.length > 0 ){
            scanner.start(cameras[0]);
          } else{
            alert('No cameras found');
            document.getElementById("containerScanner").classList.add("bg-dark");
          }

        }).catch(function(e) {
          console.error(e);
        });

        scanner.addListener('scan',function(c){
        document.getElementById('residentQR').value = c;
        document.forms[0].submit();
      });
  })
   

   function load_upmodal() {
    
    document.getElementById("containerScanner").classList.remove("bg-dark");

    let scanner = new Instascan.Scanner({ video: document.getElementById('preview')});
      Instascan.Camera.getCameras().then(function(cameras){
        if(cameras.length > 0 ){
          scanner.start(cameras[0]);
        } else{
          alert('No cameras found');
          document.getElementById("containerScanner").classList.add("bg-dark");
        }

      }).catch(function(e) {
        console.error(e);
      });

      scanner.addListener('scan',function(c){
        document.getElementById('residentQR').value = c;
         document.forms[0].submit();
      });
  } 


  // REFRESH PAGE ON BUTTON CLICK
  function refreshPage() {
    location.reload();
    load_upmodal();
  }
</script>