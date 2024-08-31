﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_Feedback.aspx.cs" Inherits="Admin_Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div align="center">
    <fieldset>
        <legend align="center" style="font-family:'Century Gothic';">
            <h1>Client Feedback Data</h1>
        </legend>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nm" HeaderText="nm" SortExpression="nm" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from Feedback where Id=@Id;" SelectCommand="SELECT * FROM [Feedback]">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
        </DeleteParameters>
    </asp:SqlDataSource>
    </fieldset>
</div>
</asp:Content>

