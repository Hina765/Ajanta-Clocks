using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into AboutUs values(@img,@AU_Desc)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@img",FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@AU_Desc",txtdesc.Text);

        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
            lblmsg.Text = "Data added succesfully...";
            txtdesc.Text = "";
       
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtdesc.Text = "";
        
    }
}