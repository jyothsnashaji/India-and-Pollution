<?php
	session_start();
	if(!isset($_SESSION['username']))
		
        header('localhost:login.php');
	include_once('config.php');
?>


<html>
<head>
	
	<title>DISCUSS</title>
	<link rel="stylesheet" href="style.css">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/mystyles.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/myjs.js"></script> 

</head>
<body>
<?php include('header.php'); ?> <br>
<div class="container">

    <form method="post" action="new_post.php">
		<input type="text" name="post" placeholder="New Post" required>
		<button type="submit" class="btn-primary" style="float:right;">POST</button>
    </form>
</div>
<br>

<div class="container">
	<?php $sql="SELECT * FROM post ORDER BY time ASC";
	$res=mysqli_query($conn,$sql);
	echo "<table class='table table-hover'>";
	if ($res)
	{
		while($rr=mysqli_fetch_array($res))
		{
			$sql_comments="SELECT * FROM comments WHERE post_id=".$rr['post_id']."";
			$res_comments=mysqli_query($conn,$sql_comments);
			$count=mysqli_num_rows($res_comments);
			echo "<tr class='collapserow' onclick='toggle_collapse(";
			echo $rr['post_id'];
			echo ")'><td width='40px'><img  class='dp' src='images/avatar.png'></td><td> <div> <b>";
			echo $rr['posted_by'];
			echo "</b><br>  ";
			echo $rr['post'];
			
			echo "</div>";
			if ($count)
			{echo "<br></r><span class='view_comments'>View ";
			echo $count;
			echo " comments</span>";}
			echo "</td></tr>
			<tr id='collapse";
             echo $rr['post_id'];
			 echo "' class='collapse' ><td colspan=2><div  class='comments'>";
			 $sql_comments="SELECT * FROM comments WHERE post_id=".$rr['post_id']."";
			 $res_comments=mysqli_query($conn,$sql_comments);
			 while($rr_c=mysqli_fetch_array($res_comments))
			 { echo "<img  class='dp' src='images/avatar.png'> ";
				 echo "<b>  ";
				 echo $rr_c['commented_by'];
				 echo "</b>  ";
				 echo $rr_c['comment'];
				 echo "<hr>";

			 }

 			echo "</div><div class='container'>

			 <form method='post' action='new_comment.php?post_id=";
			 echo $rr['post_id'];
			 echo "'>
				 <input type='text' placeholder='Enter comment' name='comment' required>
				 <button type='submit' class='btn-primary' style='float:right;'>COMMENT</button>
			 </form>
		 </div>
		 </td></tr>";
			}
       }
      echo "</table>";

	?>
</div>
</body>
</html>