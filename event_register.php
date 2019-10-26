<?php
	session_start();
	include_once('config.php');
	if(isset($_POST['submit'])){

		$username=$_SESSION['username'];
		$sub=$_POST['event'];
		$desc=$_POST['description'];
		$locality=$_POST['place'];
		$date=$_POST['date'];
        
		
		$file_name = $_FILES['image']['name']; 
		$file_tmp =$_FILES['image']['tmp_name'];
		$img_path="files/".$file_name;
		move_uploaded_file($file_tmp,"files/".$file_name);
			
		
		
	
		$sql="insert into events (hosted_by,event, place,image_path,date,description)  values ('$username','$sub','$locality','$img_path','$date','$desc');";
		$res=$conn->query($sql);
		if($res>0)
		{
			echo "<script>alert('Event Successfully Registered')</script>";
			echo "<script>window.location.href='user.php'</script>";
			header('location:user.php');
		}
		else
		{
			echo "<script>alert('Event  Unsuccessfull')</script>";
			echo "<script>window.location.href='user.php'</script>";
			//echo "Complain Unsuccessful : ".$conn->error;
		}
	}
	
	
?>