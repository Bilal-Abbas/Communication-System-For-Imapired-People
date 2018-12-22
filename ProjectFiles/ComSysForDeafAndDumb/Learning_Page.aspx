 
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Learning_Page.aspx.cs" Inherits="Learning_Page" %>

<!DOCTYPE html>
  
<html xmlns="http://www.w3.org/1999/xhtml">
  
<head runat="server">
    <title>Learning and Evaluation</title>
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
 <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
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

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}
@media screen and (max-width: 600px) {
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
<body  style="background-image:url('images/main_background.png');background-repeat:no-repeat;background-position-x:center;">
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
    <div class="container">
				<div class="learningandevaluation">
					<h3>Learning and Evaluation</h3>
				</div>
        <div class="clearfix" style="height:30px;"> </div>
            </div>
    <div class="container" style="background-color:#C7DB5E;">
   <div class="col-lg-6" style="margin-top:5%;margin-bottom:5%;">
               <a href="Learning.aspx" class="b-link-stripe b-animate-go  thickbox">
                <img class="img-responsive port-pic" src="images/learning.png" />
                   <div class="b-wrapper">
									<h2 class="b-animate b-from-left    b-delay03 ">
										<span> LEARNING</span>
										<button>VISIT</button>
										</h2>
								</div>
                   </a>
        <div class="wlearning">
                <h3 style="margin:0;">Learning by looking at different pictures and gestures.</h3>
           </div>

           </div>
          
        <div class="col-lg-6" style="margin-top:5%;margin-bottom:5%;">
                <a href="Quiz_Page.aspx" class="b-link-stripe b-animate-go  thickbox">
                    <img class="img-responsive port-pic" src="images/quiz.jpg"/>
                   <div class="b-wrapper">
									<h2 class="b-animate b-from-left    b-delay03 ">
										<span> QUIZ</span>
										<button>VISIT</button>
										
									</h2>
								</div>
                    </a>
             <div class="wlearning">
                <h3 style="margin:0;">Evaluate yourself by participating in the quiz.</h3>
           </div>
                    </div>
            
       </div>
    <div class="clearfix" style="margin-bottom:110px;"> </div>

    <br />
  <div class="footer">
		<div class="container" style="height:auto;">
		
			<div class="foter-bottom">	
                <br />		
				<p style="text-align:center;color:#C7DB5E">&copy;All Rights Reserved</p>
			</div>
		</div>
			</div>
        
              </body>


</html>
