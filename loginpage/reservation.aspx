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
        </style>
</head>

<body class="container" style="background-image:url('Image/12.jpg'); width:100%; height:100%;">
    <div style="height:18px;"></div>
    <div style="height:120px;">
        <div style="text-align:center;color:wheat; font-weight:bold;font-size:80px;background-color:rgb(0 0 0 / 0.70);border-radius:20px;padding:20px;">
            <h1>Reservation System</h1>
        </div>
    </div>

    <form id="form1" runat="server" style="background-color:rgb(0 0 0 / 0.70); color:white; margin:auto; padding:20px; border-radius:20px;">





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
               <td><asp:TextBox ID="TextBox1" runat="server" CssClass="new2" Height="25px" Width="344px"></asp:TextBox></td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="167px" CssClass="new1">
                        <asp:ListItem>9.00 am</asp:ListItem>
                        <asp:ListItem>1.00pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>


            <tr>
                <td style="height:10px;"></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Number of Studenrts"></asp:Label></td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="End Time"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="344px" CssClass="new1"></asp:TextBox></td>
                <td>
                     <asp:DropDownList ID="DropDownList2" runat="server" Height="38px" Width="167px" CssClass="new1">
                        <asp:ListItem>12.00pm</asp:ListItem>
                        <asp:ListItem>4.30pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style="height:25px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Booking Date"></asp:Label></td>
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
                    <asp:Label ID="Label1" Text="Room Selection" runat="server"></asp:Label>
                    <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style7" Width="125px" ForeColor="GreenYellow">
                        <asp:ListItem>L001</asp:ListItem>
                        <asp:ListItem>study room2</asp:ListItem>
                        <asp:ListItem>studyroom3</asp:ListItem>
                        <asp:ListItem>studyroom4</asp:ListItem>
                        <asp:ListItem>studyroom5</asp:ListItem>
                        <asp:ListItem>studyroom6</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="height:50px;"></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Check Availability" Width="193px" CssClass="btn1" />
                    <asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" Text="Reserve Now" Width="193px" CssClass="btn2" />
                </td>
                    

            </tr>
            <tr>
                <td style="height:40px;"></td>
            </tr>
            
        </table>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Width="731px"></asp:GridView>
                </td>
            </tr>
        </table>
        
    
    </form>
</body>
</html>
