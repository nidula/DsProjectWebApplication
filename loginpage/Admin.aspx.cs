using AdminUser.API.Entities;
using loginpage.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Add Admin
            int id = Convert.ToInt32(TextBox1.Text);
            string fname = TextBox2.Text;
            string lname = TextBox3.Text;
            int contact = Convert.ToInt32(TextBox4.Text);
            string address = TextBox5.Text;
            string password = TextBox8.Text;
            UserData us = new UserData();
            us.UId = id;
            us.F_name = fname;
            us.L_name = lname;
            us.Contact = contact;
            us.Address = address;
            us.Password = password;
            bool uc = UserController.CreateUser(us);
            if (!uc)
            {
                Session["error"] = "Admin didn't added";
            }
            else
            {
                Session["success"] = "Admin added";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";
        }
    }
}