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

    <style type="text/css">
        .auto-style2 {
            width: 70%;
            border: solid 1px green;
            background: #CCFFCC;
            margin-left: 130px;
            height:99px;
            margin-bottom: 0px;
        }
        .auto-style5 {
            height: 84px;
        }
        .auto-style6 {
            text-align: right;
            color: Green;
            width: 134px;
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
            width: 162px;
        }
        .auto-style14 {
            text-align: right;
            color: Green;
            height: 58px;
            width: 192px;
        }
        .auto-style15 {
            text-align: right;
            color: Green;
            height: 58px;
            width: 75px;
        }
        .auto-style16 {
            text-align: right;
            color: Green;
            height: 58px;
            width: 67px;
        }
        .a{
             color: darkred;

               }
        }
        .auto-style17 {
            width: 662px;
            height: 2px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
      <div id="head">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="dlibrary500.png" 
            Width="500px" />
    
    </div>
        <div id="main">
            <div id="a"><center>
                <br />
                Reservation Details</center></div> 
            <br />

           <table class="auto-style2">
               
        
    </tr>

               <tr>
                   <td class="auto-style5">
                        <table align="center" class="auto-style17">
                             
               
              <tr>
                    <td class="auto-style6">
                        Student Id </td>
                    <td class="auto-style13">
                        No of Students </td>
                    <td class="auto-style16">
                        Date </td>
                  <td class="auto-style15">
                        Time </td>
                   <td class="auto-style14">
                        Study Room No</td>
                </tr>
    
               
                            </table>
                   </td>
               </tr>
               
             
                   </table>     
            </br></br></br></br>
            <br />
            <br />
            <br />
            </br></br>

             <center><td>
                        <asp:Button ID="btn" runat="server" CssClass="auto-style12"
                            Text="Back" Height="38px" Width="199px" />
                    </td></center>
           </form>
</body>
</html>
