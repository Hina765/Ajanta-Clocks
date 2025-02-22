﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Product_Data.aspx.cs" Inherits="Admin_Product_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div align="center">
    <fieldset>
        <legend align="center" style="font-family:'Century Gothic';">
            <h1>Products Data</h1>
        </legend>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="pnm" HeaderText="pnm" SortExpression="pnm" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="descr" HeaderText="descr" SortExpression="descr" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]" DeleteCommand="delete from Products where Id=@Id" UpdateCommand="update Products set pnm=@pnm, price=@price, descr=@descr,img=@img, quantity=@quantity where Id=@Id;">
         <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="pnm" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="price" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="descr" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="img" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="quantity" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

