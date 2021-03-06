<?php
require_once ("../includes/session.php");
require_once ("../includes/db_connection.php");
require_once ("../includes/functions.php");

$page_title = 'Confirm Order | HyperAV';
include ("../includes/layouts/header.php");

// If the staff somehow got here without being logged in, they are redirected to the login page
if(!isset($_SESSION['staff'])) {
	redirect_to("login_page.php");
}

// Gets the cart from the SESSION
if (isset($_SESSION['stockcart'])) {
	$stockcart = $_SESSION['stockcart'];
} else {
	// If the staff somehow got here without making an order, they are redirected to the products page
	redirect_to("supplierOrders.php");
}

// Create SQL statement from the $cart array
if (count($stockcart) > 0) {
	// First get the productIDs from the array
	$cart_keys = array_keys($stockcart);
	$query = 'SELECT * FROM hyperav_products WHERE ';
	// Build up a SELECT  statement from all the items in the array
	for ($i = 0; $i < count($stockcart); $i++) {
		if ($i != 0) {
			$query .= ' OR ';
		}
		$query .= 'prModelNo = "' . $cart_keys[$i] . '"';
	}
} else {

}

echo '<form action="confirmStockOrderSubmit.php" method="POST">';


// Send the query to the database
$results = @mysqli_query($connection, $query);
$num_rows = mysqli_num_rows($results);

// Display the results (if any)
if ($results) {
	if ($num_rows > 0) {
		$grandTotal = 0;
		$cart_quantity = array_values($stockcart);
		echo '<p><h3>Confirm your order</h3></p>';
		echo '<div style="float: left; margin-left: 10px;">';
		echo '<table class="results"><tr><td></td><td><b>Name</b></td><td><b>Price per item</b></td><td><b>Quantity</b></td><td><b>Total per item</b></td><td></td></tr>';
		while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
			$i = 1;
			echo '<tr><td><img src="images/' . $row['prName'] . '.jpg" id="product_images"></td>
				<td><a href="selected_product.php?prModelNo=' . $row['prModelNo'] . '">' . $row['prName'] . '</a></td>
				<td>&pound' . $row['prPrice'] . '</td>
				<td>' . $cart_quantity[$i] . '</td>';
				// Calculate the total cost of each item when multiplied by the quantity
				$totalPerItem = (($row['prPrice']) * is_numeric($cart_quantity[$i]));
			echo '<td>&pound' . $totalPerItem . '</td></tr>';
				$grandTotal += $totalPerItem;
				
		}
		echo '<tfoot><td colspan="4"><b>Total</b></td><td>&pound' . $grandTotal . '</td></tfoot>';
		$_SESSION['grandTotal'] = $grandTotal;
		
		echo '</table>';
		echo '</div>';
	}
}

// If the staff is making the order, provide a dropdown box
// shows only the location where staff works to confirm the location
// which shop the order delivery sent.
echo '<br />';
echo '<p><b>Please choose a location for delivery</b></p>';
if (isset($_SESSION['stEmail']) && !isset($_SESSION['staff'])) {
	$query2 = "SELECT DISTINCT loName FROM hyperav_location lo JOIN hyperav_staff st
	ON lo.locationID=st.locationID ORDER BY loName ASC";
	$results2 = @mysqli_query($connection, $query2);
	$num_rows2 = mysqli_num_rows($results2);
	if($results2) {
		if($num_rows2 > 0) {?>
			<select name="location">
				<option>Select Location</option>
				<?php while($option = mysqli_fetch_array($results2, MYSQLI_ASSOC)) { ?>
					<option><?php echo $option['loName']; ?></option>
			<?php } ?>
			</select><?php
		}
	}
}
echo '</div>';

echo '<div style="clear: both">';
echo '<p><input type="submit" value="Confirm Order"></p>';
echo '</div>';
echo '</form>';
?>