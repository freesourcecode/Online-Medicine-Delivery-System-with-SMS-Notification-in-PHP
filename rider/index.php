<?php 
require_once("../include/initialize.php");
	 if (!isset($_SESSION['EMPID'])){
      redirect(web_root."rider/login.php");
     } 

$content='home.php';
$view = (isset($_GET['page']) && $_GET['page'] != '') ? $_GET['page'] : '';
switch ($view) {
	case '1' :
        $title="Order";	
		$content='orders/';		
		break;	
	default :
	 //    $title="Products";	
		// $content ='products/';		
	redirect("orders/");
}
require_once("theme/templates.php");
?>