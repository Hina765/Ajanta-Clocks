<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_ContactUs.aspx.cs" Inherits="Admin_Admin_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<center>
    <div>
        <fieldset>
            <legend align="center" style="font-family:'Century Gothic';">
                <h1>
                    Contact Us
                </h1>
            </legend>
<br /><br />
       
            <table style="border:2px solid black; height:250px; width:416px;">
                
                <tr>
                    <td>
                        <asp:Label ID="lblcnm" runat="server" Text="Company Name:" Font-Size="20px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcnm" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="reqcnm" runat="server" ErrorMessage="Enter Company Name" ControlToValidate="txtcnm" Font-Bold="True" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblonm" runat="server" Text="Owner Name:" Font-Size="20px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtonm" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="reqonm" runat="server" ErrorMessage="Enter Owner Name" ControlToValidate="txtonm" Font-Bold="True" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbladd" runat="server" Text="Address:" Font-Size="20px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="reqadd" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtadd" Font-Bold="True" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblemail" runat="server" Text="Email ID:" Font-Size="20px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email" Width="160px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Enter Email Id" ControlToValidate="txtemail" Font-Bold="True" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcontact" runat="server" Text="Contact No:" Font-Size="20px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Valid Number" Font-Bold="True" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="True" Font-Size="17px" OnClick="btnadd_Click"></asp:Button>
                    </td>
                    <td>
                        <asp:Button ID="btnclear" runat="server" Text="Clear" Font-Bold="True" Font-Size="17px" OnClick="btnclear_Click"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
             </table>
             <br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="16pt" Font-Underline="True" ForeColor="#663300" NavigateUrl="~/Admin/ContactUs_Data.aspx">Click Here to Edit and Delete Information...</asp:HyperLink>
    </fieldset>
    </div>
</center>
</asp:Content>

