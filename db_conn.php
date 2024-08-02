<?php

$servername = "localhost";
$username = "root";
$password = "";
$db_name = "ddf_report";

$conn = mysqli_connect($servername, $username, $password, $db_name);

if (!$conn) {
	echo "Connection failed!";
}