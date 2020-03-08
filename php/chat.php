<?php
	require 'connection.php';
	
	$query = "
	SELECT *  FROM 
		`messages` 
	WHERE 
		(`sender_id` LIKE '1' AND `reciever_id` LIKE '2') OR 
		(`sender_id` LIKE '2' AND `reciever_id` LIKE '1')  
	ORDER BY 
		`messages`.`time_stamp` ASC";

// Perform query
if ($result = $conn -> query($query)) {
	$users = mysqli_fetch_all($result, MYSQLI_ASSOC);
	echo json_encode($users);
	$result -> free_result();
}
	
	$conn -> close();
?>