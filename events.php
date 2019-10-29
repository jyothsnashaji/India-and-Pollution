<?php
session_start();
if(!isset($_SESSION['username']))
    header('localhost:login.php');
include_once('config.php')
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Event Registeration</title>
       
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" type="text/css" href="registration_complain.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/mystyles.css">
	<script src="js/jquery.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/myjs.js"></script> 	
    </head>
    <body>

        <?php include('header.php'); ?>

        <div class="registration" style="margin-top:40px;margin-bottom:20px">


            <table>
                <tbody>
                    <form action="event_register.php" method="post" enctype='multipart/form-data'>

                        <tr>
                            <td colspan="3"><h1>Register Event</h1></td></tr><br>

                        <td>Event : 			</td><td colspan="2"><input type="text" placeholder="What is the Event" name="event" size="50"></td></tr><br>
                    <tr>

                        <td>Description	  : 		</td><td colspan="2"><input type="text" placeholder="Describe the event" name="description" size="50"></td></tr><br>
                    <tr>

                        <td>Venue: 		</td><td colspan="2"><input type="text" placeholder="Enter venue" name="place" size="50"></td></tr><br>
                    <tr>

                        <td>   When?   : 		</td><td colspan="2"><input type="date" placeholder="Enter date" name="date" size="50"></td></tr><br>
                    <tr>

                        <td>Image      : 		</td><td colspan="2"><input type="file" placeholder="Upload Image" name="file" size="50" ></td></tr><br>
                    <tr>

                        <td colspan="3">
                            <input type="submit" name="submit" value="Register"><br>
                            <button class='button_'><a href='myevents.php'>My Events</a></button>
                        </td>


                    </tr>
                </form>
               
                </tbody>
            </table>
        </div>
       

    </div>


    </body>
</html>
