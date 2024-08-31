<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_AboutUs.aspx.cs" Inherits="Client_Client_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />

<div align="center" style="font-family:Calibri;">
    <h1>
        [<asp:Label ID="Label1" runat="server" Text="About Us"></asp:Label>]
    </h1>
</div>
    
<div style="border:groove;" align="center">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            
            <asp:Label ID="AU_DescLabel" runat="server" Text='<%# Eval("AU_Desc") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AU_Desc] FROM [AboutUs]"></asp:SqlDataSource>
</div>
</asp:Content>

