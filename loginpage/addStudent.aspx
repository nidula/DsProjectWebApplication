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
        .auto-style14 {
            width: 120px;
        }
        .auto-style15 {
            width: 1018px;
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
        <div>
            <table>
                <tr>
                    <td>
                        <table style="text-align:center; border:none; color:white;">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox1" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="Add Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Student First Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="Update Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Student Last Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="Delete Student" CssClass="btn01" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn01" OnClick="Button4_Click" /></td>
            </tr>
             <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Postal Address"></asp:Label></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox5" runat="server" CssClass="new1"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Batch"></asp:Label></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox6" runat="server" CssClass="new1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Degree"></asp:Label></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox7" runat="server" CssClass="new1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="Password"></asp:Label></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox8" runat="server" CssClass="new1"  TextMode="Password"></asp:TextBox></td>
            </tr>

        </table>
                    </td>
                    <td class="auto-style15">

                        <asp:GridView ID="GridView1" runat="server" Width="868px">
                        </asp:GridView>

                    </td>
                </tr>
            </table>
        </div>
        
      
        

    </form>
</body>
</html>
