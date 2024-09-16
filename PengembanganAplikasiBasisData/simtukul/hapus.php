<?php
session_start();
if(!isset($_SESSION['login'])){
    header("location: login.php");
    exit();
}

include("konek.php");

$sql = "DELETE FROM tugas WHERE id=".$_GET['id'].";";
mysqli_query($koneksi, $sql);

// Construct the base URL dynamically
$base_url = "http://" . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . "/";

// Redirect to the base URL
header("location: " . $base_url);
exit();
?>
