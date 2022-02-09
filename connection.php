<?php
$servername = "localhost";
$username = "root";
$password = "";

//$servername = "localhost";
//$username = "c98l9GRLrq";
//$password = "usyd2f5kCr";

try {
    $conn = new PDO("mysql:host=$servername;dbname=workfile", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>