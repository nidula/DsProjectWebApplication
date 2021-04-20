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
    </style>

</head>
<body>
    <form id="form1" runat="server">
      <div id="head">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="dlibrary500.png" 
            Width="500px" />
    
    </div>
        <div id="main"><div id="menu">
        <table style="width:100%">
            <tr>
                <td class="tblhead">
                    welcome
                    <asp:Label ID="lblname" runat="server" ForeColor="White"></asp:Label>
                    </td>
            </tr>
            <br />
            <tr>
                <td> 
                    <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="ADD Student" 
                        PostBackUrl="" CausesValidation="False" />
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" CssClass="btnmenu" 
                        Text="Table Reservation" CausesValidation="False" 
                        PostBackUrl="~/reservation.aspx" />
                </td>
            </tr>
            <br />
             <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btnmenu" 
                        Text="Reservation Details" CausesValidation="False" 
                        PostBackUrl="" />
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Add Study Room" 
                        PostBackUrl="~/Addbook.aspx" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="LogOut" 
                        PostBackUrl="~/Addbook.aspx" CausesValidation="False" />
                </td>
            </tr>

        </table>
        </div>
           <table class="auto-style2">
               <tr>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style1" Text="ADD Student" 
                        PostBackUrl="" CausesValidation="False" Height="54px" Width="767px" />
                </tr>
               <tr>
        <td>
            &nbsp;</td>
    </tr>

               <tr>
                   <td class="auto-style5">
                        <table align="center" class="style1">
                             <tr>
                    <td class="auto-style6">
                        Student Name :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtsname" runat="server" CssClass="auto-style3" Width="178px" Height="28px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtsname" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style7">
                                 </td>
                </tr>
               
              <tr>
                    <td class="auto-style6">
                        Student Id :</td>
                    <td class="auto-style7">
                         <asp:TextBox ID="txtcity" runat="server" CssClass="auto-style3" Width="176px" Height="28px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                                </td>
                </tr>

            <tr>
                    <td class="auto-style13">
                        Email : </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style3" Height="28px" Width="177px"></asp:TextBox>
                            
                        </td>
                    <td class="auto-style7">
                        </td>
             </tr>


               <tr>
                    <td class="auto-style13">
                        Password : </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtpass" runat="server" CssClass="auto-style3" Height="28px" Width="178px"></asp:TextBox>
                            
                        </td>
                    <td class="auto-style7">
                        </td>
                </tr>
                             <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" CssClass="auto-style12"
                            Text="ADD Student" Height="38px" Width="199px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
               
                            </table>
                   </td>
               </tr>
               
             
                   </table>        
           </form>
</body>
</html>
