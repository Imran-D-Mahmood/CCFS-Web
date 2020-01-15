<?php
// connect to database
include 'database.php';
// mysql select query
$query = "SELECT * FROM `section`";
// result for method
$result = mysqli_query($mysqli, $query);
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CCFS Student Information System</title>
  <link rel="icon" href="../Resources/dist/img/CCFS_logo.png" type="image/icon type">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../Resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="../Resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../Resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../Resources/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../Resources/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../Resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../Resources/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../Resources/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../Resources/dist/css/main.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css"/>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div id="contents" class="wrapper">

  <!-- Content Wrapper. Contains page content -->
  <div>
    <!-- Main content -->
  <section class="content">
    <div class="content-header">
      <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">List of Sections</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
    </div>

        <div class="col-12">
          <div class="card card-primary">
            <div class="card-header">
              <div>
                <!-- SEARCH FORM -->
                <form class="form-inline ml-3">
                  <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search"/>
                    <div class="input-group-append">
                      <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="secListTable" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Section ID</th>
                  <th>Section Name</th>
                  <th>Grade Level</th>
                  <th>Adviser Name</th>
                  <th>School Year</th>
                  <th></th>
                </tr>
                </thead>
               <tbody> <!-- Populate from database. -->
                  <?php while($row = mysqli_fetch_array($result)):;?>
                    <tr>
                      <td><?php echo $row["secID"];?></td>
                      <td><?php echo $row["sename"];?></td>
                      <td><?php echo $row["gradelvl"];?></td>
                      <td><?php echo $row["adviserlname"];?></td>
                      <td><?php echo $row["yearid"];?></td>
                      <td><input type="button" name="edit" value="Edit" id="<?php echo $row["secID"]; ?>" class="btn btn-info btn-xs edit_data" /></td>
                    </tr>
                  <?php endwhile;?>
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
    </div>
  </div>

<!-- Modal to display account information. -->
<div id="add_data_Modal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Section Information</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form method="post" id="insert_form">
          <div class="row">
            <div class="form-group col-6">
              <label>Section ID</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input class="form-control" type="text" name="secID" id="secID">
            </div>
          </div>
          <div class="row">
            <div class="form-group col-6">
              <label>Section Name</label>
              <input class="form-control" type="text" name="sename" id="sename" required/>
            </div>
            <div class="form-group col-6">
              <label>Grade Level</label>
              <input class="form-control" type="text" name="gradelvl" id="gradelvl" required/>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-6">
              <label>Adviser Name</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input type="text" name="adviserlname" id="adviserlname" class="form-control" />
            </div>
            <div class="form-group col-6">
              <label>Year</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input type="text" name="yearid" id="yearid" class="form-control" disabled/>
            </div>
          </div>

          <input type="hidden" name="sec_ID" id="sec_ID" />
          <input type="submit" name="update" id="update" value="Update" class="btn btn-success" />
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- View and edit account information through modal. -->
<script type="text/javascript">
$(document).ready(function(){
  $(document).on('click', '.edit_data', function(){
    var sec_ID = $(this).attr("id");
    $.ajax({
      url:"SectionFetch.php",
      method:"POST",
      data:{sec_ID:sec_ID},
      dataType:"json",
      success:function(data){
        $('#secID').val(data.secID);
        $('#sename').val(data.sename);
        $('#gradelvl').val(data.gradelvl);
        $('#adviserlname').val(data.adviserlname);
        $('#yearid').val(data.yearid);
        $('#add_data_Modal').modal('show');
      }
    });
  });

  $('#insert_form').on("submit", function(event){
    event.preventDefault();
    $.ajax({
      url:"SectionUpdate.php",
      method:"POST",
      data:$('#insert_form').serialize(),
      beforeSend:function(){
        $('#update').val("Updating...");
        },
        success:function(data){
          $('#insert_form')[0].reset();
          $('#add_data_Modal').modal('hide');
          $('#secListTable').html(data);
          $('#update').val("Update");
        }
      });
    });
  });
</script>

<!-- Password validation. -->
<script type="text/javascript">
var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirmPassword");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>

<script type="text/javascript">
// Basic example
$(document).ready(function () {
$('#secListTable').DataTable({
  "pagingType": "simple" // "simple" option for 'Previous' and 'Next' buttons only
});
$('.dataTables_length').addClass('bs-select');
});
</script>

<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>

<!-- jQuery -->
<script src="../Resources/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../Resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../Resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../Resources/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../Resources/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../Resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../Resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../Resources/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../Resources/plugins/moment/moment.min.js"></script>
<script src="../Resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../Resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../Resources/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../Resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../Resources/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../Resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../Resources/dist/js/demo.js"></script>
</body>
</html>