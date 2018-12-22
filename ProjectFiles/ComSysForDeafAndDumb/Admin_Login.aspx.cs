using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "bilalabbas437@gmail.com" && TextBox2.Text == "awan03154464384")
        {
          Response.Redirect("Update_panel.aspx");
        }
        else
        {
            String Display = "Email or Password is incorrect";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
        }
    }
}