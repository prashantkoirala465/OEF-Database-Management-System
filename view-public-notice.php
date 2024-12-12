<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!doctype html>
<html>
<head>
<title>Ocean Education Foundation Management System || Home Page</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--bootstrap-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--script-->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- js -->
<script src="js/bootstrap.js"></script>
<!-- /js -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!--hover-girds-->
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>
<!--/hover-grids-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--/script-->
</head>
	<body>
<?php include_once('includes/header.php');?>
<div class="banner banner5">
	<div class="container">
	<h2>Notice</h2>
	</div>
</div>
<!--weelcome-->
<div class="welcome">
	<div class="container">
		<table border="1" class="table table-bordered mg-b-0">
                      <?php
$vid=$_GET['viewid'];
$sql="SELECT * from tblpublicnotice where ID=:vid";
$query = $dbh -> prepare($sql);
$query->bindParam(':vid',$vid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
 <tr align="center" class="table-warning">
<td colspan="4" style="font-size:20px;color:blue">
 Notice</td></tr>
<tr class="table-info">
    <th>Notice Announced Date</th>
    <td><?php  echo $row->CreationDate;?></td>
  </tr>
    <tr class="table-info">
    <th>Notice Title</th>
    <td><?php  echo $row->NoticeTitle;?></td>
  </tr>
  <tr class="table-info">
     <th>Message</th>
    <td><?php  echo $row->NoticeMessage;?></td>

  </tr>

  <?php $cnt=$cnt+1;}} ?>
</table>
	</div>
</div>
<!--/welcome-->
<?php include_once('includes/footer.php');?>
<!--/copy-rights-->
	</body>
</html>
