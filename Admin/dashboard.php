<title>BMS | Dashboard</title>
<?php include 'navbar.php'; ?>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">

          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Population</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool pt-3" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button> -->
                </div>
              </div>
              <div class="card-body">
                <canvas id="population" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Age</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool pt-3" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <canvas id="age" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Sector</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool pt-3" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <canvas id="sector" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Civil Status</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool pt-3" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <canvas id="civilstatus" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
            </div>
          </div>

          <section class="content-header">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <h1 class="m-0">Activity</h1>
                </div>
              </div>
            </div>
          </section>

          <div class="col-md-12" id="activity">
            <div class="card card-info">
              <div class="card-header">
                <button type="button" class="btn btn-sm bg-white" data-toggle="modal" data-target="#add_activity"><i class="fa-sharp fa-solid fa-square-plus"></i> New Activity</button>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool pt-3" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  <table id="examplse1" class="table table-bordered table-hover text-sm">
                  <thead>
                  <tr class="bg-light">
                    <th width="15%">DATE</th>
                    <th width="65%">TYPE OF ACTIVTY</th>
                    <th width="20%">ACTIONS</th>
                  </tr>
                  </thead>
                  <tbody id="users_data">
                    <?php 
                        $sql = mysqli_query($conn, "SELECT * FROM activity WHERE actDate >= '$date_today' ORDER BY actDate");
                        if(mysqli_num_rows($sql) > 0 ) {
                        while ($row = mysqli_fetch_array($sql)) {
                      ?>
                    <tr>
                        <?php if($row['actDate'] == $date_today): ?>
                          <td class="bg-white text-bold"><?php echo $row['actDate']; ?></td>
                          <td class="bg-white text-justify text-bold"><?php echo $row['actName']; ?></td>
                          <td class="bg-white">
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#update<?php echo $row['actId']; ?>"><i class="fas fa-pencil-alt"></i> Edit</button>
                            <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?php echo $row['actId']; ?>"><i class="fas fa-trash"></i> Delete</button>
                          </td>
                        <?php else: ?>
                          <td class="bg-grey text-muted"><?php echo $row['actDate']; ?></td>
                          <td class="bg-grey text-muted text-justify"><?php echo $row['actName']; ?></td>
                          <td class="bg-grey text-muted">
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#update<?php echo $row['actId']; ?>"><i class="fas fa-pencil-alt"></i> Edit</button>
                            <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delete<?php echo $row['actId']; ?>"><i class="fas fa-trash"></i> Delete</button>
                          </td>
                        <?php endif; ?>
                          
                    </tr>
                    <?php include 'activity_update_delete.php'; } } else { ?>
                        <td colspan="100%" class="text-center">No activity found</td>
                      </tr>
                    <?php } ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>
    
  </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<?php 
    include 'activity_add.php';
    include 'footer.php'; 

    // $getActityToday = mysqli_query($conn, "SELECT * FROM activity WHERE actDate='$date_today'");
    // if(mysqli_num_rows($getActityToday) > 0) {
    //   echo "<script>
    //         $(window).on('load', function() {
    //             $('#reminder').modal('show');
    //         });
    //     </script>"; 
    // }
?>


<script>
  $(function () {

   // POPULATION ****************************
    var donutChartCanvas = $('#population').get(0).getContext('2d')
    var donutData        = {

    labels: [ 'Male', 'Female', 'Non-Binary',],
     <?php 
      $sql = mysqli_query($conn, "SELECT count(residenceId) AS male FROM residence WHERE gender='Male' ");
      $row = mysqli_fetch_array($sql);

      $sql2 = mysqli_query($conn, "SELECT count(residenceId) AS female FROM residence WHERE gender='Female' ");
      $row2 = mysqli_fetch_array($sql2);

      $sql3 = mysqli_query($conn, "SELECT count(residenceId) AS nonbinary FROM residence WHERE gender='Non-Binary' ");
      $row3 = mysqli_fetch_array($sql3);

      echo " datasets: [ 
              { 
                data: [".$row['male'].", ".$row2['female'].", ".$row3['nonbinary']."], 
                backgroundColor : ['#f56954', '#00a65a', '#f39c12'],
              } 
             ] ";
      ?>
    }

    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      // type: 'pie',
      data: donutData,
      options: donutOptions
    })





    // AGE *****************************
    var donutChartCanvas = $('#age').get(0).getContext('2d')
    var donutData        = {

    labels: [ 'Toddler', 'Child', 'Teen', 'Young', 'Adult', 'Senior',],
     <?php 
            $sql = mysqli_query($conn, "SELECT count(residenceId) AS toddler FROM residence WHERE ageClassification='Toddler' ");
            $row = mysqli_fetch_array($sql);

            $sql2 = mysqli_query($conn, "SELECT count(residenceId) AS child FROM residence WHERE ageClassification='Child' ");
            $row2 = mysqli_fetch_array($sql2);

            $sql3 = mysqli_query($conn, "SELECT count(residenceId) AS teen FROM residence WHERE ageClassification='Teen' ");
            $row3 = mysqli_fetch_array($sql3);

            $sql4 = mysqli_query($conn, "SELECT count(residenceId) AS young FROM residence WHERE ageClassification='Young' ");
            $row4 = mysqli_fetch_array($sql4);

            $sql5 = mysqli_query($conn, "SELECT count(residenceId) AS adult FROM residence WHERE ageClassification='Adult' ");
            $row5 = mysqli_fetch_array($sql5);

            $sql6 = mysqli_query($conn, "SELECT count(residenceId) AS senior FROM residence WHERE ageClassification='Senior' ");
            $row6 = mysqli_fetch_array($sql6);

      echo " datasets: [ 
              { 
                data: [".$row['toddler'].", ".$row2['child'].", ".$row3['teen'].", ".$row4['young'].", ".$row5['adult'].", ".$row6['senior']."], 
                backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
              } 
             ] ";
      ?>
    }

    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      // type: 'pie',
      data: donutData,
      options: donutOptions
    })




    // SECTOR *****************************
    var donutChartCanvas = $('#sector').get(0).getContext('2d')
    var donutData        = {

    labels: [ 'Senior Citizen', 'Solo Parents', 'PWD',],
     <?php 
            $sql = mysqli_query($conn, "SELECT count(residenceId) AS senior FROM residence WHERE sector='Senior Citizen' ");
            $row = mysqli_fetch_array($sql);

            $sql2 = mysqli_query($conn, "SELECT count(residenceId) AS solo FROM residence WHERE sector='Solo Parents' ");
            $row2 = mysqli_fetch_array($sql2);

            $sql3 = mysqli_query($conn, "SELECT count(residenceId) AS pwd FROM residence WHERE sector='PWD' ");
            $row3 = mysqli_fetch_array($sql3);

      echo " datasets: [ 
              { 
                data: [".$row['senior'].", ".$row2['solo'].", ".$row3['pwd']."], 
                backgroundColor : ['#f56954', '#00a65a', '#f39c12'],
              } 
             ] ";
      ?>
    }

    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      // type: 'pie',
      data: donutData,
      options: donutOptions
    })





    // CIVIL STATUS *****************************
    var donutChartCanvas = $('#civilstatus').get(0).getContext('2d')
    var donutData        = {

    labels: [ 'Single', 'Married', 'Separated', 'Widow/ER',],
     <?php 
            $sql = mysqli_query($conn, "SELECT count(residenceId) AS single FROM residence WHERE civilstatus='Single' ");
            $row = mysqli_fetch_array($sql);

            $sql2 = mysqli_query($conn, "SELECT count(residenceId) AS married FROM residence WHERE civilstatus='Married' ");
            $row2 = mysqli_fetch_array($sql2);

            $sql3 = mysqli_query($conn, "SELECT count(residenceId) AS separated FROM residence WHERE civilstatus='Separated' ");
            $row3 = mysqli_fetch_array($sql3);

            $sql4 = mysqli_query($conn, "SELECT count(residenceId) AS widow FROM residence WHERE civilstatus='Widow/ER' ");
            $row4 = mysqli_fetch_array($sql4);

      echo " datasets: [ 
              { 
                data: [".$row['single'].", ".$row2['married'].", ".$row3['separated'].", ".$row4['widow']."], 
                backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef'],
              } 
             ] ";
      ?>
    }

    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      // type: 'pie',
      data: donutData,
      options: donutOptions
    })




  })
</script>

