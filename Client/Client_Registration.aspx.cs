using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Client_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into Registration values(@unm,@psw,@email,@gender,@mobile,@address,@city,@state,@country)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@unm",txtunm.Text);
        cmd.Parameters.AddWithValue("@psw",txtpsw.Text);
        cmd.Parameters.AddWithValue("@email",txtemail.Text);
        cmd.Parameters.AddWithValue("@gender",RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@mobile",txtmobile.Text);
        cmd.Parameters.AddWithValue("@address",txtadd.Text);
        cmd.Parameters.AddWithValue("@city",txtcity.Text);
        cmd.Parameters.AddWithValue("@state",txtstate.Text);
        cmd.Parameters.AddWithValue("@country",txtcountry.Text);
        
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
            lblmsg.Text = "Registration Successfull...";
            txtunm.Text = "";
            txtpsw.Text = "";
            txtemail.Text = "";
            RadioButtonList1.SelectedValue = "";
            txtmobile.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtcountry.Text = "";
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtunm.Text = "";
        txtpsw.Text = "";
        txtemail.Text = "";
        RadioButtonList1.SelectedValue = "";
        txtmobile.Text = "";
        txtadd.Text = "";
        txtcity.Text = "";
        txtstate.Text = "";
        txtcountry.Text = "";
    }
}