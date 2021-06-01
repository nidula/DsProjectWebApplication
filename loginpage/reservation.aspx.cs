﻿using Booking.API.Entities;
using loginpage.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class adminpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Add reservation

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Bid = Convert.ToInt32(id);
            Book uc = BookingController.GetBookings(Bid);
            TextBox1.Text = id;
            TextBox2.Text = Convert.ToString(uc.StudentCount);
            
            
        }
    }
}