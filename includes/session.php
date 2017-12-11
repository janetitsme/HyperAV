<?php
session_start();

if (basename(__FILE__) == 'logout.php') {
	$_SESSION=array();
	session_destroy();
	setcookie ('PHPSESSID', null);
}

if (isset($_SESSION['first_name'])) {
	echo "Hello {$_SESSION['first_name']}!";
} else {
	echo "Hello Stranger!";
}
?>