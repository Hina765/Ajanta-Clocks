<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_AddtoCart.aspx.cs" Inherits="Client_Client_AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   <p>
        You Have
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;Product in Your Cart
    </p>
    <p>
        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Client/ClientIceCream.aspx" Font-Bold="True" ForeColor="Yellow">Continue Shopping</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr.no">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="id" HeaderText="Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="p_nm" HeaderText="Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="p_img" HeaderText="Image">
                    <ControlStyle Height="200px" Width="200px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="p_price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="p_total" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle ForeColor="Yellow" Height="75px" />
        </asp:GridView>
    </p>
  
   
       
</asp:Content>



