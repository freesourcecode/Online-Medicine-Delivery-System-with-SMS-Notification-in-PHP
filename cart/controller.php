<?php
require_once ("../include/initialize.php");
  

$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;
	
	case 'delete' :
	doDelete();
	break;

	
 
	}
   
	function doInsert(){
	 global $mydb;

   if(isset($_POST['btnorder'])){
    $pid= $_POST['PROID'];
    $price= $_POST['PROPRICE'];
    $CATEGID = $_POST['CATEGID'];
    //if($_POST)
    $qqty= $_POST['qty'];
    if($_POST['bgo']==0){
    	$bgo= $_POST['qty'];
    }else{
    $bgo= $_POST['bgo'];
	}	

    $sql = "SELECT * FROM `tblproduct` WHERE `PROID` ='" . $pid. "'";
    $mydb->setQuery($sql);
    $result = $mydb->loadResultList();

    foreach ($result as $row) {
    	# code...
    	$tot = floatval($price) * 1;
				$qty = 1;
	  
			addtocart($pid,$qty,$qqty,$tot,$bgo,$CATEGID); 
			redirect(web_root."index.php?q=cart");
    }
  }
}
		 

 

	function doEdit(){

	 global $mydb;
  if (isset($_POST['UPPROID'])){   
  

     $max=count($_SESSION['gcCart']);
    for($i=0;$i<$max;$i++){

      $pid=$_SESSION['gcCart'][$i]['productid'];
 
       $qty=intval(isset($_GET['QTY'.$pid]) ? $_GET['QTY'.$_POST['UPPROID']] : "");
       $price=(double)(isset($_GET['TOT'.$pid]) ? $_GET['TOT'.$_POST['UPPROID']] : "");
 
       $sql = "SELECT * FROM `tblproduct` WHERE `PROID` =" . $pid;
       $mydb->setQuery($sql);
	    $result = $mydb->loadResultList();

	    foreach ($result as $row) {
 
       		if($qty>0  && $qty<=999){
		      	// la pa natapos... price

		        $_SESSION['gcCart'][$i]['qty']=$qty;
		        $_SESSION['gcCart'][$i]['price']=$price;
		      }

       	}
       } 
     }

     
   }
   
 

	function doDelete(){
	 
 
		if(isset($_GET['id'])) {
			removetocart($_GET['id']);
			$countcart =isset($_SESSION['gcCart'])? count($_SESSION['gcCart']) : "0";
			if($countcart==0){
				
			unset($_SESSION['orderdetails']);
			unset($_SESSION['gcCart']);
			} 
				message("1 item has been removed in the cart.","success");
				redirect(web_root."index.php?q=cart");
		  
 		}
	
	    }

	
?>