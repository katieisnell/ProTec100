<?php

require_once('config.inc.php');

$conn = mysqli_connect($database_host, $database_user, $database_pass, $database_name);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sqlGetEverythingRicochet = "SELECT * FROM ricochet WHERE id=26740";

$resultGetEverythingRicochet = $conn->query($sqlGetEverythingRicochet);

$foundResult = 0;

if ($resultGetEverythingRicochet->num_rows > 0) {
  $foundResult = 1;
  while($row = $resultGetEverythingRicochet->fetch_assoc()) {
    $output = $row;
  }
}
else {
  $foundResult = 0;
}

?>
