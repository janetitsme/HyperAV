<?php
require_once ("../includes/session.php");
require_once ("../includes/db_connection.php");
require_once ("../includes/functions.php");

$page_title = 'My Orders | HyperAV';
include ("../includes/layouts/header.php");

// Gets the cart from the SESSION or initialises it if it is not there
if (isset($_SESSION['stockcart'])) {
	$stockcart = $_SESSION['stockcart'];
} else {
	$stockcart = array();
}

// Create SQL statement from the $cart array
if (count($stockcart) > 0) 
{
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
}
else 
{
	// If the cart had to be created by this page, a message informs the user
	echo '<p>Your Stock Order basket is empty</p>';
	include ("../includes/layouts/footer.php");
	exit();
}	

// Send the query to the database
$results = @mysqli_query($connection, $query);
$num_rows = mysqli_num_rows($results);

// Display the results (if any)
if ($results) 
{
	if ($num_rows > 0) 
	{
		$grandTotal = 0;
		$cart_quantity = array_values($stockcart);
		echo '<p><h3>Your current order</h3></p>';
		echo '<form action="confirmStockOrder.php" method="POST">';
		echo '<table class="results"><tr><td></td><td><b>Name</b></td><td><b>Price per item</b></td><td><b>Quantity</b></td><td><b>Total per item</b></td><td></td></tr>';
		while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
			$i = 1;
			echo '<tr><td><img src="images/' . $row['prName'] . '.jpg" id="product_images"></td>
				<td><a href="selected_product.php?prModelNo=' . $row['prModelNo'] . '">' . $row['prName'] . '</a></td>
				<td>&pound' . $row['prPrice'] . '</td>
				<td><input type="number" value="' . $cart_quantity[$i] . '" style="width: 3em;" min="0"></td>';
				$totalPerItem = (($row['prPrice']) * is_numeric($cart_quantity[$i]));
			echo '<td>&pound' . $totalPerItem . '</td>
				<td><form action="updateSupplierOrder.php" method="POST">
				<input type="hidden" name="prModelNo" value="' . $row['prModelNo'] . '">
				<input type="submit" value="Update"></form></td></tr>';
				$grandTotal += $totalPerItem;
		}
		echo '<tfoot><td colspan="4"><b>Total</b></td><td>&pound' . $grandTotal . '</td></tfoot>';
		echo '</table>';
		echo '<input type="submit" value="Submit Order">';
		echo '</form>';
	}
}
?>




<?php
	include ("../includes/layouts/footer.php");
?>