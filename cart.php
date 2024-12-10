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
            
                         <table  class="table table-condensed" id="table" >
                         <thead> 
                          <tr class="cart_menu"> 
                             <td  >Product</td>
                             <td >Product Name</td>
                             <td  width="15%" >Estimated Price</td>
                             <td  width="15%" >Quantity</td> 
                             <td  width="15%" >Quantity Prescribed</td> 
                             <td  width="15%" >Total</td>  
                          </tr>
                         </thead>  
                          
                             <?php



                              if (!empty($_SESSION['gcCart'])){ 

                                echo '<script>totalprice()</script>';

                                  $count_cart = count($_SESSION['gcCart']);

                                for ($i=0; $i < $count_cart  ; $i++) { 
 
                                       $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                                                 WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  and p.`PROID` = '".@$_SESSION['gcCart'][$i]['productid']."' ORDER BY p.CATEGID DESC";
                                       $mydb->setQuery($query);
                                      $cur = $mydb->loadResultList();
                                
                                
                                 foreach ($cur as $result) {

                                ?>
                                <tr>
                                  <td>  
                                    <img src="<?php echo web_root. 'admin/products/'.$result->IMAGES; ?>"  onload="  totalprice() " width="50px" height="50px"> 
                                  <br/> 
                                        <?php    
                                          
                                              
                                            if (isset($_SESSION['CUSID'])){  

                                              echo ' <a href="'.web_root. 'customer/controller.php?action=addwish&proid='.$result->PROID.'" title="Add to wishlist">Add to wishlist</a>
             ';
                                           
                                             }else{
                                               echo   '<a href="#" title="Add to wishlist" class="proid"  data-target="#smyModal" data-toggle="modal" data-id="'.  $result->PROID.'">Add to wishlist</a>
             ';
                                            } 
                                  



                                          ?>




                                 </td>
                                  <td>  
                                    <?php echo  $result->PRONAME ; ?>
                                  </td>
                                  <td>
                                    <input type="hidden"    id ="PROPRICE<?php echo $result->PROID;  ?>" name="PROPRICE<?php echo $result->PROID; ?>" value="<?php echo  $result->PRODISPRICE ; ?>" >
                                     
                                  &#8369  <?php echo  $result->PRODISPRICE ; ?>
                                  </td>
                                  <td class="input-group custom-search-form" >
                                       <input type="hidden" maxlength="3" class="form-control input-sm"  autocomplete="off"  id ="ORIGQTY<?php echo $result->PROID;  ?>" name="ORIGQTY<?php echo $result->PROID; ?>" value="<?php echo $result->PROQTY; ?>"   placeholder="Search for...">
                                        
                                        <input type="number" style="margin-top: 15px;" maxlength="3" min="1" max="<?php echo   $_SESSION['gcCart'][$i]['bgo'] ; ?>" oninput="this.value = Math.abs(this.value)" data-id="<?php echo $result->PROID;  ?>" class="QTY form-control input-sm"  autocomplete="off"  id ="QTY<?php echo $result->PROID;  ?>" name="QTY<?php echo $result->PROID; ?>" value="<?php echo $_SESSION['gcCart'][$i]['qty']; ?>"   placeholder="Search for...">
                                        <span class="input-group-btn">
                                                <a style="margin-top: 15px" title="Remove Item"  class="btn btn-danger btn-sm" id="btnsearch" name="btnsearch" href="cart/controller.php?action=delete&id=<?php echo $result->PROID; ?>">
                                                <i class="fa fa-trash-o"></i>
                                            </a>
                                        </span>
                                        </td>
                                        <td>
                                          <input type="hidden" id ="PRESCRIBED<?php echo $_SESSION['gcCart'][$i]['qqty'] ; ?>" name="PRESCRIBED<?php echo $_SESSION['gcCart'][$i]['qqty'] ; ?>" value="<?php echo  $_SESSION['gcCart'][$i]['qqty'] ; ?>" >
                                          <?php echo   $_SESSION['gcCart'][$i]['qqty'] ; ?></td>
                                      
                                        <input type="hidden"    id ="TOT<?php echo $result->PROID;  ?>" name="TOT<?php echo $result->PROID; ?>" value="<?php echo  $result->PRODISPRICE ; ?>" >
                                   
                                     <td> &#8369<output id="Osubtot<?php echo $result->PROID ?>"><?php echo   $_SESSION['gcCart'][$i]['price'] ; ?></output></td>
                                </tr>
         
                            <?php  
                                 }
                               }
                               }else{ 
                                  echo "<h1>There is no item in the cart.</h1>";
                               } 
                            ?>  
                                
                      </table> 

     
                        <h3 align="right">Estimated Total  &#8369<span id="sum">0</span></h3> 
    </div>
  </div>  
 
</section>
<section id="do_action">
    <div class="container">
      <div class="heading">
        <h3>What would you like to do next?</h3>
      </div>
      <div class="row">
     <form action="index.php?q=orderdetails" method="post">
      <?php
      if(isset($_SESSION['CUSID'])){
      ?>
      <div class="form-group" style="margin-left: 80%">
                   <center><label>Select Location of Delivery Fee in Hinigaran, Binalbagan, Himamaylan</label><center>
                      <div class="col-md-12">
                        <select class="form-control select2" name="location" id="deliveryfee" required>
                                              <?php 
                                            $query = "SELECT * FROM `tbllocation` ";
                                            $mydb->setQuery($query);
                                            $cur = $mydb->loadResultList();

                                            foreach ($cur as $result) {  
                                              echo '<option value='.$result->DELPRICE.'>'.$result->BRGY.' '.$result->PLACE.' </option>';
                                            }
                                            ?>
                      </select>
                      </div>
                      <?php
                    }

                    ?>
                    </div>
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