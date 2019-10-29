<?php
	require_once('config.php');

	if(isset($_POST['Button']))
	{
	
		$username=$_POST['username'];
		$email=$_POST['email'];
		$password=$_POST['password'];
		$phone=$_POST['phoneNo'];
		
		$city=$_POST['city'];
	}	

	echo "$email";

	$insert="insert into user (username,email,password,phone,city)  values ('$username','$email','$password','$phone','$city')";
	
	
	
	if($conn->query($insert)==TRUE)
	{  
		
		/*echo "<script>alert('Registration Successful')</script>";*/

		header("Location: login.html");
    }
	else
	{
		echo $conn->error;
		echo "Registration Unsuccessful";
	}

	mysqli_close($conn);
?>