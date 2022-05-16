<?php
	$DBServer = 'localhost'; 
	$DBUser = 'admin';
	$DBPass = 'admin8353';
	$DBName = 'bekeu-subscription';

	$conn = new mysqli($DBServer, $DBUser, $DBPass, $DBName);

	if ($conn->connect_error) {
	trigger_error('Database connection failed: '  . $conn->connect_error, E_USER_ERROR);
	} 
?>
