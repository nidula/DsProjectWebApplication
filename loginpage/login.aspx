<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="loginpage.WebForm1" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:lightgreen;
            
            
            
        }

        .auto-style1 {
            width: 264px;
        }

    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <table style="margin:auto; border:5px solid white; height:200px; width:20%;margin-top:20% " >
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username" ForeColor="darkgreen"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="darkgreen"></asp:Label></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                </tr>

                 <tr>
                    <td>
                        </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ForeColor="brown" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" foreColor="Red" Height="35px"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
