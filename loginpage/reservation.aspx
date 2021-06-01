<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="loginpage.adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <style type="text/css">
        
        .style1{
                align-content: center;
                padding: initial;
                width: 100%;
                border: 1px solid #00ff00;
        }
        .style2{
            background-color: aquamarine;
            height: 80px;
            text-align: center;
        }
        .style3{
            color:#ff00ff;
            font-size: x-large;
            text-transform: uppercase;

        }
        .new1{
            background-color:rgb(72 70 70 / 0.63);
            color:greenyellow;
            
        }
        .new2{
            background-color:rgb(72 70 70 / 0.63);
            color:greenyellow;
            
        }
        .calender1{
            background-color:rgb(12 124 109 / 0.65);
        }
        .btn1{
            background-color:rgb(0 255 133 / 0.60);
            color:black;
            border-radius:15px;
            font-weight:bold;
        }
        .btn2{
            background-color:rgb(252 0 148 / 0.60);
            color:black;
            border-radius:15px;
            font-weight:bold;
        }
        .btn1:hover{background-color:green;
                    color:white;
        }
        .btn2:hover{background-color:red;
                    color:white;
        }
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            height: 10px;
        }
        </style>
</head>

<body class="container" style="background-image:url('Image/12.jpg'); width:100%; height:100%;">
    <div style="height:18px;"></div>
    <div style="height:120px;">
        <div style="text-align:center;color:wheat; font-weight:bold;font-size:80px;background-color:rgb(0 0 0 / 0.70);border-radius:20px;padding:20px;">
            <h1>Reservation System</h1>
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
            <asp:Button ID="Button4" BackColor="Black" ForeColor="GreenYellow" runat="server" Text="<< BACK" OnClick="Button4_Click" />
        </div>

        <table>
            <tr>
                <td>
                    <table class="auto-style1" border="0" align="center">
            <tr>
                <td style="height:40px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Student ID"></asp:Label></td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Start Time"></asp:Label></td>
            </tr>
            <tr>
                <asp:Label ID="lblId" runat="server" Text="Label" Visible="false"></asp:Label>
               <td><asp:TextBox ID="TextBox1" runat="server" CssClass="new2" Height="25px" Width="344px"></asp:TextBox></td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="167px" CssClass="new1">
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>


            <tr>
                <td class="auto-style2"></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Number of Studenrts"></asp:Label></td>
                <td>
                    <asp:Label ID="Label1" Text="Room Selection" runat="server"></asp:Label>
                    </td>
            </tr>
                        <tr>
                            <td>

                            </td>
                            <td></td>
                        </tr>
            <tr>
                <td><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="344px" CssClass="new1"></asp:TextBox></td>
                <td>
                     <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="new1" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        
                     </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
                        <tr>
                            <td style="height:10px;"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Perpose"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="new1" Width="344px"></asp:TextBox>
                            </td>
                        </tr>

            <tr>
                <td style="height:25px;">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Booking Date" ></asp:Label></td>
            </tr>



            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="290px"  CssClass="calender1"  BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="black" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle Font-Bold="True" Font-Size="12pt" ForeColor="yellow" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                </td>
                <td>
                    
                    <br />
                        
                </td>
            </tr>
            <tr>
                <td style="height:50px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Reserve Now" Width="193px" CssClass="btn1" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" Text="Delete" Width="193px" CssClass="btn2" />
                    
                </td>
           
            </tr>
            <tr>
                <td style="height:8px;"></td>
            </tr>
             <tr>
                <td>
                    <center><asp:Button ID="Button3" runat="server" Height="44px" OnClick="Button3_Click" Text="Clear" Width="240px" CssClass="btn2" /></center>
                </td>
            </tr>
            <tr>
                <td style="height:40px;"></td>
            </tr>
            
        </table>
                </td>
                <td>
                        <div style="width:50px;"></div>
                    </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="514px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging1">
                        <Columns>
                            <asp:BoundField DataField="BId" HeaderText="Reservation ID" />
                            <asp:BoundField HeaderText="Student ID" DataField="UserId" />
                            <asp:BoundField DataField="Purpose" HeaderText="Purpose" />
                            <asp:BoundField HeaderText="Number of Students" DataField="StudentCount" />
                            <asp:BoundField HeaderText="Date" DataField="ReservationDate" />
                            <asp:BoundField HeaderText="Time Slot" DataField="slo" />
                            <asp:BoundField HeaderText="Room Selection" DataField="SId" />
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
        
        
    
    </form>
</body>
</html>
