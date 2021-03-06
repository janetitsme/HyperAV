<?php
	require_once ("../includes/session.php");
	require_once ("../includes/db_connection.php");
	require_once ("../includes/functions.php");

	
	
	$page_title = 'Reports';
	include ("../includes/layouts/header.php");
?>

<?php



$query= 'SELECT * 
FROM 	hyperav_stockorderdetails sod JOIN hyperav_stock st ON sod.stockID = st.stockID JOIN hyperav_products pr ON st.prModelNo = pr.prModelNo JOIN hyperav_supplier su ON sod.supplierID = su.supplierID
WHERE 	sod.stDeliveryDate IS NULL';

$results = @mysqli_query($connection, $query);
	$num_rows = mysqli_num_rows($results);
	
	if ($results) {
		if ($num_rows > 0) {
				echo '<table>
				<tr> <td> <b>Supplier Name</b> </td> <td> <b>Product Name</b> </td> <td> <b>Order Quantity</b> </td> </td> </tr>';

				while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
					echo '<tr> <td>' . $row['suName'] .  '</td><td>' . $row['prName'] . '</td><td align="right">' . $row['stOrderQuantity'] . '</td></tr>';
						
				}
				echo '</table>';

				mysqli_free_result($results);
			} else {
				echo '<p class="error">There are no results.</p>';
			}
		} else {
			echo '<h3 class="error">System Error</h3>
			<p class="error">Report could not be retrieved.</p>';
			
				}
		mysqli_close($connection);
		
	?>
	
	<?php
	include ("../includes/layouts/footer.php");
?>