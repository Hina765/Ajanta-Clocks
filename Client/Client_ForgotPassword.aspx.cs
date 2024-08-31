using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Client_ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = "";
        SqlConnection con = newSqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = newSqlCommand("select username, password from tbl_data where email=@email", con);
        cmd.Parameters.AddWithValue("email", TextBox1.Text);
        con.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                username = sdr["username"].ToString();
                password = sdr["password"].ToString();

            }

        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = newMailMessage();
            msg.From = newMailAddress("nilusilu3@gmail.com");
            msg.To.Add(TextBox1.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;

            SmtpClient smt = newSmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = newNetworkCredential();
            ntwd.UserName = "nilusilu3@gmail.com"; //Your Email ID  
            ntwd.Password = ""; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            lbmsg.Text = "Username and Password Sent Successfully";
            lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }

    private SqlCommand newSqlCommand(string v, SqlConnection con)
    {
        throw new NotImplementedException();
    }

    private MailMessage newMailMessage()
    {
        throw new NotImplementedException();
    }

    private MailAddress newMailAddress(string v)
    {
        throw new NotImplementedException();
    }

    private SqlConnection newSqlConnection(string v)
    {
        throw new NotImplementedException();
    }

    private SmtpClient newSmtpClient()
    {
        throw new NotImplementedException();
    }

    private NetworkCredential newNetworkCredential()
    {
        throw new NotImplementedException();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}