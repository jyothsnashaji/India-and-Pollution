<?php

	session_start();
	$username = $_POST['username'];
	$password = $_POST['password'];

	include_once('config.php');

	$sql="select username,password from user where username='$username' && password='$password';";
	$result=$conn->query($sql);


	if($result->num_rows>0)
	{
		$_SESSION['username']=$username;
		header('location:user.php');
	}
	else
	{
		echo "<script>alert('Wrong Username or Password')</script>";
		echo "<script>window.location.href='login.html'</script>";
		header('location:login.html');
	}

	mysqli_close($conn);
?>