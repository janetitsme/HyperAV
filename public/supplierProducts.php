<?php
	require_once ("../includes/session.php");
	require_once ("../includes/db_connection.php");
	require_once ("../includes/functions.php");

	$page_title = 'Supplier Products | HyperAV';
	include ("../includes/layouts/header.php");
?>

<h3>Supplier Products</h3>


<!-- Populates the drop-down box where the customer can select from the different suppliers
	if one of the supplier is selected, it reloads the page with the selected option as a GET request
	so that the page only shows the selected supplier's products  -->
<?php 
	$query1 = "SELECT * FROM hyperav_supplier ORDER BY suName";
	$results1 = @mysqli_query($connection, $query1);
	$num_rows1 = mysqli_num_rows($results1);
	if($results1) {
		if($num_rows1 > 0) {?>
		<form action="supplierProducts.php" method="GET">
			<select name=suName onchange="this.form.submit()">
				<option>Select Category</option>
				<?php while($option = mysqli_fetch_array($results1, MYSQLI_ASSOC)) { ?>
				
					<option><?php echo $option['suName']; ?></option>
			<?php } ?>
			
			</select><noscript><INPUT type="submit" value="Select" name=suName></noscript> 
		</form><?php
		}
	}

	// Checks if we have come from the supplier drop down selector
	if(isset($_GET['suName'])) {
		$query = 'SELECT pr.prModelNo, prName, prDescription, prPrice, prCategory FROM hyperav_products pr JOIN  
		hyperav_stock st  ON pr.prModelNo = st.prModelNo
		JOIN hyperav_stockorderdetails stor ON st.stockID =stor.stockID 
		JOIN hyperav_supplier su ON su.supplierID=stor.supplierID
		WHERE su.suName = "' . $_GET['suName'].'"';
		
	} else {
		$query = "SELECT * FROM hyperav_products";		
	}

	$results = @mysqli_query($connection, $query);
	$num_rows = mysqli_num_rows($results);
	if ($results) {
		if ($num_rows > 0) {

			// If there are results, they are displayed in a table
			echo '<table>
			<tr><td></td><td><b>Name</b></td><td><b>Description</b></td><td><b>Price</b></td><td><b>Category</b></td><td></td></tr>';

			while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
				echo '<tr><td><img src="images/' . $row['prName'] . '.jpg" id="product_images"></td><td><a href="selected_product.php?prModelNo=' . $row['prModelNo'] . '">' . $row['prName'] . '</a></td><td>' . $row['prDescription'] . '</td><td>&pound' . $row['prPrice'] . '</td><td>' . $row['prCategory'] . '</td><td>
					<form action="supplierAddToOrder.php" method="POST">
					<input type="hidden" name="prModelNo" value=' . $row['prModelNo'] . '>
					<input type="submit" value="Buy"></form></td></tr>';
			}
			echo '</table>';

		} else {
			// If the system was able to query the database but returned no results, we end up here
			echo '<p class="error">There are no products.</p>';
		}
	} else {
		// If there wasa a problem with the database query itself, we end up here.
		echo '<h3 class="error">System Error</h3>
		<p class="error">Product data could not be retrieved.</p>';
		//DEBUGGING
		 echo '<p class="error">'.mysqli_error($connection).'</p>';
		//DEBUGGING
		 echo '<p class="error">Query:'. $query . '</p>';
	}

	// Clean up variables and close the connection
	mysqli_free_result($results);
	mysqli_free_result($results1);
	mysqli_close($connection);
?>


<?php
	include ("../includes/layouts/footer.php");
?>