<?php 

if (!isset($_SESSION['CUSID'])){
redirect(web_root."index.php");
}
 
$customerid =$_SESSION['CUSID'];
$customer = New Customer();
$singlecustomer = $customer->single_customer($customerid);

  ?>
 
<?php 
  $autonumber = New Autonumber();
  $res = $autonumber->set_autonumber('ordernumber'); 
?>


<form onsubmit="return orderfilter()" action="customer/controller.php?action=processorder" method="post" enctype="multipart/form-data">   
<section id="cart_items">
    <div class="container">
      <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li class="active">Order Details</li>
        </ol>
      </div>
      <div class="row">
    <div class="col-md-6 pull-left">
      <div class="col-md-2 col-lg-2 col-sm-2" style="float:left">
        Name:
      </div>
      <div class="col-md-8 col-lg-10 col-sm-3" style="float:left">
        <?php echo $singlecustomer->FNAME .' '.$singlecustomer->LNAME; ?>
      </div>
       <div class="col-md-2 col-lg-2 col-sm-2" style="float:left">
        Address:
      </div>
      <div class="col-md-8 col-lg-10 col-sm-3" style="float:left">
        <?php echo $singlecustomer->HOMEADDRESS; ?>
      </div>
    </div>

    <div class="col-md-6 pull-right">
    <div class="col-md-10 col-lg-12 col-sm-8">
    <input type="hidden" value="<?php echo $res->AUTO; ?>" id="ORDEREDNUM" name="ORDEREDNUM">
      Order Number :<?php echo $res->AUTO; ?>
    </div>
    </div>
 </div>
      <div class="table-responsive cart_info"> 
 
              <table class="table table-condensed" id="table">
                <thead >
                <tr class="cart_menu"> 
                  <th style="width:12%; align:center; ">Product Image</th>
                  <th >Product Name</th>
                  <th style="width:15%; align:center; ">Quantity</th>
                  <th style="width:15%; align:center; ">Qty Prescribed</th>
                  <th style="width:15%; align:center; ">Estimated Price</th>
                   <th style="width:15%; align:center; ">Upload Prescription</th>
                  <th style="width:15%; align:center; ">Total</th>
                  </tr>
                </thead>
                <tbody>    
                       
              <?php

              $tot = 0;
                if (!empty($_SESSION['gcCart'])){ 
                      $count_cart = @count($_SESSION['gcCart']);
                      for ($i=0; $i < $count_cart  ; $i++) { 

                      $query = "SELECT p.PROID,p.CATEGID, pr.PRODISPRICE,p.PRONAME,p.IMAGES FROM `tblproduct` p, `tblpromopro` pr
                           WHERE pr.PROID = p.PROID AND p.PROID='".$_SESSION['gcCart'][$i]['productid']."' ORDER BY p.`CATEGID` DESC";
                        $mydb->setQuery($query);
                        $cur = $mydb->loadResultList();
                        foreach ($cur as $result){ 
              ?>

                         <tr>
                         <!-- <td></td> -->
                          <td><img src="admin/products/<?php echo $result->IMAGES ?>"  width="50px" height="50px"></td>
                          <td><?php echo $result->PRONAME ; ?></td>
                          
                          <td align="center"><?php echo $_SESSION['gcCart'][$i]['qty']; ?></td>
                          <td><?php echo $_SESSION['gcCart'][$i]['qqty']; ?></td>
                          <td>&#8369 <?php echo  $result->PRODISPRICE ?></td>
                          <?php
                          if($result->CATEGID==8){
                            ?>
                          <td><input type="file" name="image" id="image" required=""></td>
                          <?php
                        }else{
                          ?>
                          <td><input type="hidden" name="image" value="" id="image" required=""></td>
                          <?php
                        }
                          ?>
                          <td>&#8369 <output><?php echo $_SESSION['gcCart'][$i]['price']?></output></td>
                        </tr>
              <?php
              $tot +=$_SESSION['gcCart'][$i]['price'];
                        }

                      }
                }
              ?>
            

                </tbody>
                
              </table>  
                <div class="pull-right">
                  <p align="right">
                    <input type="hidden" value="<?php
                  $total=  ($tot+$_POST['location']);
                   echo $total; ?>" name="price">
                   <input type="hidden" value="<?php echo $_POST['location']; ?>" name="PLACE">
                  <div > Total Price : &#8369 <span id="sum">0.00</span></div>
                   <div > Delivery Fee : &#8369 <span id="deliveryfee"><?php
                   if(isset($_POST['location'])){
                    echo $_POST['location'];
                  }else{
                    echo "";
                  }
                     ?></span></div>
                   <div> Overall Price : &#8369 <span><?php if(isset($_POST['location'])){
                  $total=  ($tot+$_POST['location']);
                   echo $total;
                   }else{
                    echo "";
                  }
                    ?></span></div>
                   <input type="hidden" name="alltot" id="alltot" value="<?php echo $total ;?>"/>
                  </p>  
                </div>
 
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
         <div class="row">
                   <div class="col-md-7">
              <div class="form-group">
                  <label> Payment Method : </label> 
                  <div class="radio" >
                      <label >
                          <input type="radio"  class="paymethod" name="paymethod" id="deliveryfee" value="Cash on Delivery" checked="true" data-toggle="collapse"  data-parent="#accordion" data-target="#collapseOne" >Cash on Delivery 
                        
                      </label>
                  </div> 
              </div> 
                      
                        <input type="hidden"  placeholder="HH-MM-AM/PM"  id="CLAIMEDDATE" name="CLAIMEDDATE" value="<?php echo date('y-m-d h:i:s') ?>"  class="form-control"/>

                   </div>  
    
             
         
              </div>
<br/>
              <div class="row">
                <div class="col-md-6">
                    <a href="index.php?q=cart" class="btn btn-success pull-left"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;<strong>View Cart</strong></a>
                   </div>
                  <div class="col-md-6">
                      <button type="submit" class="btn btn-info  pull-right " name="btn" id="btn" onclick="return validatedate();"   /> Submit Order <span class="glyphicon glyphicon-chevron-right"></span></button> 
                </div>  
              </div>
             
      </div>
    </div>
  </section><!--/#do_action-->
</form>