<?php
$servername = "localhost";
$username = "deb50474_40kgenerator";
$password = "tyluqqM9Z5";
$dbname = "deb50474_40k";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>