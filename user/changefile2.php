<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['ocasuid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {

 
 $eid=$_GET['editid'];
 $file2=$_FILES["file2"]["name"]; 
$extension2 = substr($file2,strlen($file2)-4,strlen($file2));
$allowed_extensions2 = array(".pdf");

if(!in_array($extension2,$allowed_extensions2))
{
echo "<script>alert('File has Invalid format. Only pdf format allowed');</script>";
}
else
{

$file2=md5($file).time().$extension1;
  move_uploaded_file($_FILES["file2"]["tmp_name"],"folder2/".$file2);
$sql="update tblnotes set File2=:file2 where ID=:eid";
$query=$dbh->prepare($sql);

$query->bindParam(':file2',$file2,PDO::PARAM_STR);
$query->bindParam(':eid',$eid,PDO::PARAM_STR);
 $query->execute();
  echo '<script>alert("Notes doc file has been updated")</script>';
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Notes File</title>
  
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative bg-white d-flex p-0">
        
<?php include_once('includes/sidebar.php');?>


        <!-- Content Start -->
        <div class="content">
         <?php include_once('includes/header.php');?>


            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">Update Note File Second</h6>
                            <form method="post" enctype="multipart/form-data">
                                <?php
                                $eid=$_GET['editid'];
$sql="SELECT * from tblnotes where tblnotes.ID=:eid";
$query = $dbh -> prepare($sql);
$query->bindParam(':eid',$eid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                
                                  <div class="mb-3">
                                    <label for="exampleInputEmail2" class="form-label">Notes Title</label>
                                    <input type="text" class="form-control"  name="notestitle" value="<?php  echo htmlentities($row->NotesTitle);?>" readonly='true'>

                                    
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail2" class="form-label">View Old File2</label>
                                   <a href="folder2/<?php echo $row->File2;?>" width="100" height="100" target="_blank"> <strong style="color: red">View Old File</strong></a>


                                </div>
                               
                                <div class="mb-3">
                                    <label for="exampleInputEmail2" class="form-label">Upload New File</label>
                                   <input type="file" class="form-control"  name="file2" value="" required='true'>

                                </div>
                               
                                <?php $cnt=$cnt+1;}} ?>
                                <button type="submit" name="submit" class="btn btn-primary">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Form End -->


             <?php include_once('includes/footer.php');?>
        </div>
        <!-- Content End -->


       <?php include_once('includes/back-totop.php');?>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html><?php }  ?>