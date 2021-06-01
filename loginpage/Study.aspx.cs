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
            BindGrid();
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
            Clean();
        }

        void Clean()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Uid = Convert.ToInt32(id);
            Rooms uc = StudyRoomController.GetRooms(Uid);
            TextBox1.Text = Convert.ToString(uc.SId);
            TextBox2.Text = Convert.ToString(uc.Floor);
            TextBox3.Text = Convert.ToString(uc.Capacity);
            DropDownList1.SelectedValue = Convert.ToString(uc.Options);
            DropDownList2.SelectedValue = uc.Location;
        }
        private void BindGrid()
        {
            List<Rooms> RoomList = StudyRoomController.GetRooms();

            int count = RoomList.Count;
            if (count != 0)
            {
                for (int i = 0; i < count; i++)
                {
                    int c = RoomList[i].Options;
                    if (c == 1)
                    {
                        RoomList[i].op = "Non AC";
                    }
                    else
                    {
                        RoomList[i].op = "AC";
                    }
                }
            }
            GridView1.DataSource = RoomList;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // update
            int id = Convert.ToInt32(TextBox1.Text);
            int op;
            string floor = TextBox2.Text;
            string capasity = TextBox3.Text;
            string c = DropDownList1.SelectedValue;
            string loc = DropDownList2.SelectedValue;
            if (c == "Non AC")
            {
                op = 1;
            }
            else
            {
                op = 0;
            }

            Rooms us = new Rooms();
            us.SId = id;
            us.Floor = Convert.ToInt32(floor);
            us.Capacity = Convert.ToInt32(capasity);
            us.Location = loc;
            us.Options = op; 
            bool uc = StudyRoomController.UpdateRoom(us);
            if (!uc)
            {
                Session["error"] = "Room didn't Updated";
            }
            else
            {
                Session["success"] = "Room updated";
                Button1.Enabled = true;
                BindGrid();
                Clean();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // delete
            int id = Convert.ToInt32(TextBox1.Text);
            bool uc = StudyRoomController.DeleteRoom(id);
            if (!uc)
            {
                Session["error"] = "Room didn't Deleted";
            }
            else
            {
                Session["success"] = "Room Deleted";
                Button1.Enabled = true;
                BindGrid();
                Clean();
            }
        }
    }
}