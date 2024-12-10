<?php 
require_once '../include/initialize.php';
// Four steps to closing a session
// (i.e. logging out)

// 1. Find the session
@session_start();

// 2. Unset all the session variables
unset( $_SESSION['EMPID'] );
unset( $_SESSION['LNAME'] );
unset( $_SESSION['MNAME'] );
unset( $_SESSION['FNAME'] );
unset( $_SESSION['DOB'] );
unset( $_SESSION['AGE'] );
unset( $_SESSION['SEX'] ); 
unset( $_SESSION['ADDRESS'] );
unset( $_SESSION['EMAIL'] );
unset( $_SESSION['PASSWORD'] );
unset( $_SESSION['CONTACT'] );
// 4. Destroy the session
// session_destroy();
redirect(web_root."rider/login.php?logout=1");
?>