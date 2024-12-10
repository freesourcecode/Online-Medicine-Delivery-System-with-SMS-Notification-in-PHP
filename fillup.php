  <section id="cart_items">
    <div class="container">
      <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">Cart List</li>
        </ol>
      </div>
      <div class="table-responsive cart_info"> 
        <?php  

  // if (!isset($_SESSION['USERID'])){
  //     redirect("index.php"); 
check_message();  
 
?>
            
                          

     <form class="form-horizontal span6" name=""  action="login.php" method="POST">
      <br>
<div class="form-group">
  <div class="col-md-12">
    <label class="col-md-6 control-label" for="U_PASS">How many quantity(bottles/tablet/capsule) of medicine prescribed by your doctor?</label>
      <div class="col-md-2">
        <input name="qty" id="U_PASS" type="number" min="0" class="form-control input-sm">
        </div>
    </div>
</div>

<div class="form-group">
  <div class="col-md-12">
    <label class="col-md-4 control-label" for="FIRSTNAME"> </label>
      <div class="col-md-6 pull-right">
        <button type="submit" id="modalLogin" name="modalLogin" class="btn btn-success"><span class="glyphicon glyphicon-log-in "></span>Login</button> 
          <button class="btn btn-danger" data-dismiss="modal" type="button">Close</button> 
            </div>
         </div>
      </div>
    </form> 
    </div>
  </div>  
 
</section>
<section id="do_action">
    <div class="container">
      <div class="heading">
        <h3>What would you like to do next?</h3>
        <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
      </div>
      <div class="row">
     <form action="index.php?q=orderdetails" method="post">
   <a href="index.php?q=product" class="btn btn-default check_out pull-left ">
   <i class="fa fa-arrow-left fa-fw"></i>
   Add New Order
   </a>

     <?php    
  
                     $countcart =isset($_SESSION['gcCart'])? count($_SESSION['gcCart']) : "0";
                   if ($countcart > 0){
  
                  if (isset($_SESSION['CUSID'])){  
               
                    echo '<button type="submit"  name="proceed" id="proceed" class="btn btn-default check_out btn-pup pull-right">
                            Proceed And Checkout
                            <i class="fa  fa-arrow-right fa-fw"></i>
                            </button>';
                 
                   }else{
                     echo   '<a data-target="#smyModal" data-toggle="modal" class="btn btn-default check_out signup pull-right" href="">
                              Proceed And Checkout
                              <i class="fa  fa-arrow-right fa-fw"></i>
                              </a>';
                  } 
                }



                ?>
 </form>
      </div>
    </div>
  </section><!--/#do_action-->