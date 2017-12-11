<?php
	require_once ("../includes/session.php");
	require_once ("../includes/db_connection.php");
	require_once ("../includes/functions.php");

	$page_title = 'Edit Customer Profile';
	include ("../includes/layouts/header.php");
/*	
	if(!empty($errors))
	{
		echo '<h3 class="error">Error</h3> <p class="error"> The following error(s) occurred;</p>';
		foreach ($errors as $message)
		{ 
			echo "<p class='error'>$message</p>";
		}
	echo '<p>Please try again.</p>';
	} 
	?>

<h3>Search Customer and Edit </h3>

 <html>
	<body>
		 <form action="" method="GET">
		 <div>
		 <p><strong>Last Name: *</strong> <input type="text" name="lastname" /></p>
		 <p><strong>Postcode: *</strong> <input type="text" name="postcode" /></p>
		 <p>* required</p>
		 <input type="submit" name="submit" value="Edit Customer Details">
		 </div>
		 </form> 
	</body>
 </html>
 */

	$last = htmlspecialchars($_GET['lastname']);
	$post=htmlspecialchars($_GET['postcode']);
	
	// check that firstname/lastname fields are both filled in
 if ($last == '' || $post == '')
 {
	// generate error message
	$error = 'ERROR: Please fill in all required fields!';
 }
 
	$query = 'SELECT * FROM hyperav_customer WHERE cuLName = "' . $last . '" AND cuPostcode="' . $post . '";';
	$results=@mysqli_query($connection,$query);
	$num_rows = mysqli_num_rows($results);
	echo '<p>Num Rows: ' . $num_rows . '</p>';
	
	echo "Query: ". $query;
	
	if ($results) {

		if ($num_rows > 0) {

				while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) 
				{
					
					echo '<form name="update" method="POST" action="updateCustomer.php">';	
					$id=$row['customerID'];	
					echo '<tr><td><input type="hidden" name="customerID" value=' . $row['customerID'] . '></td></tr></br>';
 					echo '<tr><td><input type="text" name="cuFName" value="' . $row['cuFName'] . '"></td></tr></br>';
					echo '<tr><td><input type="text" name="cuLName" value="' . $row['cuLName'] . '"></td></tr></br>';
					echo '<tr><td><textarea name="address1" rows="5" cols="30">' . $row['cuAddress1'] . '</textarea></td></tr></br>';
					echo '<tr><td><textarea name="address2" rows="5" cols="30">' . $row['cuAddress2'] . '</textarea></td></tr></br>';
					echo '<tr><td><input type="text" name="cuTown" value="' . $row['cuTown'] . '"></td></tr></br>';
					echo '<tr><td><input type="text" name="cuPostcode" value="' . $row['cuPostcode'] . '"></td></tr></br>';
					echo '<tr><td><input type="text" name="cuTelephone" value="' . $row['cuTelephone'] . '"></td></tr></br>';
					echo '<tr><td><input type="email" name="cuEmail" value="' . $row['cuEmail'] . '"></td></tr>';
					//echo '<tr><td>&pound<input type="password" name="cuPassword" value="' . $row['cuPassword']  . '"></td></tr>';
					echo '<tr><td></td></tr>';
					echo '	<input type="submit" value="Save"></form></td>';
					
					echo '</tr></table></div>';
					//mysqli_free_result($result);
				}

			} else {
				echo '<p class="error">This customer does not exist.</p>';
				echo '<p>' . mysqli_error($connection) . '</p>';
			}
		} else {
			echo '<h3 class="error">System Error</h3>
			<p class="error">customer information could not be retrieved.</p>';
			echo '<p>' . mysqli_error($connection) . '</p>';
		}	

	
	mysqli_close($connection);

	include ("../includes/layouts/footer.php");
?>