
<?php
	session_start();
	if(!isset($_SESSION['username']))
		
        header('localhost:login.php');
	include_once('config.php');
?>

<!DOCTYPE html>
<html>
<head>
	
	<title>User</title>
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

    
	<div  class='row' style="margin-top: 100px">
	<?php 
	$sql="SELECT * FROM events ORDER BY date";
	$res=mysqli_query($conn,$sql);
	while($rr=mysqli_fetch_array($res))
	{$image = $rr['image_path'];
	$image_src = "upload/".$image;
	echo "<div class='card' style='width:400px'>
	<img class='card-img-top' src='";
	echo $image_src;
	echo "'  style='width:100%'>
    <div class='card-body'>
	  <h4 class='card-title'>";
	echo $rr['event_name'];
	echo "</h4>
	  <p class='card-text'>";
	  echo "Venue:";
	  echo $rr['place'];
	  echo "<br>Time:";
	  echo $rr['date'];
	  echo "<br>";
	echo $rr['description'];
	echo "</p>
	  <a href='volunteer_reg.php?event_id=";
	  echo $rr['event_id'];
	  echo "' class='btn btn-primary' onclick='self.innerHTML=\'Registered\';'>Register As Volunteer</a>
    </div>
  </div>";
	}
  ?>
  </div>
	</div>
</body>
</html>