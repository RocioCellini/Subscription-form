<?php
	$dbhost = 'localhost';
	$dbuser = 'bekeu_suscripciones';
	$dbpass = 'bekeu8357';
	$dbname = 'bekeu';

	$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Ocurrio un error al conectarse al servidor mysql');
	mysql_select_db($dbname);
?>