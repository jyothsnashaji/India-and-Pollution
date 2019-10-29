<?php
	session_start();
    include_once('config.php');
    $sql="INSERT INTO volunteers (event_id,username) VALUES (".$_GET['event_id'].",'".$_SESSION['username']."')";
    $res=mysqli_query($conn,$sql);
    echo $sql;
    if ($res)
    {
        header('Location:user.php');
    }
    echo $conn->error;