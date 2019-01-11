<?php

$server = "localhost";  // 127.0.0.1   ::1
$username = "root";
$password = "";
$bd = "short_url";
$baseURL = "http://sho.rt";

$conn = new mysqli($server, $username, $password, $bd);

if($conn->connect_error) {
    die("EROARE LA CONECTARE! " . $conn->connect_error);
}