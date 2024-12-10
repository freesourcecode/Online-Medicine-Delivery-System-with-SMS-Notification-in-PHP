<?php  

    if (!isset($_SESSION['USERID'])){
      redirect(web_root."index.php");
     }


  $EMPID = $_GET['id'];
  $employee = New Employee();
  $singleemployee = $employee->single_employee($EMPID);

?>
  
        
        <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">Update Employee</h1>
          </div>
          <!-- /.col-lg-12 -->
       </div>
       <form class="form-horizontal span6" action="controller.php?action=edit" method="POST"/>
              <div class="form-group">
                    <div class="col-md-8">
                       <input class="form-control input-sm" id="EMPID" name="EMPID" type="hidden" value="<?php echo $singleemployee->EMPID; ?>">
                      <label class="col-md-4 control-label" for=
                      "LNAME">Last Name:</label>
                      <div class="col-md-8">
                            <input class="form-control input-sm" id="LNAME" name="LNAME" placeholder=
                            "Last Name" type="text" value="<?php echo $singleemployee->LNAME; ?>">
                      </div>
                    </div>
                  </div>  

                 <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "FNAME">First Name:</label>
                      <div class="col-md-8"> 
                      <input class="form-control input-sm" id="FNAME" name="FNAME" placeholder=
                            "Middle Name" type="text" value="<?php echo $singleemployee->FNAME; ?>">
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "MNAME">Middle Name:</label>
                      <div class="col-md-8">
                             <input class="form-control input-sm" id="MNAME" name="MNAME" placeholder=
                            "Middle Name" type="text" value="<?php echo $singleemployee->MNAME; ?>">
                      </div>
                    </div>
                  </div> 

                  <div class="form-group">
                  <div class="col-md-8">
                    <label for="DOB" class="col-sm-4 col-form-label col-form-label-sm"  style="text-align: right;">Date of Birth</label>
                    <div class="col-sm-4">
                      <input type="date" id="DOB" name="DOB" data-date-format="yyyy-mm-dd" class="form-control form-control-sm" value="<?php echo $singleemployee->DOB; ?>">
                    </div>
                  </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AGE">Age:</label>

                      <div class="col-md-3">
                         <input class="form-control input-sm" id="AGE" name="AGE" placeholder=
                            "Age" type="number" value="<?php echo $singleemployee->AGE; ?>"  step="any">
                      </div>
                       <label class="col-md-2 control-label" for=
                      "SEX">Sex:</label>

                      <div class="col-md-3">
                       <select class="form-control input-sm" name="SEX" id="SEX" value="<?php echo $singleemployee->SEX; ?>" >
                          <option value="Male"  >Male</option> 
                          <!-- <option value="Customer">Customer</option> -->
                          <option value="Female" >Female</option>
                        </select> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "ADDRESS">Address:</label>

                      <div class="col-md-8"> 
                      <textarea class="form-control input-sm" id="ADDRESS" name="ADDRESS" cols="1" rows="3" ><?php echo $singleemployee->ADDRESS; ?></textarea>
                      </div>
                       
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "EMAIL">Email Address:</label>
                      <div class="col-md-8"> 
                      <input class="form-control input-sm" id="EMAIL" name="EMAIL" placeholder=
                            "Email Address" type="text" value="<?php echo $singleemployee->EMAIL; ?>">
                      </div>
                    </div>
                  </div>

                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CONTACT">Contact Number:</label>
                      <div class="col-md-8"> 
                      <input class="form-control input-sm" id="CONTACT" name="CONTACT" placeholder=
                            "Contact Number" type="text" value="<?php echo $singleemployee->CONTACT; ?>">
                      </div>
                    </div>
                  </div>
  
                 <!--  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4" align = "right"for=
                      "image">Upload Image:</label>

                      <div class="col-md-8">
                      <input type="file" name="image" value="<?php echo $singleemployee->image; ?>" id="image"/>
                      </div>
                    </div>
                  </div> -->
            
             <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "idno"></label>

                      <div class="col-md-8">
                        <button class="btn  btn-primary btn-sm" name="save" type="submit" ><span class="fa fa-save fw-fa"></span> Save</button>
                      </div>
                    </div>
                  </div>

               
        <div class="form-group">
                <div class="rows">
                  <div class="col-md-6">
                    <label class="col-md-6 control-label" for=
                    "otherperson"></label>

                    <div class="col-md-6">
                   
                    </div>
                  </div>

                  <div class="col-md-6" align="right">
                   

                   </div>
                  
              </div>
              </div>
          
        </form>