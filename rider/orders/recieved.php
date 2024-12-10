<?php
require_once("../../include/initialize.php");

$summary = New Summary();
			$summary->ORDEREDSTATS = "Received";
			$summary->update($_GET['id']);


// 			$query = "SELECT * FROM `tblcustomer` WHERE CUSTOMERID=".$_GET['cust'];
// 			$mydb->setQuery($query);
// 			$cur = $mydb->loadSingleResult();
// 			$num = $cur->PHONE;


// $Messageout = new Messageout();
// $Messageout->MessageTo = $num;
// $Messageout->MessageText = 'We will deliver your order today! Pls prepare exact amount. For queries, pls contact. +639164762692. Thank you! ';
// $Messageout->create($_GET['id']);

?>
<script>
	window.location = 'index.php';
</script>