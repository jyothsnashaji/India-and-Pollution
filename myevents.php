<?php
session_start();
if(!isset($_SESSION['username']))
    header('localhost:login.php');
include_once('config.php')
?>

<!DOCTYPE html>
<html>
    <head>
        <title>My Events</title>
       
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/mystyles.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/myjs.js"></script> 	
    </head>
    <body>
    <?php include('header.php'); ?>
    <br>
<div class='container'>

<h3>HOSTING</h3>
<?php 
$sql="SELECT * FROM events WHERE hosted_by='".$_SESSION['username']."'";
$res=mysqli_query($conn,$sql);
echo $conn->error;
echo "<table class='table'><th>EVENT</th><th>DATE</th><th>VENUE</th><th>VOLUNTEERS REGISTERED</th>";
while($rr=mysqli_fetch_array($res))
{
 echo "<tr><td>";
 echo $rr['event_name'];
 echo "</td><td>";
 echo date('F jS Y',strtotime($rr['date']));
 echo "</td><td>";
 echo $rr['place'];
 echo "</td><td>";
 $sql_vol="SELECT * FROM volunteers WHERE event_id= ".$rr['event_id']."";
 $res_vol=mysqli_num_rows(mysqli_query($conn,$sql_vol));
 echo $res_vol; 
 echo "</td>";

 echo "</tr>";
}
echo "</table>";
?>

<h3>VOLUNTEERING</h3>
<?php
$sql="SELECT * FROM events as e,volunteers as v WHERE v.username='".$_SESSION['username']."' AND e.event_id=v.event_id";
$res=mysqli_query($conn,$sql);
echo $conn->error;
echo "<table class='table'><th>EVENT</th><th>DATE</th><th>VENUE</th>";
while($rr=mysqli_fetch_array($res))
{
 echo "<tr><td>";
 echo $rr['event_name'];
 echo "</td><td>";
 echo date('F jS Y',strtotime($rr['date']));
 echo "</td><td>";
 echo $rr['place'];
 echo "</td>";
 

 echo "</tr>";
}
echo "</table>";

?>
</div>


   </body>
   </html>     