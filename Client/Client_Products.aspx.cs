using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Client_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {
            Label3.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label3.Text = "0";
        }


    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("Client_AddtoCart.aspx?Id=" + e.CommandArgument.ToString() + "&pquantity=" + dlist.SelectedItem.ToString());
    }
    
}