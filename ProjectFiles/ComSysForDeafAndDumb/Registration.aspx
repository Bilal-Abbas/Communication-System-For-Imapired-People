<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
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
<script>(function (d, s, id) {
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
<body>
     <form runat="server" style="background-image:url('images/main_background.png');background-repeat:no-repeat; background-position-x:center;">
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

        <div class="container" style="background-color:#C7DB5E; margin-top:7%">
            <p style="text-align:center;font-size:50px;">Registration</p>
             <h3 style="float:right; margin-right:0%;">Use Login here</h3><br />
            <br />
            <br /> 
            <div  style="float:right;margin-right:4%;"><a href="Login.aspx" style="font-family:'Open Sans';font-weight:bold;font-size:large;color:red;">Login</a></div>
            <div class="col-lg-10">
                    
                    <div class="col-lg-2" style="float:left;margin-left:25%;font-size:30px;margin-right:5%; width: 180px;" >
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>


                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" width="100%" onfocus="clearWaterMark('Enter your Name',this);" onblur="CreateWaterMark('Enter your Name',this);" Text="Enter your Name" ForeColor="Gray"></asp:TextBox>
                         <script type="text/javascript">
                             function clearWaterMark(defaultText, textboxControl) {
                                 if (textboxControl.value == defaultText) {
                                     textboxControl.value = "";
                                     textboxControl.style.color = "black";
                                 }
                             }
                             function CreateWaterMark(defaultText, textboxControl) {
                                 if (textboxControl.value.length == 0) {
                                     textboxControl.value = defaultText;
                                     textboxControl.style.color = "Gray";
                                 }
                             }
                        </script>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please entre name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="col-lg-10">
                    
                    <div class="col-lg-2" style="float:left;margin-left:25%;font-size:30px;margin-right:5%; width: 180px;" >
                        <asp:Label ID="Label2" runat="server" Text="Email Id"></asp:Label>


                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="100%" onfocus="clearWaterMark('Enter your Email',this);" onblur="CreateWaterMark('Enter your Email',this);" Text="Enter your Email" ForeColor="Gray"></asp:TextBox>
                        <script type="text/javascript">
                            function clearWaterMark(defaultText, textboxControl) {
                                if (textboxControl.value == defaultText) {
                                    textboxControl.value = "";
                                    textboxControl.style.color = "black";
                                }
                            }
                            function CreateWaterMark(defaultText, textboxControl) {
                                if (textboxControl.value.length == 0) {
                                    textboxControl.value = defaultText;
                                    textboxControl.style.color = "Gray";
                                }
                            }
                        </script>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
             <div class="col-lg-10">
                    
                    <div class="col-lg-2" style="float:left;margin-left:25%;font-size:30px;margin-right:5%; width: 180px;" >
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>


                    </div>
                    <div class="col-lg-4">
                        <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="100%" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enetr Password" ForeColor="Red" Text></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="col-lg-10">
                    
                    <div class="col-lg-2" style="float:left;margin-left:22%; font-size:30px;margin-right:5%; width:auto;" >
                        <asp:Label ID="Label4" runat="server" Text="Re-Password"></asp:Label>


                    </div>
                    <div class="col-lg-4" style="margin-left: 0px">
                        <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="100%" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Password do not match" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
             <div class="col-md-12" style="text-align:center;margin-bottom:2%;">   
                    <asp:Button ID="Button1" class="btn btn-primary btn-md" runat="server" Text="Register" Width="260px" Height="47px" OnClick="Button1_Click" />
                </div>
</div>



         <div class="footer" style="margin-top:12%">
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
