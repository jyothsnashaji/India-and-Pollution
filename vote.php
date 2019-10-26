<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
	
	<title>History</title>
	<meta name="viewport" content="width=device-width">
	<meta name="description" content="India and Pollution">
	<meta name="keywords" content="report pollution">
	<link rel="stylesheet" href="style.css">
	<style> table,th,td{
		border: 1px solid black;
		border-collapse:collapse;
		}
		th,td{
			padding:15px;
			text-align: left;
		}
	</style>
</head>
<body>
	<?php echo include('header.php'); ?>
	<div style="text-align: center;margin-top:140px">
		<h2>Enter Complain ID</h2>
		<input type="text" id="complain_id" required >
		<Button id="btn" onclick="showUser()" >Search</Button>
	</div>

	
	<div id='txt' style="float: center;"> </div>
	<script>
		var c_id = "<?php echo $_GET['id']?>";
		document.getElementById('complain_id').value=c_id;
	</script>


	<script type="text/javascript">
		function showUser(){
			var id=document.getElementById('complain_id').value;
			if(window.XMLHttpRequest){
				xmlhttp=new XMLHttpRequest();
			}
			xmlhttp.onreadystatechange=function(){
				if(this.readyState == 4 && this.status == 200) {
					document.getElementById('txt').innerHTML = this.responseText;
					}
				};
				xmlhttp.open("GET","getuser.php?q="+id,true);
				xmlhttp.send();
			}

	</script>
	
	</body>
</html>
