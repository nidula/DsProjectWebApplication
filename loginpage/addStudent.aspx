﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addStudent.aspx.cs" Inherits="loginpage.addStudent1" %>

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
            <asp:Button ID="Button5" BackColor="Black" ForeColor="GreenYellow" runat="server" Text="<< BACK" OnClick="Button5_Click" />
        </div>
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
                    <asp:Label ID="lblId" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Add Student" CssClass="btn01" OnClick="Button1_Click" /></td>
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
                    <asp:Button ID="Button2" runat="server" Text="Update Student" CssClass="btn01" OnClick="Button2_Click1" /></td>
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
                    <asp:Button ID="Button3" runat="server" Text="Delete Student" CssClass="btn01" OnClick="Button3_Click1" /></td>
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
                    <asp:Button ID="Button4" runat="server" Text="Clear" CssClass="btn01" OnClick="Button4_Click" /></td>
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
                    <td>
                        <div style="width:50px;"></div>
                    </td>
                    <td class="auto-style15">

                        <asp:GridView ID="GridView1" runat="server" Width="868px" CellPadding="3" ShowHeaderWhenEmpty="True" EmptyDataText = "No Records Found" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="UId" HeaderText="Student ID" />
                                <asp:BoundField DataField="F_name" HeaderText="Student First Name" />
                                <asp:BoundField DataField="L_name" HeaderText="Student Last Name" />
                                <asp:BoundField DataField="Contact" HeaderText="Contact Number" />
                                <asp:BoundField DataField="Address" HeaderText="Postal Address" />
                                <asp:BoundField DataField="Batch" HeaderText="Batch" />
                                <asp:BoundField DataField="Degree" HeaderText="Degree" />
                                <asp:BoundField DataField="Password" HeaderText="Password" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
