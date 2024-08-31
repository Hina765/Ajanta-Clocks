using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /*if (Session["user"] == null)
            Response.Redirect("~/Admin/Admin_Home.aspx");*/
    }



    protected void btnadd_Click(object sender, EventArgs e)
    {

        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into Home values(@Desc,@Img)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Desc", txtdesc.Text);
        cmd.Parameters.AddWithValue("@Img",FileUpload1.FileName);
        int ans = cmd.ExecuteNonQuery();
        lblsuccess.Text = "Data Is Added...";
        txtdesc.Text = "";
    }

    
}
