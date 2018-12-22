<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Learning.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning</title>
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
  font-size:17px;
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
    <style type="text/css">
        .clearfix {
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url('images/main_background.png');background-repeat:no-repeat;background-position-x:center;">
    <!--header-->
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
				<div class="clearfix"> </div>
    <div class="container">
				<div class="col-lg-12">
					<h3 style="margin-top:5px;font-family:'Open Sans';font-weight:bold;font-size:60px;text-align:center;">Learning</h3><br /><br />
				</div>
        
            </div>
        <div class="container" style="background:#C7DB5E;">
            <div class="col-lg-12">
     <div class="col-lg-6">
         <h2 style="text-align:center;margin-top:10%;">Search for a sign you want to view or check.</h2>
         <asp:Textbox runat="server" type="text" class="form-control" id="imgsearch" style="margin-top:15%;margin-bottom:3%;" CausesValidation="True"/>
          <asp:Button ID="serchbtn" runat="server" Text="Serach" OnClick="btnSearch" />
     </div>
            <br /><br />
             <div class="col-lg-6">
            <asp:Image runat="server" CssClass="img-responsive" ImageUrl="~/images/learning.png" id="SearchImg" style="border:solid;" />               
             </div>
            </div>
            </div>
           <h1 style="text-align:center;"> Your contribution </h1>
        <p style="text-align:center;">It will be helpful for others to know a sign which you know so please upload relevent sign.</p>
        <p style="font-weight:bolder;text-align:center;">Note:  Abusive sign will be deleted and registration will be cancled by the admin.</p>
        

    
    <div class="container" style="background:#C7DB5E;margin-top:30px;padding-bottom:30px">
        <div class="col-lg-6">
             <div class="content" style="text-align:center;font-weight:bolder;">
            <h2>Please upload your ASL File below.</h2>
        </div>
           <label for="usr" style="font-size:20px;">Select Picture:</label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <label for="usr" style="font-size:20px;">Picture Description:</label>
            <input runat="server"   type="text" class="form-control" name="des" id="txtdes"/>
            <br />
             <br />
            <label for="Email" style="font-size:20px;">Enter you Email:</label><br />
            <asp:TextBox ID="Email" runat="server" type="text" Height="30px" TextMode="Email" class="form-control"></asp:TextBox>
            <br />
            <br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click"/>
        </div>
        <div class="col-lg-6"><br />
            <br />
            <br /><br />
            <asp:Image runat="server" CssClass="img-responsive" ImageUrl="~/images/learning.png" id="imgUpload" style="border:solid;" />
        </div>

        <div class="clearfix"></div>
         </div>
         <div class="clearfix" style="margin-top:1px;"> </div>
        <div class="container"  style="background-image:url('images/slider.png');background-repeat:no-repeat;background-position-x:center;width:100%;">
            <div class="col-lg-12" style="text-align:center;width:60%;margin-left:20%;">
    <div id="slides"  style="font-family:Georgia;font-size:30px;margin-top:2%;">
       <img  src="images/a-z.png" style="height:100%"/>
      <img  src="images/a.png" style="height:100%"/>
      <img  src="images/b.png" style="height:100%"/>
      <img  src="images/c.png" style="height:100%"/>
      <img  src="images/d.png" style="height:100%"/>
      <img  src="images/e.png" style="height:100%"/>&nbsp;
      <img  src="images/g.png" style="height:100%"/>
      <img  src="images/h.png" style="height:100%"/>
      <img  src="images/i.png" style="height:100%"/>
      <img  src="images/j.png" style="height:100%"/>
      <img  src="images/k.png" style="height:100%"/>
      <img  src="images/l.png" style="height:100%"/>
      <img  src="images/m.png" style="height:100%"/>
      <img  src="images/n.png" style="height:100%"/>
      <img  src="images/o.png" style="height:100%"/>
      <img  src="images/p.png" style="height:100%"/>
      <img  src="images/q.png" style="height:100%"/>
      <img  src="images/r.png" style="height:100%"/>
      <img  src="images/s.png" style="height:100%"/>
      <img  src="images/t.png" style="height:100%"/>
      <img  src="images/u.png" style="height:100%"/>
      <img  src="images/v.png" style="height:100%"/>
      <img  src="images/w.png" style="height:100%"/>
      <img  src="images/x.png" style="height:100%"/>
      <img  src="images/y.png" style="height:100%"/>
      <img  src="images/z.png" style="height:100%"/>
      <a href="#" class="slidesjs-previous slidesjs-navigation" style="float:left;font-weight:bolder;"><i class="icon-chevron-left icon-large" style="font-weight:bold;font-style:normal;">PREVIOUS</i></a>
      <a href="#" class="slidesjs-next slidesjs-navigation" style="float:right;font-weight:bolder;;">NEXT<i class="icon-chevron-right icon-large"></i></a>
          
    </div>
            </div>
  </div>
        <div class="clearfix" style="margin-top:5px;"> </div>
          <div class="footer">
		<div class="container" style="height:auto;">
		
			<div class="foter-bottom">	
                <br />		
				<p style="text-align:center;color:#C7DB5E">&copy;All Rights Reserved</p>
			</div>
		</div>
			</div>
  <!-- End SlidesJS Required: Start Slides -->

  <!-- SlidesJS Required: Link to jQuery -->
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Link to jquery.slides.js -->
  <script src="js/jquery.slides.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  <script>
      $(function () {
          $('#slides').slidesjs({
              width: 250,
              height: 100,
              navigation: false
          });
      });
  </script>
  <!-- End SlidesJS Required -->
       
    </form>
</body>
</html>
