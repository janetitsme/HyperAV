<?php
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	require_once ('check_login.php');
	require_once('../includes/db_connection.php');

	if($_POST["staff"]=="0")
	{ 
	
		list($test, $data) = check_customer_login($connection, $_POST['email'], $_POST['pass'], $_POST['staff']);
		if ($test) {
			session_start();
			$_SESSION['customerID'] = $data['customerID'];
			$_SESSION['first_name'] = $data['cuFName'];
			$_SESSION['cuEmail'] 	= $data['cuEmail'];
			header("Location: http://mudfoot.doc.stu.mmu.ac.uk/students/bellingm/hyperav/public/loggedin.php");
			
			exit(); 
		} else { 
			$errors = $data;
		}
	}
	
	if($_POST["staff"]=="1")
	{
		list($test, $data) = check_staff_login($connection, $_POST['email'], $_POST['pass'], $_POST['staff']);
		if ($test) {
			session_start();
			$_SESSION['staffID'] 	= $data['staffID'];
			$_SESSION['first_name'] = $data['stFName'];
			$_SESSION['email'] 		= $data['stEmail'];
			$_SESSION['location']	= $data['locationID'];
			$_SESSION['staff'] 		= true;
			header("Location: http://mudfoot.doc.stu.mmu.ac.uk/students/bellingm/hyperav/public/loggedin.php");
			
			exit(); 
		} else { 
			$errors = $data;
		}
	}
mysqli_close($connection); 
}
include('login_page.php');
?>