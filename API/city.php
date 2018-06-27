<?php
	require_once "connect.php";
	$dbObject= new DbConnect();
	$query="SELECT city_name,city_address FROM city";
	$result=mysqli_query($dbObject->getDb(),$query);
	$json_array=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_array[]=$row;
	}

	$json_city=json_encode($json_array);
	echo $json_city;
?>
