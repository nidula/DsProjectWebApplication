<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Study.aspx.cs" Inherits="loginpage.Study" %>

<!DOCTYPE html>

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
            <h1>Study Room Management</h1>
        </div>
    </div>

     <%
                                        if (Session["error"] != null)
                                        {
                                            string error = Convert.ToString(Session["error"]);
                                            lblErr.Text = error;
                                        %>
                                        <div class='alert alert-danger alert-dismissible'>
                                          <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                                          <h4><i class='icon fa fa-warning'></i> Error!</h4>
                                            <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
                                        </div>
                                        <%
                                                Session["error"] = null;
                                            }
                                            if(Session["success"]!=null)
                                            {
                                                lblSuc.Text = Convert.ToString(Session["success"]);
                                          %>
                                        <div class='alert alert-success alert-dismissible'>
                                          <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                                          <h4><i class='icon fa fa-check'></i> Success!</h4>
                                            <asp:Label ID="lblSuc" runat="server" Text=""></asp:Label>
                                        </div>
                                        <%
                                                Session["success"] = null;
                                            }
                                        %>

    <form id="form1" runat="server" style="background-color:rgb(0 0 0 / 0.70); color:white; margin:auto; padding:20px; border-radius:20px;">
        <div>
            <table>
                <tr>
                    <td>
                        <table style="text-align:center; border:none; color:white;">
            <tr>
                <td>
                    SID</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="Add StudyRoom" CssClass="btn01" OnClick="Button1_Click" Width="143px" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    Floor</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="Update StudyRoom" CssClass="btn01" Width="144px" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    Room Type</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="new1">
                        <asp:ListItem>Non AC</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="Delete StudyRoom" CssClass="btn01" Width="144px" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    Location</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="new1">
                        <asp:ListItem>FOC</asp:ListItem>
                        <asp:ListItem>FOB</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn01" OnClick="Button4_Click" Width="143px" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
             <tr>
                <td>
                    Capacity</td>
            </tr>
            <tr>
               <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="new1"></asp:TextBox>
                </td>
            </tr>

        </table>
                    </td>
                    <td class="auto-style15">

                        <asp:GridView ID="GridView1" runat="server" Width="875px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        </asp:GridView>

                    </td>
                </tr>
            </table>
        </div>
        
      
        

    </form>
</body>
</html>
