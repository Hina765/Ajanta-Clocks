<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_Products.aspx.cs" Inherits="Client_Client_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .zoom {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <p>
        You Have Product in Your Cart
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;
        <asp:HyperLink ID="HyperLink10" runat="server" Font-Bold="True" NavigateUrl="~/Client/AddToCart.aspx" ForeColor="Yellow">Show Cart</asp:HyperLink>
    </p>
        <div class="auto-style2">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" >
        <ItemTemplate>
            <table class="auto-style2"  border="1"  style="font-size: large">
                <tr>
                    <td>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Product Id:"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("i_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("i_img") %>' Height="300px" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price:"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("i_price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Quantity:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/add.jpg" Width="46px" CommandName="AddToCart" CommandArgument='<%# Eval("Id") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
            </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [i_name], [i_img], [i_price] FROM [IceCream]"></asp:SqlDataSource>

</asp:Content>

