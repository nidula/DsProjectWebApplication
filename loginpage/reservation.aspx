<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="loginpage.adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation</title>
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
        .auto-style1 {
            width: 100%;
            height: 437px;
            background-color: #99FFCC;
        }
        .auto-style2 {
            width: 223px;
        }
        .auto-style3 {
            width: 223px;
            height: 72px;
        }
        .auto-style4 {
            height: 72px;
            width: 771px;
        }
        .auto-style5 {
            background-color: #FFCCCC;
            height: 80px;
            text-align: center;
        }
        .auto-style6 {
            width: 771px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center"  cellspacing="0" class="style1">
                <tr>
                    <td class="auto-style5">
                        <span class="style3"> &nbsp; Study Room Reservation System &nbsp; </span>
                    </td>
                </tr>
            </table>
            <br /><br />

        </div>
        <table class="auto-style1" border="1" align="center">
            <tr>
                <td class="auto-style2">Student Id</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="344px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Number of Students</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="344px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date</td>
                <td class="auto-style6">
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="318px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Select Time</td>
                <td class="auto-style4">Start Time&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="167px">
                        <asp:ListItem>9.00 am</asp:ListItem>
                        <asp:ListItem>1.00pm</asp:ListItem>
                    </asp:DropDownList>
&nbsp;End Time&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="38px" Width="167px">
                        <asp:ListItem>12.00pm</asp:ListItem>
                        <asp:ListItem>4.30pm</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="44px" Text="Check Availability" Width="193px" />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
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
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" Text="Reserve Now" Width="193px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
