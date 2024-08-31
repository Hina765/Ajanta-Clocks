<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Admin_Home" %>

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
    
   <br />
    <center>
        <fieldset>
            <legend align="center" style="font-family:'Century Gothic';">
                <h1>Home</h1>
            </legend>
       <br /><br />
        <table style="font-family:Calibri;">
        <tr>
            <td>
                <asp:Label ID="lblimg" runat="server" Text="Select Image :"></asp:Label>
            </td>
            <td>    
                <asp:FileUpload ID="FileUpload1" runat="server"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Enter Description :"></asp:Label>
            </td>
            <td>  
                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine" style="margin-left: 0px" Width="189px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdesc" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click"/>
                <asp:Button ID="btnclear" runat="server" Text="Clear" style="margin-left: 41px"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblsuccess" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
        <br />
            <br /><br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="14pt" Font-Strikeout="False" Font-Underline="True" ForeColor="#663300" NavigateUrl="~/Admin/Home_Data.aspx">Click Here to Modify or Remove the Data...</asp:HyperLink>
        <br />
        
     </fieldset>
    </center>

</div>   

</asp:Content>

