<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="loginpage.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
            <h1>Admin Portal</h1>
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
                <td><asp:Label ID="Label1" runat="server" Text="Admin ID"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox1" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="Add Admin" CssClass="btn01" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Admin First Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="Update Admin" CssClass="btn01" OnClick="Button2_Click" /></td>
            </tr>
            <tr>
                <td style="height:10px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Admin Last Name"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="new1"></asp:TextBox></td>
                <td style="width:20px;"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="Delete Admin" CssClass="btn01" OnClick="Button3_Click" /></td>
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

                        <asp:GridView ID="GridView1" runat="server" Width="868px" ShowHeaderWhenEmpty="True" EmptyDataText = "No Records Found" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="10" ForeColor="Black" AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CaptionAlign="Top" CellSpacing="2" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="UId" HeaderText="Admin ID" >
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="F_name" HeaderText="Admin First Name" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="L_name" HeaderText="Admin Last Name" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Contact" HeaderText="Contact Number" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Address" HeaderText="Postal Address" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Password" HeaderText="Password" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

                   

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
