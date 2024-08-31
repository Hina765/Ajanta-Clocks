using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Login_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtunm.Focus();
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|Datadirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection cn = new SqlConnection(constr);
        cn.Open();
        string str = "select * from Admin_Login where unm=@unm and psw=@psw";
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.Parameters.AddWithValue("@unm", txtunm.Text);
        cmd.Parameters.AddWithValue("@psw", txtpsw.Text);
        int ans = cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cn.Close();
        if (dt.Rows.Count > 0)
        {
            //Session["user"] = txtunm.Text;
            Response.Redirect("~/Admin/Admin_Home.aspx");
        }
        else
        {
            txtunm.Text = "";

            lblmsg.Text = "Invalid Username And Password..";
        }
    }
}