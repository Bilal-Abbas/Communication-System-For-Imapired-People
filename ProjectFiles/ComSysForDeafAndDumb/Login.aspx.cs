using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page

{
    static int myID = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
      

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

         SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Final_Year_Project\ProjectFiles\ComSysForDeafAndDumb\App_Data\Database.mdf;Integrated Security=True");
         conn.Open();
         using (SqlCommand cmd1 = new SqlCommand())
         {
             cmd1.Connection = conn;
             cmd1.CommandText = "insert into tblLog(LEmail,LPassword)values(' " + Email.Text + " ',' " + Password.Text + " ')";
             cmd1.Parameters.AddWithValue("RName", Email.Text);
             cmd1.Parameters.AddWithValue("REmail", Password.Text);
             cmd1.ExecuteNonQuery();
         }
        using ( SqlCommand cmd = new SqlCommand("select count(*) from tblReg where REmail=' " + Email.Text + " ' and RPassword=' " + Password.Text + " ' "))
        { 
        cmd.Connection = conn;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["REmail"] = Email;
            Response.Redirect("Learning_Page.aspx");
        }
        else
        {
            String Display = "Email or Password is incorrect";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
            
        }
            
        }
        conn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Email.Text = "";
        Password.Text = "";

    }
}