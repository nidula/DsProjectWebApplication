using loginpage.Controller;
using StudyRoom.API.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{
    public partial class Study : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Add Study Room
            int id = Convert.ToInt32(TextBox1.Text);
            int floor = Convert.ToInt32(TextBox2.Text);
            int capacity = Convert.ToInt32(TextBox3.Text);
            int option = Convert.ToInt32(DropDownList1.SelectedIndex);
            string location = DropDownList2.SelectedValue;

            Rooms us = new Rooms();
            us.SId = id;
            us.Floor = floor;
            us.Capacity = capacity;
            us.Options = option;
            us.Location = location;
            
            bool uc = StudyRoomController.CreateRoom(us);
            if (!uc)
            {
                Session["error"] = "Study Room not added";
            }
            else
            {
                Session["success"] = "Study Room added";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}