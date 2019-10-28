<?php 
session_start();
include('config.php');
$sql="INSERT INTO post (posted_by,post,upvote) VALUES ('".$_SESSION['username']."','".$_POST['post']."',0)";
$res=mysqli_query($conn,$sql);
echo $sql;
if ($res)
{
    header('Location:discussion.php');
}


?>