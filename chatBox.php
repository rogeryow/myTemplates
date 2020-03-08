<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/chatBox.css">
</head>
<body>
	<?php
		require 'php/connection.php'; 
	?>
	<h2 class="text-center mt-2">Welcome to live chat!</h2>
	<div class="row">
		<div class="col-md-8 offset-md-2 chat-header">
			<img class="chat-person-img-header" src="img/person.jpg" alt="profile_pic">
			<p class="chat-person-name">Lorem Ipsum</p>
		</div>
		<div class="col-md-8 offset-md-2 chat-container">
			<div class="chat-person">
				<div class="chat-body">
					
				</div>
			</div>
		</div>
		<div class="col-md-8 offset-md-2 chat-footer">
			<div class="input-group">
				<input id="inpChat" type="text" class="form-control" placeholder="Type a message..." aria-label="chat input" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button id="btnChat" class="btn btn-light" type="button">Send</button>
				</div>
			</div>
		</div>
	</div>


<script src="js/cdn/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/chatBox.js"></script>
</body>
</html>