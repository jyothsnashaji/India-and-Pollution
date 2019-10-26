<?php
session_start();
if(!isset($_SESSION['username']))
    header('localhost:login.php');
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Report</title>
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
                    <form action="complain_register.php" method="post" enctype="multipart/form-data">

                        <tr>
                            <td colspan="3"><h1>Complain</h1></td></tr><br>

                        <td>Subject* : 			</td><td colspan="2"><input type="text" placeholder="Enter Subject" name="subject" size="50"></td></tr><br>
                    <tr>

                        <td>Complain* 	  : 		</td><td colspan="2"><input type="text" placeholder="Complain" name="complain" size="50"></td></tr><br>
                    <tr>

                        <td>Locality* : 		</td><td colspan="2"><input type="text" placeholder="Enter Locality" name="locality" size="50"></td></tr><br>
                    <tr>

                        <td>City*      : 		</td><td colspan="2"><input type="text" placeholder="Enter City" name="city" size="50"></td></tr><br>
                    <tr>

                        <td>Image      : 		</td><td colspan="2"><input type="file" placeholder="Upload Image" name="image" size="50" ></td></tr><br>
                    <tr>

                        <td colspan="3">
                            <input type="submit" name="submit" value="Complain"></td>


                </form>

                </div></tbody></table>



    </body>
</html>