<!DOCTYPE html>

<?php
// php populate html table from mysql database

// connect to mysql
$connect = mysqli_connect("localhost", "root", "", "ccfs");

// mysql select query
$query = "SELECT * FROM `schoolyear`";

// result for method
$result = mysqli_query($connect, $query);
?>

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
    <link rel="stylesheet" type="text/css" href="dist/css/main.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div id="contents" class="wrapper">

  <!-- Content Wrapper. Contains page content -->
  <div>
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">List of School Years</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
   <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Double click on a row to view list of archived students.</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="schyrTable" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>School Year</th>
                  <th>Status</th>
                  <th></th>
                </tr>
                </thead>
                <tbody> <!-- Populate from database. -->
                  <?php while($row = $result->fetch_assoc()) { ?>
                    <tr ondblclick="openPage('../Registrar/ListOfArchivedStudents.php');">
                      <td><?php echo $row["yearstart"]; echo "-"; echo $row["yearend"];?></td>
                      <td><?php echo $row["scstatus"];?> <button class='btn btn-info btn-xs edit_data'>Activate</button></td>
                      <td><input type="button" name="edit" value="Edit" id="<?php echo $row["yearid"]; ?>" class="btn btn-info btn-xs edit_data"  data-target="#add_data_Modal" data-toggle="modal" /></td>
                    </tr>
                    <?php }?>
                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
    </section>
  </div>
</div> <!-- ./wrapper -->

<!-- Modal to display school year information. -->
<div id="add_data_Modal" class="modal fade">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">School Year Information</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <form method="post" id="insert_form">
          <div class="row">
            <div class="form-group col-3">
              <label>Year Start</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input class="form-control" type="text" name="yearStart" id="yearStart" disabled/>
            </div>
            <div class="form-group col-3">
              <label>Year End</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input class="form-control" type="text" name="yearEnd" id="yearEnd" disabled/>
            </div>
            <div class="form-group col-3">
              <label>Date Start</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input class="form-control" type="text" name="dateStart" id="dateStart" disabled/>
            </div>
            <div class="form-group col-3">
              <label>Date End</label> <i class="fa fa-lock" aria-hidden="true"></i>
              <input class="form-control" type="text" name="dateEnd" id="dateEnd" disabled/>
            </div>
          </div>
            <div class="row">
              <div class="form-group col-4">
                <label for="nurseryTuition">Nursery Tuition</label>
                <input class="form-control" id="inputnurseryTuition" placeholder="Enter Tuition Fee" type= "number" name ="pretui1" min="0">
              </div>
            <div class="form-group col-4">
                <label for="nurseryBook">Nursery Book Fees</label>
                <input class="form-control" id="inputnurseryBook" placeholder="Enter Book Fee" type= "number" name ="prebook1" min= "0">
            </div>
            <div class="form-group col-4">
                <label for="nurseryMisc">Nursery Misc. Fee</label>
                <input class="form-control" id="inputnurseryMisc1" placeholder="Enter Miscellaneous Fee" type= "number" name ="premisc1" min ="0">
              </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="preKinTuition">Pre-Kinder Tuition</label>
              <input class="form-control" id="inputpreKinTuition" placeholder="Enter Tuition Fee" type= "number" name ="pretui2" min="0">
            </div>
            <div class="form-group col-4">
              <label for="preKinBook">Pre-Kinder Book Fees</label>
              <input class="form-control" id="inputpreKinBook" placeholder="Enter Book Fee" type= "number" name ="prebook2" min= "0">
            </div>
            <div class="form-group col-4">
              <label for="preKinMisc">Pre-Kinder Misc. Fee</label>
              <input class="form-control" id="inputnurseryMisc2" placeholder="Enter Miscellaneous Fee" type= "number" name ="premisc2" min ="0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="KinTuition">Kinder Tuition</label>
              <input class="form-control" id="inputKinTuition" placeholder="Enter Tuition Fee" type= "number" name ="pretui3" min="0">
            </div>
            <div class="form-group col-4">
              <label for="KinBook">Kinder Book Fees</label>
              <input class="form-control" id="inputKinBook" placeholder="Enter Book Fee" type= "number" name ="premisc3" min= "0">
            </div>
            <div class="form-group col-4">
              <label for="KinMisc">Kinder Misc. Fee</label>
              <input class="form-control" id="inputnurseryMisc3" placeholder="Enter Miscellaneous Fee" type= "number" name ="prebook3" min ="0">
            </div>
          </div> 
            <div class="row">
            <div class="form-group col-4">
              <label for="grade1TFee">Grade 1 Tuition Fee </label>
              <input class="form-control" id="inputgrade1TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui1" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade1MiscFee">Grade 1 Misc. Fee</label>
              <input class="form-control" id="inputgrade1MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc1" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade1BookFee">Grade 1 Book Fee</label>
              <input class="form-control" id="inputgrade1BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook1" min = "0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="grade2TFee">Grade 2 Tuition Fee </label>
              <input class="form-control" id="inputgrade2TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui2" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade2MiscFee">Grade 2 Misc. Fee</label>
              <input class="form-control" id="inputgrade2MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc2" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade2BookFee">Grade 2 Book Fee</label>
              <input class="form-control" id="inputgrade2BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook2" min = "0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="grade3TFee">Grade 3 Tuition Fee </label>
              <input class="form-control" id="inputgrade3TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui3" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade3MiscFee">Grade 3 Misc. Fee</label>
              <input class="form-control" id="inputgrade3MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc3" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade3BookFee">Grade 3 Book Fee</label>
              <input class="form-control" id="inputgrade3BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook3" min = "0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="grade4TFee">Grade 4 Tuition Fee </label>
              <input class="form-control" id="inputgrade4TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui4" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade4MiscFee">Grade 4 Misc. Fee</label>
              <input class="form-control" id="inputgrade4MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc4" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade4BookFee">Grade 4 Book Fee</label>
              <input class="form-control" id="inputgrade4BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook4" min = "0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="grade5TFee">Grade 5 Tuition Fee </label>
              <input class="form-control" id="inputgrade5TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui5" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade5MiscFee">Grade 5 Misc. Fee</label>
              <input class="form-control" id="inputgrade5MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc5" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade5BookFee">Grade 5 Book Fee</label>
              <input class="form-control" id="inputgrade5BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook5" min = "0">
            </div>
          </div>
            <div class="row">
            <div class="form-group col-4">
              <label for="grade6TFee">Grade 6 Tuition Fee </label>
              <input class="form-control" id="inputgrade6TFee" placeholder="Enter Tuition Fee" type= "number" name ="gradetui6" min ="0">
            </div>
            <div class="form-group col-4">
              <label for="grade6MiscFee">Grade 6 Misc. Fee</label>
              <input class="form-control" id="inputgrade6MiscFee" placeholder="Enter Miscellaneous Fee" type= "number" name ="grademisc6" min = "0">
            </div>
            <div class="form-group col-4">
              <label for="grade6BookFee">Grade 6 Book Fee</label>
              <input class="form-control" id="inputgrade6BookFee" placeholder="Enter Book Fee" type= "number" name ="gradebook6" min = "0">
            </div>
          </div>

          <input type="hidden" name="schoolYear_id" id="schoolYear_id" />
          <input type="submit" name="update" id="update" value="Update" class="btn btn-success" />
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- View and edit school year information through modal. -->
<script type="text/javascript">
$(document).ready(function(){
  $(document).on('click', '.edit_data', function(){
    var schoolYear_id = $(this).attr("id");
    $.ajax({
      url:"SchoolYearFetch.php",
      method:"POST",
      data:{schoolYear_id:schoolYear_id},
      dataType:"json",
      success:function(data){
        $('#yearStart').val(data.yearstart);
        $('#yearEnd').val(data.yearend);
        $('#dateStart').val(data.dateStart);
        $('#dateEnd').val(data.dateEnd);
        $('#inputnurseryTuition').val(data.pretui1);
        $('#inputnurseryBook').val(data.premisc1);
        $('#inputnurseryMisc1').val(data.prebook1);
        $('#inputpreKinTuition').val(data.pretui2);
        $('#inputpreKinBook').val(data.premisc2);
        $('#inputnurseryMisc2').val(data.prebook2);
        $('#inputKinTuition').val(data.pretui3);
        $('#inputKinBook').val(data.premisc3);
        $('#inputnurseryMisc3').val(data.prebook3);
        $('#inputgrade1TFee').val(data.gradetui1);
        $('#inputgrade1MiscFee').val(data.grademisc1);
        $('#inputgrade1BookFee').val(data.gradebook1);
        $('#inputgrade2TFee').val(data.gradetui2);
        $('#inputgrade2MiscFee').val(data.grademisc2);
        $('#inputgrade2BookFee').val(data.gradebook2);
        $('#inputgrade3TFee').val(data.gradetui3);
        $('#inputgrade3MiscFee').val(data.grademisc3);
        $('#inputgrade3BookFee').val(data.gradebook3);
        $('#inputgrade4TFee').val(data.gradetui4);
        $('#inputgrade4MiscFee').val(data.grademisc4);
        $('#inputgrade4BookFee').val(data.gradebook4);
        $('#inputgrade5TFee').val(data.gradetui5);
        $('#inputgrade5MiscFee').val(data.grademisc5);
        $('#inputgrade5BookFee').val(data.gradebook5);
        $('#inputgrade6TFee').val(data.gradetui6);
        $('#inputgrade6MiscFee').val(data.grademisc6);
        $('#inputgrade6BookFee').val(data.gradebook6);
        $('#schoolYear_id').val(data.yearid);
        $('#add_data_Modal').modal('show');
      }
    });
  });

  $('#insert_form').on("submit", function(event){
    event.preventDefault();
    $.ajax({
      url:"SchoolYearUpdate.php",
      method:"POST",
      data:$('#insert_form').serialize(),
      beforeSend:function(){
        $('#update').val("Updating...");
        },
        success:function(data){
          $('#insert_form')[0].reset();
          $('#add_data_Modal').modal('hide');
          $('#schyrTable').html(data);
          $('#update').val("Update");
        }
      });
    });
  });
</script>


<!-- Open new page -->
<script src="../Resources/js/displaypage.js"></script>
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
