<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="loginpage.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <style>
        .hero-image {
              background-image: url("Image/login.jpg"); /* The image used */
              background-color: #cccccc; /* Used if the image is unavailable */
              height:740px; /* You must set a specified height */
              background-repeat: no-repeat; /* Do not repeat the image */
              background-size: cover; /* Resize the background image to cover the entire container */
              opacity:80%;
        }
        .btn :hover {
            background-color:#9b30ff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="row" >
        <div class ="col-md-9 hero-image">
        </div>
        <div class ="col-md-3">
            <center>
                <img src="Image/nsbm.png" style="height:150px;width:200px;" /><br/><br />
                <asp:Label ID="Label1" runat="server" Text="Login" style="margin-bottom:10px;"></asp:Label><br /><br />
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
                <asp:TextBox ID="txtUserName" runat="server" class="form-text" style="border-radius:15px; margin-bottom:2%" OnTextChanged="txtUserName_TextChanged" CausesValidation="True" ValidateRequestMode="Enabled"></asp:TextBox><br />
                
                <br />
                <asp:TextBox ID="txtPassword" runat="server" class="form-text" style="border-radius:15px; margin-bottom:2%" TextMode="Password" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                <br />
                
                <asp:Button ID="submitbtn" runat="server" Text="Login" style="border-radius:25px;border:0px;box-shadow:0px 10px 10px 0px;color:white;padding:10px;width:100px;margin-bottom:10px;background-color:purple;" CssClass="btn" OnClick="submitbtn_Click"/>
            </center>
         </div>
    </div>
    </form>
</body>
</html>
