<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_Home.aspx.cs" Inherits="Client_Client_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div align="center" style="font-family:Calibri;">
    <h1>
        [<asp:Label ID="Label1" runat="server" Text="Home Page"></asp:Label>]
    </h1>
</div>
    <div style="border:groove;" align="center">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Desc:
                <asp:Label ID="DescLabel" runat="server" Text='<%# Eval("Desc") %>' />
                <br />
                Img:
                <asp:Label ID="ImgLabel" runat="server" Text='<%# Eval("Img") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
 
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Home]"></asp:SqlDataSource>

 
    
</asp:Content>

