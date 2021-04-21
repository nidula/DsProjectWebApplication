<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addStudent.aspx.cs" Inherits="loginpage.addStudent1" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />

    <style type="text/css">
        .auto-style1 {
            background: transparent;
            color: #fff;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 77%;
            border: solid 1px green;
            background: #CCFFCC;
            margin-left: 230px;
            height: 71px;
        }
        .auto-style3 {
            border: solid 1px green;
            background: #FFE8D9;
        }
        .auto-style5 {
            height: 84px;
        }
        .auto-style6 {
            text-align: right;
            color: Green;
            width: 173px;
            height: 58px;
        }
        .auto-style7 {
            height: 58px;
        }
        .auto-style12 {
            background: #ff6600;
            color: #fff;
            font-weight: bold;
            border: solid 2px green;
            cursor: pointer;
            transition: background-color 1s ease;
            background: #ff6600;
        }
        .auto-style13 {
            text-align: right;
            color: Green;
            height: 58px;
        }
        .new1{
            background-color:rgb(72 70 70 / 0.63);
            color:greenyellow;
            
        }
        .btn01{
            width:120px;
            height:40px;
            background-color:rgb(255 175 0 / 0.60);
            color:black;
            font-weight:bold;
            border-radius:10px;
        }
        .btn01:hover{
            background-color:#df880c;
        }
    </style>

</head>
<body class="container" style="background-image:url('Image/12.jpg'); width:100%; height:100%;">

    <div style="height:18px;"></div>
    <div style="height:120px;">
        <div style="text-align:center;color:wheat; font-weight:bold;font-size:80px;background-color:rgb(0 0 0 / 0.70);border-radius:20px;padding:20px;">
            <h1>Student Management</h1>
        </div>
    </div>
    <form id="form1" runat="server" style="background-color:rgb(0 0 0 / 0.70); color:white; margin:auto; padding:20px; border-radius:20px;">
        <table style="text-align:center; border:none; color:white;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Update Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Delete Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td></td>
            </tr>

        </table>
      
        

    </form>
</body>
</html>
