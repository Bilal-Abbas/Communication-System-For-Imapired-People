<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>


<!DOCTYPE html>


  
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Passion+One:400,700,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
 <script src="js/responsiveslides.min.js"></script>


     
     <style>

         hr{
             color:forestgreen;
         }         p {
         text-align:justify;
       
         font-size:20px;
         }

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
  font-family: 'Passion One';

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


</head>
<body>
    <form id="form1" runat="server" style="background-image:url('images/main_background.png');background-repeat:no-repeat;background-position-x:center;">
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
  <a href="Login.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">LEARNING AND EVALUATION</a>
  <a href="About.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">ABOUT</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                <br /><br />
</div>
			</div>
		</div>
        </div>
        	<div class="container">
        <div class="services" >

     <div class="services-us">
			          <h5 style="font-size:2.5em;text-align:center;font-weight:bold">ABOUT WEBSITE</h5><br /><br />

         <div class="col-md-8">
   

             <p>Lack of understanding about technological accessibility for the deaf causes conflict and injustice for the deaf community.Technology is even important in face-to-face social situations. For example, when deaf people meet a normal person who does not know sign language, they often communicate via the notepad on their cell phones. Here, technology takes the place of a human sense, allowing deaf individuals to successfully communicate with different cultures. This system is also focusing on this perspective of communication of special persons to normal persons and normal person's communication with special persons.</p>

         </div>

     

				<div class="col-md-4">
                     <div class="clearfix"> </div>      
                    <img class="img-responsive" src="images/about1.gif" />
					
                 
                            
                    </div>
         <br />
         
         <br /><br />
                    			        

					</div>		
            
<div class="services-us">
				 
    <div class="col-md-4">
                    <img class="img-responsive" src="images/texttospeech.jpeg" />
                    </div>
    <br /><br /><br /><br />
     <div class="col-md-8">
   

             <p>This system has also the Text to Speech interface in which user speaks while the other person can hear it by just on one click. The Text to Speech service understands text and natural language to generate synthesized audio output complete with appropriate cadence and intonation. Text to speak include any kind of sentences and word in english as the system is currently design for english language.</p>
         </div>

    <div class="clearfix"></div>
    <br /><br />
     <div class="col-md-8">
   

             <p>This section contain some sentence samples of American Sign Language (ASL) English translation materials that may help you learn how to interpret from English into ASL. More phrases and sentences can be added to the list sporadically. You can email your requests with a text or a list of some sentences/phrases to adminstrator. Sentences that are generic and beneficial for everyone will be selected.</p>

         </div>
      <div class="col-md-4">
                     <div class="clearfix"> </div>      
                    <img class="img-responsive" src="images/speech to sign.jpg" />
                    </div>

					</div>
				
					</div>
      
			
            </div>
        <br /><br />
        <div class="clearfix"></div>
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
