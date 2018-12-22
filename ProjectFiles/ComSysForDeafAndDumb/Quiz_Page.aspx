<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz_Page.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Strat Quiz</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
     <script>
         function StartTest(popUpPage) {
             window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
         }
        </script>

     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Passion+One:400,700,900' rel='stylesheet' type='text/css' />
<!--//fonts-->
 <script src="js/responsiveslides.min.js"></script>
        <%-- ============================== --%>
        
     <style>

    
.topnav {
  overflow: hidden;
  background-color: transparent;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  /*font-family: 'Passion One';*/
  font-family: 'Open Sans', sans-serif;

}

.topnav a:hover {
 
    color: #C7DB5E;
}

.active {

  color: #4CAF50;
}
#only_deaf{width:500px;
           height:500px;
           position:center
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 800px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}
@media screen and (max-width: 800px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive a.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
       <script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script> 

        <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

        <%-- ============================== --%>
    <style type="text/css">
        .clearfix {
            height: 66px;
        }
    </style>
</head>
<body style="background-image:url('images/main_background.png');background-repeat:no-repeat; background-position-x:center;">
    <div class="header-bottom-top">
		<div class="container">
			<div class="header-bottom">			
				<div class="logo">
					<!--  222222222222222222222222222222 place for logo-->
				</div>
                
 <br /> <br />

			<div class="topnav" id="myTopnav">
  <a href="Main_Page.aspx" style="font-family:'Open Sans';font-weight:bold;margin-left:30px;">HOME</a>
  <a href="Speech_To_Sign.html" style="font-family:'Open Sans';font-weight:bold;margin-left:20px;">SPEECH TO SIGN</a>
  <a href="Text_To_Speech.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">TEXT TO SPEECH</a>
  <a href="Learning_Page.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">LEARNING AND EVALUATION</a>
  <a href="About.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">ABOUT</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                <br /><br />
</div>
			</div>
		</div>
        </div>
    <div class="clearfix"></div>
     <div class="clearfix"> </div>
    <form runat="server">

    <div class="container" style="margin-top:52px;">
         <table class="table" style="width:100%;height:272px;padding:10px;text-align:center;">  
                            <tr>  
                                <td style="text-align:center;">  
                                       <asp:Label ID="lbstatus" runat="server" 
                                       BorderColor="Red" Font-Bold="True" 
                                       Font-Size="25pt" 
                                       BorderStyle="none">Communication System Quiz.</asp:Label>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td style="text-align:center;font-size:50px;background-color:#C7DB5E;"><b>Start Your quiz</b></td>  
                            </tr>  
                            <tr>  
                                <td style="text-align: center;">  
                                    <asp:Button ID="btnStartTest" class="btn btn-primary btn-md" Text="START" runat="server"
                                        OnClientClick="return StartTest('Quiz.aspx');"
                                      Width="150px" style="margin-top:20px;border-bottom-style:solid;height:50px;font-size:30px;"/>  
                                </td>  
                            </tr>  
                        </table> 

</div>
        <div class="container" style="text-align:center; margin-bottom:200px;">
            <h3 style="font-family:Georgia;font-size:30px;"> You will be given several questions and result will be shown on the top of the screen.</h3>
        </div>

         <div class="clearfix"> </div>
      <div class="footer">
		<div class="container" style="height:auto;">
		
			<div class="foter-bottom">	
                <br />		
				<p style="text-align:center;color:#C7DB5E">&copy;All Rights Reserved</p>
			</div>
		</div>
			</div>
        </form>
</body>
</html>
