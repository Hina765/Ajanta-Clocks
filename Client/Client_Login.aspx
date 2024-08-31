<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_Login.aspx.cs" Inherits="Client_Client_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br /><br /><br /><br />
    <center>
    <table style="border:groove;">
        <tr>
            <td  style="font-size:xx-large; font-family: 'Century Gothic'; font-weight: 500; color: #003300;" >Login</td>
        </tr>
        <tr>
            <td>
                <br/>
            </td>

        </tr>
        
        <tr>
            <td>
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" placeholder="Email Address *" CssClass="field" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:TextBox ID="txtpsw" runat="server" TextMode="Password" placeholder="Password *" CssClass="field" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqpsw" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpsw" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hyprfpsw" runat="server" Text="Lost your password?" NavigateUrl="~/Client/Client_ForgotPassword.aspx" Font-Names="Calibri" ForeColor="Black"></asp:HyperLink>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Log In" BackColor="Black" ForeColor="White" Width="200px" Font-Names="Calibri"></asp:Button>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Calibri'">
                Not a member?<asp:HyperLink ID="HyperLink1" runat="server" Text="Register" NavigateUrl="~/Client/Client_Registration.aspx" Font-Names="Calibri" ForeColor="Black"/>
            </td>
        </tr>
    </table>
</center>

</asp:Content>

