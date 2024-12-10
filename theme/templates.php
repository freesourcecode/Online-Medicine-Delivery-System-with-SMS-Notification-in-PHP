<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Online Medicine Delivery</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/main1.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">


  
 <!--  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css"> -->
  <!-- Theme style -->
  <!-- <link rel="stylesheet" href="dist/css/adminlte.min.css"> -->
  <!-- Google Font: Source Sans Pro -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"> -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    
</head><!--/head-->
</head>

<body  onload="totalprice()" >

  <header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
      <div class="">
        <div class="row">
          <div class="col-md-4 clearfix">
            <div class="logo pull-left">
             
            </div> 
          </div>
          <div class="col-md-8 clearfix">
            <div class="shop-menu clearfix pull-right">
              <ul class="nav navbar-nav">
              <li><a href="<?php echo web_root;?>index.php?q=cart"><i class="fa fa-shopping-cart"></i> Cart    
               <?php 
                  if (isset($_SESSION['gcCart'])){
  if (@count($_SESSION['gcCart'])>0) {
    $cart = '<span class="carttxtactive" style="color:red;">('.@count($_SESSION['gcCart']) .')</span>';
    ?>
     <?php echo $cart; ?></a></li><?php
  }else{
     $cart = 0;
     ?>
     <?php echo $cart; ?></a></li><?php
  }
 
} 

                if (isset($_SESSION['CUSID'] )) { ?>  
                  <li><a href="<?php echo web_root?>index.php?q=profile"><i class="fa fa-user"></i> Account</a></li>     
                  <li><a   href="<?php echo web_root?>logout.php"><i class="fa fa-lock"></i> Logout</a></li>
                <?php }else{ ?> 
                <li><a data-target="#smyModal" data-toggle="modal"  href=""><i class="fa fa-lock"></i> Login</a></li>
              <?php } ?>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  
     <nav class="navbar navbar-inverse" role="banner" style="background-color: darkblue">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a href="index.php"><h4 class="wow fadeInDown" style="margin-top:20px; color:#FFF;"> 
                        ONLINE MEDICINE DELIVERY SYSTEM</h4></a>
                </div>
    
                <div class="collapse navbar-collapse navbar-right wow fadeInDown">
                    <ul class="nav navbar-nav collapse navbar-collapse">
                <li><a href="<?php echo web_root;?>" class="active">Home</a></li>
                <li class="dropdown"><a href="#">Category<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                       <?php 
                                            $mydb->setQuery("SELECT * FROM `tblcategory`");
                                            $cur = $mydb->loadResultList();
                                           foreach ($cur as $result) { 
                                       echo '<li><a href="index.php?q=product&category='.$result->CATEGORIES.'" >'.$result->CATEGORIES.'</a></li>';
                                        } ?> 
                                    </ul>
                                </li> 

         
                <li><a href="<?php web_root?>index.php?q=product">Medicines</a></li>
                <li><a href="<?php web_root?>index.php?q=contact">Contact</a></li>
                <li> <div class="col-sm-3">
            <form action="<?php echo web_root?>index.php?q=product" method="POST" > 
              <div class="search_box pull-left">
                <input type="text" name="search" placeholder="Search"/>
              </div>
            </form>
          </div></li>
              </ul>
             
              </div>

            </div><!--/.container-->

        </nav><!--/nav-->
  </header><!--/header-->
  <hr>
          <?php 
            require_once $content; 
         ?> 
    
     <div class="footer-widget">
      <div class="container">
        
        <div class="row">
          <div class="col-sm-3">
            <div class="single-widget">
              <h2>Service</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Online Help</a></li>
                <li><a href="#">Contact Us</a></li>
                
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="single-widget">
              <h2>Quick Shop</h2>
              <ul class="nav nav-pills nav-stacked">
                 <?php 
                      $mydb->setQuery("SELECT * FROM `tblcategory` LIMIT 6");
                      $cur = $mydb->loadResultList();
                     foreach ($cur as $result) {
                      echo '<li><a href="index.php?q=product&category='.$result->CATEGORIES.'" >'.$result->CATEGORIES.'</a></li>';
                      }
                  ?>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="single-widget">
              <h2>Policies</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Terms of Use</a></li>
                <li><a href="#">Privacy Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="single-widget">
              <h2>About Us</h2>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#">Company Information</a></li>
               <!--  <li><a href="#">Careers</a></li> -->
                <li><a href="#">Store Location</a></li>
                <!-- <li><a href="#">Affillate Program</a></li> -->
                <li><a href="#">Copyright</a></li>
              </ul>
            </div>
          </div>
      
          
        </div>
      </div>
    </div>
    
    <div class="footer-bottom" style="background-color: darkblue;">
      <div class="container">
        <footer><p  style="text-align: center;font-weight: bold;  color: white">Online Medicine Delivery System 2021 </p></footer>
      </div>
    </div>

 <!-- modalorder -->
 <div class="modal fade" id="myOrdered">
 </div>


 <?php include "LogSignModal.php"; ?> 
<!-- end -->
 
    <!-- jQuery -->
    <script src="<?php echo web_root; ?>jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo web_root; ?>js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript --> 
    <!-- DataTables JavaScript -->
    <script src="<?php echo web_root; ?>js/jquery.dataTables.min.js"></script>
    <script src="<?php echo web_root; ?>js/dataTables.bootstrap.min.js"></script>


<script type="text/javascript" language="javascript" src="<?php echo web_root; ?>js/ekko-lightbox.js"></script> 
<script type="text/javascript" src="<?php echo web_root; ?>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<?php echo web_root; ?>js/locales/bootstrap-datetimepicker.uk.js" charset="UTF-8"></script>

   
<script src="<?php echo web_root; ?>js/jquery.scrollUp.min.js"></script>
<script src="<?php echo web_root; ?>js/price-range.js"></script>
<script src="<?php echo web_root; ?>js/jquery.prettyPhoto.js"></script>
<script src="<?php echo web_root; ?>js/main.js"></script> 

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="js/gmaps.js"></script>
<script src="js/contact.js"></script>

    
<script type="text/javascript" language="javascript" src="<?php echo web_root; ?>js/adones.js"></script> 

<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/select2/js/select2.full.min.js"></script>

<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    
    })

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });
    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      locale: {
        format: 'MM/DD/YYYY hh:mm A'
      }
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Timepicker
    $('#timepicker').datetimepicker({
      format: 'LT'
    })
    
    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    });

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    });

 
</script>
<!-- Page script -->


 <script type="text/javascript">
  $(document).on("click", ".proid", function () {
    // var id = $(this).attr('id');
      var proid = $(this).data('id')
    // alert(proid)
       $(".modal-body #proid").val( proid )

      });

</script>
 <script>
    // tooltip demo
    $('.tooltip-demo').tooltip({
        selector: "[data-toggle=tooltip]",
        container: "body"
    })

    // popover demo
    $("[data-toggle=popover]")
        .popover()
    </script>


      <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
    </script>

<script type="text/javascript">


$('#date_picker').datetimepicker({
  format: 'mm/dd/yyyy',
    language:  'en',
    weekStart: 1,
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0
    });

 
 
 
function validatedate(){ 
 
 

    var todaysDate = new Date() ;

    var txtime =  document.getElementById('ftime').value
    // var myDate = new Date(dateme); 

    var tprice = document.getElementById('alltot').value 
    var BRGY = document.getElementById('BRGY').value
    var onum = document.getElementById('ORDERNUMBER').value

     
     var mytime = parseInt(txtime)  ;
     var todaytime =  todaysDate.getHours()  ;
       if (txtime==""){
     alert("You must set the time enable to submit the order.")
     }else 
     if (mytime<todaytime){ 
        alert("Selected time is invalid. Set another time.")
      }else{
        window.location = "index.php?page=7&price="+tprice+"&time="+txtime+"&BRGY="+BRGY+"&ordernumber="+onum; 
      }
  }
</script>  


    <script type="text/javascript">
  $('.form_curdate').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
  $('.form_bdatess').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>
<script>
 


  function checkall(selector)
  {
    if(document.getElementById('chkall').checked==true)
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=true;
      }
    }
    else
    {
      var chkelement=document.getElementsByName(selector);
      for(var i=0;i<chkelement.length;i++)
      {
        chkelement.item(i).checked=false;
      }
    }
  }
   function checkNumber(textBox){
        while (textBox.value.length > 0 && isNaN(textBox.value)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
      //
      function checkText(textBox)
      {
        var alphaExp = /^[a-zA-Z]+$/;
        while (textBox.value.length > 0 && !textBox.value.match(alphaExp)) {
          textBox.value = textBox.value.substring(0, textBox.value.length - 1)
        }
        textBox.value = trim(textBox.value);
      }
  

       
  </script>     

</body>
</html>