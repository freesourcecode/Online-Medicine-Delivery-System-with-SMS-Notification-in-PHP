<?php
require_once ("../../include/initialize.php");
	
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

	case 'photos' :
	doupdateimage();
	break;

	}

   
function doInsert(){
	if(isset($_POST['save'])){
		
	 

			$errofile = $_FILES['image']['error'];
			$type = $_FILES['image']['type'];
			$temp = $_FILES['image']['tmp_name'];
			$myfile =$_FILES['image']['name'];
		 	$location="uploaded_images/".$myfile;


		if ( $errofile > 0) {
				message("No Image Selected!", "error");
				redirect("index.php?view=add");
		}else{
	 
				@$file=$_FILES['image']['tmp_name'];
				@$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
				@$image_name= addslashes($_FILES['image']['name']); 
				@$image_size= getimagesize($_FILES['image']['tmp_name']);

			if ($image_size==FALSE || $type=='video/wmv') {
				message("Uploaded file is not an image!", "error");
				redirect("index.php?view=add");
			}else{
					//uploading the file
					move_uploaded_file($temp,"uploaded_images/" . $myfile);
		 	
					if ($_POST['FNAME'] == "" OR $_POST['LNAME'] == "") {
					$messageStats = false;
					message("All fields are required!","error");
					redirect('index.php?view=add');
					}else{	

  				 	 	$employee = New Employee(); 
  		
  						$employee->IMAGES 	 = $location; 
						$employee->LNAME 	 = $_POST['LNAME']; 
						$employee->FNAME 	 = $_POST['FNAME'];
						$employee->MNAME 	 = $_POST['MNAME'];
						$employee->DOB	     = $_POST['DOB'];
						$employee->AGE		 = $_POST['AGE'];
						$employee->SEX       = $_POST['SEX']; 
						$employee->ADDRESS	 = $_POST['ADDRESS']; 
						$employee->EMAIL	 = $_POST['EMAIL'];
						$employee->CONTACT	 = $_POST['CONTACT'];
						
						$employee->create();
						// }
						message("New employee created successfully!", "success");
						redirect("index.php");
						}
							
					}
			}
			 
		  }


	  }
 
 
	function doEdit(){
		
		if(isset($_POST['save'])){
 
						$employee = New Employee();
						$employee->LNAME 	 = $_POST['LNAME']; 
						$employee->FNAME 	 = $_POST['FNAME'];
						$employee->MNAME 	 = $_POST['MNAME'];
						$employee->DOB	     = $_POST['DOB'];
						$employee->AGE		 = $_POST['AGE'];
						$employee->SEX       = $_POST['SEX']; 
						$employee->ADDRESS	 = $_POST['ADDRESS']; 
						$employee->EMAIL	 = $_POST['EMAIL'];
						$employee->CONTACT	 = $_POST['CONTACT'];  
						$employee->update($_POST['EMPID']);
  

			message("Employee has been updated!", "success");
			redirect("index.php");
	  }
	redirect("index.php"); 
}

	function doDelete(){

 
 

		if (isset($_POST['selector'])==''){
			message("Select the records first before you delete!","error");
			redirect('index.php');
			}else{

			$id = $_POST['selector'];
			$key = count($id);

			for($i=0;$i<$key;$i++){ 

			$employee = New employee();
			$employee->delete($id[$i]);
 

			$stockin = New StockIn();
			$stockin->delete($id[$i]);

			$promo = New Promo();   
			$promo->delete($id[$i]);

			message("employee has been Deleted!","info");
			redirect('index.php');

			}
		}

	}
		 
	function doupdateimage(){
 
			$errofile = $_FILES['photo']['error'];
			$type = $_FILES['photo']['type'];
			$temp = $_FILES['photo']['tmp_name'];
			$myfile =$_FILES['photo']['name'];
		 	$location="uploaded_images/".$myfile;


		if ( $errofile > 0) {
				message("No Image Selected!", "error");
				redirect("index.php?view=view&id=". $_POST['empid']);
		}else{
	 
				@$file=$_FILES['photo']['tmp_name'];
				@$image= addslashes(file_get_contents($_FILES['photo']['tmp_name']));
				@$image_name= addslashes($_FILES['photo']['name']); 
				@$image_size= getimagesize($_FILES['photo']['tmp_name']);

			if ($image_size==FALSE ) {
				message("Uploaded file is not an image!", "error");
				redirect("index.php?view=view&id=". $_POST['empid']);
			}else{
					//uploading the file
					move_uploaded_file($temp,"uploaded_images/" . $myfile);
		 	
					 

						$employee = New Employee();
						$employee->PICTURE 			= $location;
						$employee->update($_POST['empid']); 

						redirect("index.php");
						 
							
					}
			}
			 
		}



	
?>