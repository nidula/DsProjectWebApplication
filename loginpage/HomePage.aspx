<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="loginpage.addStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="dlibrary500.png" 
            Width="500px" />
    
    </div>
        <div id="main"><div id="menu">
        <table style="width:100%">
            <tr>
                <td class="tblhead">
                    welcome
                    <asp:Label ID="lblname" runat="server" ForeColor="White"></asp:Label>
                    </td>
            </tr>
            <br />
            <tr>
                <td> 
                    <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="ADD Student" 
                        PostBackUrl="" CausesValidation="False" />
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" CssClass="btnmenu" 
                        Text="Table Reservation" CausesValidation="False" 
                        PostBackUrl="~/reservation.aspx" />
                </td>
            </tr>
            <br />
             <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btnmenu" 
                        Text="Reservation Details" CausesValidation="False" 
                        PostBackUrl="" />
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Add Study Room" 
                        PostBackUrl="~/Addbook.aspx" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="LogOut" 
                        PostBackUrl="~/Addbook.aspx" CausesValidation="False" />
                </td>
            </tr>

        </table>
        </div>

          &nbsp;

         <table class="style5">
    <tr>
        <td class="tblhead">
            Welcome to NSBM Digital Library System</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Image ID="Image2" runat="server" ImageUrl="lin3.png" />
        </td>
    </tr>
</table> </div>
     
   
    </form>
</body>
</html>
