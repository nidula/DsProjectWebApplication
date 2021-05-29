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
    .opacity{
        background-color: rgb(3 124 119 / 0.75);
        color:whitesmoke;
        
    }
    .opacity:hover{
        background-color:rgb(255 219 0 / 0.92);
        color:black;
    }
    .style2{
        font-size:60px;
        font-weight:bold;
        text-align:center;
        color:whitesmoke;
        padding: 20px;
        
    }
        .auto-style1 {
            width: 565px;
            margin: auto;
        }
        .style3{
            margin: auto;
            color: white;
            border-radius:10px;
        }
    </style>
</head>

<body id="repeat" style="background-image: url('Image/12.jpg');">

    <div style="text-align:center; padding:20px; background:linear-gradient(black,transparent);">
        <asp:Label ID="Label1" runat="server" Text="Study Room Reservation System" CssClass="style2"></asp:Label>
        
    </div>
    

  <div style="align-content:center;" class="container">
    <form id="form1" runat="server">       
        <table style="text-align:center; padding:0; margin-top:100px;" class="auto-style1">
            <tr>
                <td><asp:Button ID="Button5" runat="server" Height="200px" Text="Add Student" Width="415px" Font-Size="26px"  CssClass="opacity" OnClick="Button5_Click1"  /></td>
                <td><asp:Button ID="Button6" runat="server" Height="200px" Text="Room Reservation" Width="415px" Font-Size="26px"  CssClass="opacity" OnClick="Button6_Click" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button7" runat="server" Height="200px" Text="Reservation Details" Width="415px" Font-Size="26px" CssClass="opacity" /></td>
                <td><asp:Button ID="Button8" runat="server" Height="200px" Text="Add Study Room" Width="415px" Font-Size="26px"  CssClass="opacity" /></td>
            </tr>
        </table>
         <div style="text-align:center;">

        <asp:Button ID="Button9" runat="server" Height="43px" Text="Logout" Width="132px" BackColor="Red" CssClass="style3" />

    </div>
    </form>
  </div>
   

</body>
</html>
