<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_ContactUs.aspx.cs" Inherits="Client_Client_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />

<div align="center" style="font-family:Calibri;">
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Contacts Us"></asp:Label>
    </h1>
</div>
    
<div align="center">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="border:groove">
                <tr>
                    <td>
                         Company Name :
                         <asp:Label ID="cnmLabel" runat="server" Text='<%# Eval("cnm") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Owner Name :
                        <asp:Label ID="onmLabel" runat="server" Text='<%# Eval("onm") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                         Address :
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email ID :
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                         Contact No. :
                        <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                    </td>
                </tr>
            </table>
           
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cnm], [onm], [address], [email], [contact] FROM [ContactUs]"></asp:SqlDataSource>
</div>
</asp:Content>

