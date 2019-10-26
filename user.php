
<?php
	session_start();
	if(!isset($_SESSION['username']))
		
        header('localhost:login.php');
	include_once('config.php');
?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width">
	<meta name="description" content="India and Pollution">
	<meta name="keywords" content="report pollution">
	<title>User</title>
	<link rel="stylesheet" href="style.css">
	<style type="text/css">
		#feed{
			border:1px solid black;
			float:center
			padding:20px;
			margin:20px;
			width:50%;
			margin-left:350px;
			height:110px;
		}
	</style>
</head>
<body>
<?php include('header.php'); ?>
    <h2>Hello, <?php echo $_SESSION['username'];?></h2>
	<h3>HOME PAGE OF USER</h3>
    
	<div style="margin-top: 100px">

	<?php                                                      //Display Latest Complains in user's town
    echo "<h2 style='text-align:center'>Issues Near By</h2>";
	$username=$_SESSION['username'];                           
	$sql="SELECT * FROM `user` WHERE `username`='$username';";
	$result=$conn->query($sql);
	if(mysqli_num_rows($result)>0)
	{
		$row=mysqli_fetch_assoc($result);
		$city=$row['city'];                                      //Get user's city
		$sql="SELECT * FROM `complain` WHERE `city`='$city' ORDER BY `date` DESC;";     //Display complains by date
		$result=$conn->query($sql);
		if(mysqli_num_rows($result)>0)
		{	
			
			$flag=0;
			while(($row=mysqli_fetch_assoc($result))&&$flag<10)       //Display latest 10 complains
			{
				echo "<div id='feed'>";
				echo "<div style='float:left'><b>Complain Id</b> : ".$row['complain_id']."<br>";
				echo "<b>Locality</b> : ".$row['locality']."<br>"; 
				echo "<b>Subject</b> : ".$row['complain']."<br>";
				echo "<b>Upvotes</b> :".$row['upvote']."<br>";
				$cid=$row['complain_id'];
				echo "<button><a href='vote.php?id=$cid'>View Complain</a></button ></div>";
				$img_path=$row['image_path'];
				echo "<div style='float:right'><img src='$img_path' height=120 width=150></div>"."<br>";
				echo "</div>";
				$flag+=1;
			}
		}
	}
    echo "<h2 style='text-align:center'>Events Near By</h2>";
        
	

	?>
	</div>
</body>
</html>