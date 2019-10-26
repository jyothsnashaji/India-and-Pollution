<?php
session_start();
if(!isset($_SESSION['username']))
    header('localhost:login.php');
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Event Registeration</title>
        <meta name="viewport" content="width=device-width">
        <meta name="description" content="India and Pollution">
        <meta name="keywords" content="report pollution">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" type="text/css" href="registration_complain.css">
    </head>
    <body>

        <?php include('header.php'); ?>

        <div class="registration" style="margin-top:40px;margin-bottom:20px">


            <table>
                <tbody>
                    <form action="event_register.php" method="post" enctype="multipart/form-data">

                        <tr>
                            <td colspan="3"><h1>Event</h1></td></tr><br>

                        <td>Event : 			</td><td colspan="2"><input type="text" placeholder="What is the Event" name="event" size="50"></td></tr><br>
                    <tr>

                        <td>Description	  : 		</td><td colspan="2"><input type="text" placeholder="Describe the event" name="description" size="50"></td></tr><br>
                    <tr>

                        <td>Venue: 		</td><td colspan="2"><input type="text" placeholder="Enter venue" name="place" size="50"></td></tr><br>
                    <tr>

                        <td>   When?   : 		</td><td colspan="2"><input type="datetime-local" placeholder="Enter date and time" name="date" size="50"></td></tr><br>
                    <tr>

                        <td>Image      : 		</td><td colspan="2"><input type="file" placeholder="Upload Image" name="image" size="50" ></td></tr><br>
                    <tr>

                        <td colspan="3">
                            <input type="submit" name="submit" value="Register"></td>

                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
