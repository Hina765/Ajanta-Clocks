using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into ContactUs values(@cnm,@onm,@address,@email,@contact)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@cnm", txtcnm.Text);
        cmd.Parameters.AddWithValue("@onm", txtonm.Text);
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
        int ans = cmd.ExecuteNonQuery();
        lblmsg.Text = "Data added successfully...";
        txtcnm.Text = "";
        txtonm.Text = "";
        txtadd.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtcnm.Text = "";
        txtonm.Text = "";
        txtadd.Text = "";
        txtemail.Text = "";
        txtcontact.Text = "";
    }
}