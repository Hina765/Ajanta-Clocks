<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_Products.aspx.cs" Inherits="Admin_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
    <center>
<div>
    <fieldset>
    <legend align="center" style="font-family:'Century Gothic';">
                <h1>Add Products</h1>
            </legend>
       <br /><br />

    <table style="border:groove;">
        <tr>
            <td>
                <asp:Label ID="lblpnm" runat="server" Text="Enter Product Name:" Font-Bold="True"  Font-Size="17px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpnm" runat="server" Width="206px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqpnm" runat="server" ControlToValidate="txtpnm" ErrorMessage="Enter Product Name" Font-Bold="True" Font-Size="17px" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblprice" runat="server" Text="Enter Price:"  Font-Bold="True"  Font-Size="17px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprice" runat="server" Width="206px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqprice" runat="server" ControlToValidate="txtprice" ErrorMessage="Enter Price" Font-Bold="True" Font-Size="17px" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Enter Description:"  Font-Bold="True"  Font-Size="17px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"/>
                <br />
                 <asp:RequiredFieldValidator ID="reqdesc" runat="server" ControlToValidate="txtdesc" ErrorMessage="Enter Description" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="lblimg" runat="server" Text="Enter Product Image:" Font-Bold="True" Font-Size="17px"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="File1" runat="server" Width="230px" Style="font-size: large" />
                <br />
                <asp:RequiredFieldValidator ID="reqimg" runat="server" ControlToValidate="File1" ErrorMessage="Select Image" Font-Bold="True" Font-Size="17px" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblquantity" runat="server" Text="Quantity:" Font-Bold="True" Font-Size="17px"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtquantity" runat="server"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="reqQuantity" runat="server" ControlToValidate="txtquantity" ErrorMessage="Enter Quantity" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnadd" runat="server" Text="Add"  Width="100px" OnClick="btnadd_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Clear" Width="100px" OnClick="btnclear_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsucces" runat="server" ForeColor="Blue" Font-Bold="True"/>
            </td>
        </tr>
    </table>
    <br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#663300" NavigateUrl="~/Admin/Product_Data.aspx">Click Here to Edit and Delete Products...</asp:HyperLink>
    </fieldset>
</div>

<div>

</div>
</asp:Content>

