<?php
$conn = mysqli_connect("localhost","root","","gymnsb","3310");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
