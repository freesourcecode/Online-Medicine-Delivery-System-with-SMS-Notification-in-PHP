<?php
    check_message(); 
    ?> 
     
    <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">List of Employee(s)  <a href="index.php?view=add" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> New</a>  </h1>
          </div>
       </div>
          <form action="controller.php?action=delete" Method="POST">    
          <div class="table-responsive">        
        <table id="dash-table"  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0" >
          
          <thead>
            <tr> 
              <th width="1%">#</th>
              <th width="50">Image</th>
              <th>Name</th> 
              <th>Date of Birth</th>
              <th>Age</th>
              <th>Sex</th>
              <th>Address</th>  
              <th>Email</th>  
              <th>Contact</th>  
              <th>Action</th> 
               
            </tr> 
          </thead>  

        <tbody>
            <?php 
              $query = "SELECT * FROM `tblemployee`";
              $mydb->setQuery($query);
              $cur = $mydb->loadResultList();

            foreach ($cur as $result) { 
              echo '<tr>';
              echo '<td>' . $result->EMPID.'</td>';
              echo '<td style="padding:0px;">
                <a class="EMPID" href="" data-target="#productmodal"  data-toggle="modal"  data-id="'.$result->EMPID.'"> 
              <img style="width:100px;height:50px;padding:0;"  src="'. web_root.'rider/employee/'.$result->IMAGES . '">
              </a></td>';   
              echo '<td>'. $result->LNAME.' '. $result->FNAME.' '. $result->MNAME.'</td>';
              echo '<td>' . $result->DOB.'</td>';
              echo '<td>' . $result->AGE.'</td>';
              echo '<td>' . $result->SEX.'</td>';
              echo '<td>' . $result->ADDRESS.'</td>';
              echo '<td>' . $result->EMAIL.'</td>';
              echo '<td>' . $result->CONTACT.'</td>';
              echo '<td align="center"><a title="Edit" href="index.php?view=edit&id='.$result->EMPID.'" class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></a>
                   ';
              
              echo '</tr>';
            } 
            ?>
          </tbody>
          
          
        </table>
        </div>
        </form>
 
 <div class="modal fade" id="productmodal" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button class="close" data-dismiss="modal" type=
                                    "button">ï¿½</button>

                                    <h4 class="modal-title" id="myModalLabel">Image.</h4>
                                </div>

                                <form action="<?php echo web_root; ?>rider/employee/controller.php?action=photos" enctype="multipart/form-data" method=
                                "post">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <div class="rows">
                                                <div class="col-md-12">
                                                    <div class="rows">
                                                        <div class="col-md-8">

                                                            <input class="empid" type="hidden" name="empid" id="empid" value="">
                                                              <input name="MAX_FILE_SIZE" type=
                                                            "hidden" value="1000000"> <input id=
                                                            "photo" name="photo" type=
                                                            "file">
                                                        </div>

                                                        <div class="col-md-4"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button class="btn btn-default" data-dismiss="modal" type=
                                        "button">Close</button> <button class="btn btn-primary"
                                        name="savephoto" type="submit">Upload Photo</button>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->

                