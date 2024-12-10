
  
  <section>
    <div class="container">
      <div class="row">
        <div class="col-sm-3">
         <?php include 'sidebar.php'; ?>
          </div><!--/category-productsr-->  
        
        <div class="col-sm-9 padding-right">
          <div class="features_items"><!--features_items-->
            <h2 class="title text-center">Products</h2>
              <?php
             if(isset($_POST['search'])) { 
                $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                          WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 
                AND ( `CATEGORIES` LIKE '%{$_POST['search']}%' OR `PRONAME` LIKE '%{$_POST['search']}%' or `PROQTY` LIKE '%{$_POST['search']}%' or `PROPRICE` LIKE '%{$_POST['search']}%')";
              }elseif(isset($_GET['category'])){
                $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                          WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 AND CATEGORIES='{$_GET['category']}'";
              }else{
                $query = "SELECT * FROM `tblpromopro` pr , `tblproduct` p , `tblcategory` c
                          WHERE pr.`PROID`=p.`PROID` AND  p.`CATEGID` = c.`CATEGID`  AND PROQTY>0 ";
              }

           
            $mydb->setQuery($query);
            $res = $mydb->executeQuery();
            $maxrow = $mydb->num_rows($res);

            if ($maxrow > 0) { 
            $cur = $mydb->loadResultList();
           
            foreach ($cur as $result) { 

              ?>
            <form method="POST" action="cart/controller.php?action=add">
            <input type="hidden" name="PROPRICE" value="<?php  echo $result->PROPRICE; ?>">
            <input type="hidden" id="PROQTY" name="PROQTY" value="<?php  echo $result->PROQTY; ?>">

            <input type="hidden" name="PROID" value="<?php  echo $result->PROID; ?>">
            <input type="hidden" name="CATEGID" value="<?php  echo $result->CATEGID; ?>">
            <div class="col-sm-4">
              <div class="product-image-wrapper">
                <div class="single-products">
                    <div class="productinfo text-center">
                      <img src="<?php  echo web_root.'admin/products/'. $result->IMAGES; ?>" alt="" />
                      <h2>&#8369 <?php  echo $result->PRODISPRICE; ?></h2>
                      <p><?php  echo    $result->PRONAME; ?></p>
                      <p><?php  echo    $result->PRODESC; ?></p>

                      <?php
                        if(isset($_SESSION['CUSID'])){
                        if ( $result->CATEGID==8) {
                          $query1 = "SELECT *,(SELECT PRESCRIBEDQTY-sum(ORDEREDQTY) FROM `tblorder` WHERE PROID = '".$result->PROID."' AND CUSTOMERID = '".$_SESSION['CUSID']."') AS 'sum',(SELECT sum(ORDEREDQTY) FROM `tblorder` WHERE PROID = '".$result->PROID."' AND CUSTOMERID = '".$_SESSION['CUSID']."') as 'new' FROM `tblorder` WHERE '".$result->PROID."' IN (SELECT PROID FROM `tblorder` WHERE CUSTOMERID = '".$_SESSION['CUSID']."') AND PROID = '".$result->PROID."' AND CUSTOMERID = '".$_SESSION['CUSID']."'";

           
                             $mydb->setQuery($query1);
                             $res1 = $mydb->executeQuery();
                             $maxrow1 = $mydb->num_rows($res1);
                             $cur1 = $mydb->loadSingleResult();
                             if($maxrow1>0){
                              
                              $resultt = ($cur1->PRESCRIBEDQTY) - ($cur1->sum);
                              $new = $cur1->new;
                              $bgo = $cur1->PRESCRIBEDQTY - $new;
                          ?>
                          <p style="color: red">You have only <?php echo '('.$cur1->sum.')' ; ?> quantity left based on your doctor prescribed!</p>
                          <input type="hidden" required="" placeholder="Qty Prescribed" name="qty" value="<?php echo $cur1->PRESCRIBEDQTY?>" min="0">
                          <input type="hidden" id="new" name="new" value="<?php  echo $new; ?>">
                          <input type="hidden" id="bgo" name="bgo" value="<?php  echo $bgo; ?>"><br><br>
                          <?php
                        }else{
                          ?>
                          <p style="color: red">How many prescribed by your doctor?</p>
                          <input type="number" required="" placeholder="Qty Prescribed" name="qty" min="1">
                          <input type="hidden" required="" value="0" name="bgo" min="1"><br><br>
                          <?php
                        }
                        }else{
                          echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="qty" min="1">';
                          echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="bgo" value="0" min="1">';
                        }
                        if (isset($maxrow1)&&isset($cur1->sum)) {
                          # code...
                        
                        if($maxrow1>0 && $cur1->sum==0){
                            echo '';
                          }else{
                        ?>
                        <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        <?php
                      }
                    }else{
                      //echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="qty" min="1">';
                      echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="bgo" value="0" min="1">';
                        ?>
                        <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        <?php
                      }
                      }elseif(!isset($_SESSION['CUSID']) && $result->CATEGID!=8){
                        echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="qty" min="1">';
                          echo '<input type="hidden" required="" placeholder="Qty Prescribed" name="bgo" value="0" min="1">';
                        ?>
                        <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        <?php

                    }else{


                        ?>
                        
                          <p style="color: red">How many prescribed by your doctor?</p>
                          <input type="hidden" required="" placeholder="Qty Prescribed" name="bgo" value="0" min="1">
                          <input type="number" required="" placeholder="Qty Prescribed" name="qty" min="1"><br><br>
                          
                        <button type="submit" name="btnorder" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                        <?php

                      }
                      ?>
                    </div>
                </div>
                <div class="choose">
                  <ul class="nav nav-pills nav-justified">
                   <li>
                              <?php     
                            if (isset($_SESSION['CUSID'])){  

                              echo ' <a href="'.web_root. 'customer/controller.php?action=addwish&proid='.$result->PROID.'" title="Add to wishlist"><i class="fa fa-plus-square"></i>Add to wishlist</a></a>
                            ';

                             }else{
                               echo   '<a href="#" title="Add to wishlist" class="proid"  data-target="#smyModal" data-toggle="modal" data-id="'.  $result->PROID.'"><i class="fa fa-plus-square"></i>Add to wishlist</a></a>
                            ';
                            }  
                            ?>

                    </li> 
                  </ul>
                </div>
              </div>
            </div>
          </form>
       <?php  } 


            }else{ 

              echo '<h1>No Products Available</h1>';

            }?> 
          </div><!--features_items-->
        </div>
      </div>
    </div>
  </section>
  