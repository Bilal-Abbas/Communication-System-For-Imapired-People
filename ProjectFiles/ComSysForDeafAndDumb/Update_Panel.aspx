<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Panel.aspx.cs" Inherits="Update_Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
  <a href="Learning_Page.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">LEARNING AND EVALUATION</a>
  <a href="About.aspx" style="font-family:'Open Sans';font-weight:bold; margin-left:20px;">ABOUT</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                <br /><br />
</div>
			</div>
		</div>
        </div>
       
				<div class="clearfix"> </div>
        <br />
         <div class="container">
            <div class="col-lg-12">





                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1024px" Font-Size="20px" GridLines="Horizontal" ShowFooter="True">
                    <AlternatingRowStyle BorderStyle="Solid" Font-Bold="True" ForeColor="Red" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="200" ControlStyle-Height = "150" >
<ControlStyle Height="150px" Width="200px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Columns>
                    <HeaderStyle BackColor="Yellow" BorderStyle="Solid" />
                </asp:GridView>





                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [Id], [Image], [Description], [Email] FROM [tblImages]"></asp:SqlDataSource>





            </div>
</div>
         <div class="footer" style="margin-top:20%;">
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
