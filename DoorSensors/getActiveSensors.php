<?php

require_once('config.inc.php');
$conn = new mysqli($database_host, $database_user, $database_pass, $database_name);
if (mysqli_connect_errno())
{
    echo "An error occured. Please try again later.";
    exit();
}
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


// Code to find active sensors
$date_now = new DateTime();

// Remove 30 seconds from the current time
date_sub($date_now, date_interval_create_from_date_string('30 seconds'));
$date_now->modify('-1 hours');

// Convert to date string so php can compare it
$date_now_string = $date_now->format('Y-m-d H:i:s');

$sqlGetEverythingRicochet = "SELECT * FROM ricochet WHERE Time>'".$date_now_string."' AND ExpanderId=3";

$resultGetEverythingRicochet = $conn->query($sqlGetEverythingRicochet);

// Assume we have not found any rows that match our query
$foundResult = 0;
$no = 0;

if ($resultGetEverythingRicochet->num_rows > 0) {
  $foundResult = 1;
  while($row = $resultGetEverythingRicochet->fetch_assoc()) {
    $output[$no] = $row;
    $no++;
  }
}

?>
