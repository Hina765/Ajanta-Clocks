<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_Registration.aspx.cs" Inherits="Client_Client_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
     <center>
    <table>
        <tr>
            <td style="font-size:xx-large; font-family: 'Century Gothic'; font-weight: 500; color: #003300;" align="center">Registration Form</td>
        </tr>
        <tr>
            <td>
                <br/>
            </td>
         </tr>
    </table>
    <table style="border:groove;">
        <tr><td><br /></td></tr>
         <tr>
             <td>
                 &nbsp;&nbsp;&nbsp;<asp:Label ID="lblusernm" runat="server" Text="Username :"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="txtunm" runat="server" CssClass="field" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="requnm" runat="server" ErrorMessage="Enter Username" ControlToValidate="txtunm" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                 &nbsp;&nbsp;&nbsp;<asp:Label ID="lblpsw" runat="server" Text="  Password :"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="txtpsw" runat="server" TextMode="Password" CssClass="field" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqpsw" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpsw" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
                 &nbsp;&nbsp;&nbsp;<asp:Label ID="lblemail" runat="server" Text="  Email ID :"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="field" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Enter Email ID" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
               &nbsp;&nbsp;&nbsp; <asp:Label ID="lblgender" runat="server" Text="  Gender :"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmobile" runat="server" Text="  Mobile No. :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server" CssClass="field" MaxLength="10" Width="200px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="regmobile" runat="server" ErrorMessage="Enter Your Mobile No." ControlToValidate="txtmobile" Font-Bold="True" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lbladd" runat="server" Text="  Address :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" CssClass="field" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqadd" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="txtadd" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lblcity" runat="server" Text="  City :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" CssClass="field" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqcity" runat="server" ErrorMessage="Enter Your City" ControlToValidate="txtcity" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lblstate" runat="server" Text="State :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" CssClass="field" Width="200px"></asp:TextBox>
                 <br />
                <asp:RequiredFieldValidator ID="reqstate" runat="server" ErrorMessage="Enter Your State Name" ControlToValidate="txtstate" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lblcountry" runat="server" Text="Country :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server" CssClass="field" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqcountry" runat="server" ErrorMessage="Enter Your Country Name" ControlToValidate="txtcountry" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnregister" runat="server" Text="Register" BackColor="Black" ForeColor="White" Width="100px" Font-Names="Calibri" Font-Bold="True" OnClick="btnregister_Click"></asp:Button>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnclear" runat="server" Text="Clear" BackColor="Black" ForeColor="White" Width="100px" Font-Names="Calibri" Font-Bold="True" OnClick="btnclear_Click"></asp:Button>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr><td><br /></td></tr>
        <tr align="center">
            <td style="font-family: Calibri;">
                Already a member? <asp:HyperLink ID="HyperLink1" runat="server" Text="Login" NavigateUrl="~/Client/Client_Login.aspx" Font-Names="Calibri" ForeColor="Black"/>
            </td>
        </tr>
    </table>
</center>

</asp:Content>

