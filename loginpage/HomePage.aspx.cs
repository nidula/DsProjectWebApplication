﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class addStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // Invalid method do not use this
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("addStudent.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("reservation.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Study.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            // No Use
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}