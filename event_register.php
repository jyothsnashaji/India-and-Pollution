<?php
	session_start();
	include_once('config.php');

		$username=$_SESSION['username'];
		$sub=$_POST['event'];
		$desc=$_POST['description'];
		$locality=$_POST['place'];
		$date=$_POST['date'];
        
		
		$name = $_FILES['file']['name']; 
		$target_dir = "upload/";
  $target_file = $target_dir . basename($_FILES["file"]["name"]);

  // Select file type
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

  // Valid file extensions
  $extensions_arr = array("jpg","jpeg","png","gif");
		
  if( in_array($imageFileType,$extensions_arr) )	
	{
		$sql="insert into events (hosted_by,event_name, place,image_path,date,description)  values ('$username','$sub','$locality','$name','$date','$desc');";
		echo $sql;
		$res=mysqli_query($conn,$sql);
		if($res)
		{
			move_uploaded_file($_FILES['file']['tmp_name'],$target_dir.$name);
			header('location:events.php');
		}
		echo $conn->error;
	}
	
	
	
?>