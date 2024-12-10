<?php  
     if (!isset($_SESSION['USERID'])){
      redirect(web_root."index.php");
     }

  $EMPID = $_GET['id'];
  $employee = New Employee();
  $singleemployee = $employee->single_employee($EMPID);

   
     
  ?>
<div class="container">
<div class="panel-body inf-content">
    <div class="row">
        <div class="col-md-4">
        <a data-target="#myModal" data-toggle="modal" href="" title=
            "Click here to Change Image.">
            <img alt="" style="width:600px; height:400px;>" title="" class="img-circle img-thumbnail isTooltip" src="<?php echo $singleemployee->PICTURE; ?>" data-original-title="Usuario"> 
          
          </a>  
        </div>
        
    </div>
</div>
</div>
            

     <!-- Modal -->
          <div class="modal fade" id="myModal" tabindex="-1">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" data-dismiss="modal" type=
                  "button">×</button>

                  <h4 class="modal-title" id="myModalLabel">Choose Image.</h4>
                </div>

                <form action="controller.php?action=photos&id=<?php echo $EMPID; ?>" enctype="multipart/form-data" method=
                "post">
                  <div class="modal-body">
                    <div class="form-group">
                      <div class="rows">
                        <div class="col-md-12">
                          <div class="rows">
                            <div class="col-md-8">
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

 