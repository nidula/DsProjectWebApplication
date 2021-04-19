using loginpage.Controller;
using loginpage.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            int uname = Convert.ToInt32(txtUserName.Text);
            string pw = txtPassword.Text;
            Users uc = UserController.LoginValidate(uname,pw);
            if (uc != null)
            {
                Session["Id"] = uname;
                Session["f_name"] = uc.F_name;
                Session["l_name"] = uc.L_name;
                Session["type"] = uc.Type;
                if (uc.Type != 0)
                {
                    Session["error"] = "You are not an admin!";
                }
                else {
                    Response.Redirect("HomePage.aspx");
                }
            }
            
        }
    }
}