<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="Client_Feedback.aspx.cs" Inherits="Client_Client_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<center>
<div>
<fieldset>
    <legend align="center" style="font-family:'Century Gothic';">
                <h1>Feedback Form</h1>
            </legend>
       <br /><br />
    
    
   
    <table style="border:groove;">
        <tr>
            <td>
                <asp:TextBox ID="txtnm" runat="server" Width="200px" placeholder="Your Name *"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqnm" runat="server" ControlToValidate="txtnm" ErrorMessage="Enter Your Name" Font-Bold="True" Font-Size="17px" ForeColor="red" />
            </td>
        </tr>
         <tr>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Width="200px" placeholder="Email ID *" TextMode="Email"></asp:TextBox>
                <br />
                 <asp:RequiredFieldValidator ID="reqemail" runat="server" ControlToValidate="txtmail" ErrorMessage="Enter Email ID" Font-Bold="True" Font-Size="17px" ForeColor="red"/>
            </td>
        </tr>
         <tr>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Width="200px" placeholder="Feedback *" TextMode="MultiLine"></asp:TextBox>
                <br />
                    <asp:RequiredFieldValidator ID="reqmsg" runat="server" ControlToValidate="txtmsg" ErrorMessage="Enter Your Feedback" Font-Bold="True" Font-Size="17px" ForeColor="red"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" Width="100px" OnClick="btnsubmit_Click"></asp:Button>
            &nbsp;
                <asp:Button ID="btnclear" runat="server" Font-Bold="True" OnClick="btnclear_Click" Text="Clear" />
            </td>
        </tr>
       <tr>
           <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
           </td>
       </tr>
    </table>
</fieldset>
</div>
</center>

</asp:Content>

