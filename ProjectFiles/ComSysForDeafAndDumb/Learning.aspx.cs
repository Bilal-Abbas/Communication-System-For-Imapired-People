using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class _Default : System.Web.UI.Page
{

    // string strconn= ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Final_Year_Project\ProjectFiles\ComSysForDeafAndDumb\App_Data\Database.mdf;Integrated Security=True");
    static string query = "";
    static int myID = 1;
    string var;
    static string var1;
    //static string imgSize;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["REmail"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        
        txtdes.Value = "";
        SearchImg.ImageUrl = "~/images/learning.png";

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        try { 
        string Images = "";
        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./images/" + FileUpload1.FileName.ToString());
        Images = "~/images/" + FileUpload1.FileName.ToString();
        query = "insert into tblImages values ('" + Images + "','" + txtdes.Value + "','" + Email.Text + "')";
        conn.Open();
        using (SqlCommand cmd1 = new SqlCommand("select count(*) from tblReg where REmail=' " + Email.Text + " ' "))
        {
            cmd1.Connection = conn;
            int OBJ = Convert.ToInt32(cmd1.ExecuteScalar());
            if (OBJ > 0)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.ExecuteNonQuery();
                }
                Response.Write("successfull");
                imgUpload.ImageUrl = Images;
            }
            else
            {
                String Display = "Email did not match with registered user";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);

            }

        }
        Email.Text = "";

        conn.Close();
            }
           
        catch (Exception ex)
        {
            imgUpload.ImageUrl = "~/images/learning.png";
            String Display = "Something is missing";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
        }
    }

    protected void btnSearch(object sender, EventArgs e)
    {
        if ((imgsearch.Text)== "")
        {
            String Display = "Your have not enter anything for search";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
        }
        else { 
        string find = "select Image from tblImages where(Description like '%' + @des + '%')";
        SqlCommand comm = new SqlCommand(find, conn);
        comm.Parameters.Add("@des", SqlDbType.VarChar).Value = imgsearch.Text;
        conn.Open();
        try
        {
           Object image= comm.ExecuteNonQuery();
            if (image != null && !Convert.IsDBNull(image))
            {
                SearchImg.ImageUrl = "~/images/" + imgsearch.Text + ".PNG";
                imgsearch.Text = "";
            }
                 
            else
            {
                SearchImg.ImageUrl = "~/images/learning.png";
                String Display = "Your find picture is not avaiable";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' " + Display + " ');", true);
            }
        }
            finally{
            conn.Close();
        }

        
    }
    }
}