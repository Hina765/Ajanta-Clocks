using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Client_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        /* SqlConnection con = new SqlConnection(constr);
         con.Open();
         string str = "insert into Feedback values(@nm,,@email,@msg)";
         SqlCommand cmd = new SqlCommand(str, con);
         cmd.Parameters.AddWithValue("@nm", txtnm.Text);
         cmd.Parameters.AddWithValue("@email", txtmail.Text);
         cmd.Parameters.AddWithValue("@msg", txtmsg.Text);

         int ans = cmd.ExecuteNonQuery();
         if (ans > 0)
         {
             lblmsg.Text = "Data added successfully...";
             txtnm.Text = "";
             txtmail.Text = "";
             txtmsg.Text = "";
         }
         else
             lblmsg.Text = "Not submitted...";
     }*/
        
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into Feedback values(@nm,@email,@msg)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@nm", txtnm.Text);
        cmd.Parameters.AddWithValue("@email", txtmail.Text);
        cmd.Parameters.AddWithValue("@msg", txtmsg.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lblmsg.Text = "Submitted your feedback..";
            txtnm.Text = "";
            txtmail.Text = "";
            txtmsg.Text = "";
        }
        else
            lblmsg.Text = "Sorry..Feedback is not submitted";
    }


    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtnm.Text = "";
        txtmail.Text = "";
        txtmsg.Text = "";
    }
}
