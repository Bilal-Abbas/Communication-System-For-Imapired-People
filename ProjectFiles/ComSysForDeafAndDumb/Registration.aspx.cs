using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Final_Year_Project\ProjectFiles\ComSysForDeafAndDumb\App_Data\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        conn.Open();
        cmd.CommandText = "insert into tblReg(RName,REmail,RPassword,RRpassword)values(' "+TextBox1.Text+" ',' "+TextBox2.Text+" ',' "+TextBox3.Text+" ',' "+TextBox4.Text+" ')";
        cmd.Parameters.AddWithValue("RName", TextBox1.Text);
        cmd.Parameters.AddWithValue("REmail", TextBox2.Text);
        cmd.Parameters.AddWithValue("RPassword", TextBox3.Text);
        cmd.Parameters.AddWithValue("RRpassword", TextBox4.Text);
        cmd.ExecuteNonQuery();
        String Display = "Registration Sucessfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
        conn.Close();

    }
}