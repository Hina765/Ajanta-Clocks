<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_AboutUs.aspx.cs" Inherits="Admin_Admin_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
 <center>
<div>
<fieldset>
    <legend align="center" style="font-family:'Century Gothic';">
                <h1>About Us</h1>
            </legend>
       <br /><br />
    
    
   
    <table style="border:groove;">
        <tr>
            <td>
                <asp:Label ID="lblimg" runat="server" Text="Enter Image :" Font-Size="20px"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Enter Description : " Font-Size="20px"/>
            </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="reqdesc" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdesc" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" Font-Bold="True" Font-Size="16px" OnClick="btnInsert_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" Font-Bold="True" Font-Size="16px" style="margin-left: 26px" OnClick="btnClear_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#663300" NavigateUrl="~/Admin/AboutUs_Data.aspx">Click Here to Modify or Remove the Data...</asp:HyperLink>
</fieldset> 
</div>
</center>
</asp:Content>

