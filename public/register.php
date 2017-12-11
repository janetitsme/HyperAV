<?php
require_once("../includes/session.php");
require_once("../includes/functions.php");
$page_title='Customer Registration';
include('../includes/layouts/header.php');

if($_SERVER["REQUEST_METHOD"]=="POST")
{
	require_once('../includes/db_connection.php');
	$errors=array();
	if(empty($_POST['first_name']))
	{
		$errors[]='You forgot to enter your first name. ';
	}
	else
	{	
		$cuFName=mysqli_real_escape_string($connection,trim($_POST['first_name']));
	}
	
	
	if(empty($_POST['last_name']))
	{
		$errors[]='You forgot to enter your last name. ';
	}
	else
	{	
		$cuLName=mysqli_real_escape_string($connection,trim($_POST['last_name']));
	}	
	
	if(empty($_POST['address1']))
	{
		$errors[]='You forgot to enter first line of your address. ';
	}
	else
	{	
		$cuAddress1=mysqli_real_escape_string($connection,trim($_POST['address1']));
	}	
	
	$cuAddress2=mysqli_real_escape_string($connection,trim($_POST['address2']));
		
	if(empty($_POST['town']))
	{
		$errors[]='You forgot to enter your Town. ';
	}
	else
	{	
		$cuTown=mysqli_real_escape_string($connection,trim($_POST['town']));
	}	
	if(empty($_POST['postcode']))
	{
		$errors[]='You forgot to enter your PostCode. ';
	}
	else
	{	
		$cuPostcode=mysqli_real_escape_string($connection,trim($_POST['postcode']));
	}	
	if(empty($_POST['telephone']))
	{
		$errors[]='You forgot to enter your Telephone number. ';
	}
	else
	{	
		$cuTelephone=mysqli_real_escape_string($connection,trim($_POST['telephone']));
	}	
	
	if(empty($_POST['email']))
	{
		$errors[]='You forgot to enter your email address. ';
	}
	else
	{	
		$cuEmail=mysqli_real_escape_string($connection,trim($_POST['email']));
	}
	
	if(!empty($_POST['pass1']))
	{
		if($_POST['pass1'] != $_POST['pass2'])
		{
		$errors[]='Your passwords did not match. ';
		}
		else 
		{	
			$cuPassword=mysqli_real_escape_string($connection,trim($_POST['pass1']));
		}
	}
	else
	{
		$errors[]='You forgot to enter your password.';
	}	
	if(empty($errors))
	{
		$query="INSERT INTO hyperav_customer(cuFName, cuLName, cuAddress1,
				cuAddress2, cuTown, cuPostcode, cuTelephone,cuEmail,cuPassword) VALUES
				('$cuFName','$cuLName','$cuAddress1','$cuAddress2','$cuTown','$cuPostcode',
				'$cuTelephone','$cuEmail',SHA1('$cuPassword'))";
		$results=@mysqli_query($connection,$query);
		//echo $query;
		//echo '<p class="error">' . mysqli_error($connection) . '</p>';

		if($results)
		{
			echo '<h3>Thank you!</h3> <p>You have successfully registered.</p>';	
		} 
		else
		{ 			
			echo '<h3 class="error">System Error</h3>
			<p class="error">Registration failed because of a system error:</p>'; 
		} 
	mysqli_close($connection);
	
	include ('../includes/layouts/footer.php'); 
	exit();
} 
else 
{ 
	echo '<h3 class="error">Error</h3><p class="error">The following error(s) occurred:</p>';
		foreach ($errors as $message)
		{ 
			echo "<p class='error'>$message</p>";
		}
	echo '<p>Please try again.</p>';
} 
mysqli_close($connection);
} 
?>


<h3>Customer Registration</h3>
<form action="register.php" method="post">
	<p>First Name: <br><input type="text" name="first_name" size="25" 
	maxlength="25" value="<?php if(isset($_POST['first_name'])) 
	echo $_POST['first_name']; ?>" /></p>
	<p>Last Name: <br><input type="text"  name="last_name" size="50" 
	maxlength="50" value="<?php if (isset($_POST['last_name'])) 
	echo $_POST['last_name']; ?>" /></p>
	<p>Address1: <br><input type="text" align="right" name="address1" size="50" 
	maxlength="50" value="<?php if (isset($_POST['address1'])) 
	echo $_POST['address1']; ?>" /></p>
	<p>Address2: <br><input type="text" name="address2" size="50" 
	maxlength="50" value="<?php if (isset($_POST['address2'])) 
	echo $_POST['address2']; ?>" /></p>
	<p>City / Town: <br><input type="text" name="town" size="15" 
	maxlength="15" value="<?php if (isset($_POST['town'])) 
	echo $_POST['town']; ?>" /></p>
	<p>PostCode: <br><input type="text" name="postcode" size="15" 
	maxlength="15" value="<?php if (isset($_POST['postcode'])) 
	echo $_POST['postcode']; ?>" /></p>
	<p>Telephone: <br><input type="text"  name="telephone" size="11" 
	maxlength="11" value="<?php if (isset($_POST['telephone'])) 
	echo $_POST['telephone']; ?>" /></p>
	<p>Email Address: <br><input type="text" name="email" size="50" 
	maxlength="50" value="<?php if (isset($_POST['email'])) 
	echo $_POST['email']; ?>"  /> </p>
	<p>Password: <br><input type="password" name="pass1" size="50" 
	maxlength="50" /></p>
	<p>Confirm Password: <br><input type="password"  name="pass2" 
	size="50" maxlength="50" /></p>
	<p><input type="submit" name="submit" value="Register" /></p>
</form>
