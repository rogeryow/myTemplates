<?php  
	require 'connection.php';

	$sender = $_POST['sender'];
	$reciever = $_POST['reciever'];
	$message = $_POST['message'];

	$query = "INSERT INTO `messages` (`id`, `sender_id`, `reciever_id`, `message`, `time_stamp`) VALUES (NULL, '$sender', '$reciever', '$message', CURRENT_TIMESTAMP)";

	if (mysqli_query($conn, $query)) {
		echo json_encode(array("statusCode"=>200));
	} 
	else {
		echo json_encode(array("statusCode"=>201));
	}

	mysqli_close($conn);

?>