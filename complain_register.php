<?php
	session_start();
	include_once('config.php');
	if(isset($_POST['submit'])){

		$username=$_SESSION['username'];
		$sub=$_POST['subject'];
		$email='jyothsnashaji99@gmail.com';
		$complain=$_POST['complain'];
		$authority='MDDA';
		$locality=$_POST['locality'];
		$city=$_POST['city'];
		 $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
		$upvote=0;
		
	 $image=basename( $_FILES["image"]["name"],".jpg");
		$sql="insert into complain (username,complain, locality, city, authority,authority_mail,upvote,image_path,date,subject)  values ('$username','$complain','$locality','$city','$authority','$email','$upvote','$image','$date','$sub');";
		$res=$conn->query($sql);
		if($res>0)
		{
			echo "<script>alert('Complain Successfully Registered')</script>";
			echo "<script>window.location.href='user.php'</script>";
			header('location:user.php');
		}
		else
		{
			echo "<script>alert('Compalin Unsuccessfull')</script>";
			echo "<script>window.location.href='user.php'</script>";
			//echo "Complain Unsuccessful : ".$conn->error;
		}
	}
	
	
?>