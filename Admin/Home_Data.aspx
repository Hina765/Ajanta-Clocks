﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Home_Data.aspx.cs" Inherits="Admin_Home_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<div align="center">
    <fieldset>
        <legend align="center" style="font-family:'Century Gothic';">
            <h1>Home Data</h1>
        </legend>
    <br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Descr" HeaderText="Descr" SortExpression="Descr" />
                <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from Home where Id=@Id;" SelectCommand="SELECT * FROM [Home]" UpdateCommand="update Home set Descr=@Descr,Img=@Img where Id=@Id;">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Descr" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Img" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </fieldset>
</div>
</asp:Content>

