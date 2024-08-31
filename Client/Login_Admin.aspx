<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Login_Admin.aspx.cs" Inherits="Client_Login_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function preventBack()
        {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div>
 <br /><br /><br /><br /><br />
    

    <table align="center" style="border:groove">
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr>
            <td align="center" style="font-size:xx-large; font-family: 'Century Gothic'; font-weight: 500; color: #003300;" >Admin Login</td>
        </tr>
        <tr>
            <td>
                <br/>
            </td>

        </tr>
        <tr><td></td></tr>
        
        <tr>
            <td>
                <asp:TextBox ID="txtunm" runat="server" placeholder="Username *" CssClass="field" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtunm" Font-Bold="True" ForeColor="Red"/>
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
                <asp:Button ID="btnlogin" runat="server" Text="Log In" BackColor="Black" ForeColor="White" Width="200px" Font-Names="Calibri" PostBackUrl="~/Admin/Admin_Home.aspx" OnClick="btnlogin_Click"></asp:Button>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
         <tr><td></td></tr>
         <tr><td></td></tr>
         <tr><td></td></tr>
    </table>
</div>   

</asp:Content>

