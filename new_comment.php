<?php 
session_start();
include('config.php');
$sql="INSERT INTO comments (commented_by,post_id,comment) VALUES ('".$_SESSION['username']."','".$_GET['post_id']."','".$_POST['comment']."')";
$res=mysqli_query($conn,$sql);
echo $sql;
if ($res)
{
    header('Location:discussion.php');
}


?>