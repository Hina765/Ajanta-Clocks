using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        string filename = File1.PostedFile.FileName;
        Server.HtmlEncode(File1.FileName);
        string ext = System.IO.Path.GetExtension(filename);
        if ((ext == ".jpg") || (ext == ".jpeg") || (ext == ".png") || (ext == ".bmp"))
        {
            File1.SaveAs(Server.MapPath("~/Images/" + filename));


            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string str = "insert into Products values(@pnm,@price,@descr,@img,@quantity)";
            SqlCommand cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@pnm", txtpnm.Text);
            cmd.Parameters.AddWithValue("@price", txtprice.Text);
            cmd.Parameters.AddWithValue("@descr", txtdesc.Text);
            cmd.Parameters.AddWithValue("@img","~/Images/"+filename);
            cmd.Parameters.AddWithValue("@quantity", txtquantity.Text);
            int ans = cmd.ExecuteNonQuery();
            if (ans > 0)
                lblsucces.Text = "Data added succesfully...";
            txtpnm.Text = "";
            txtprice.Text = "";
            txtdesc.Text = "";
            txtquantity.Text = "";

        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtpnm.Text = "";
        txtprice.Text = "";
        txtdesc.Text = "";
        txtquantity.Text = "";
    }
}