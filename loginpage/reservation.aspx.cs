using Booking.API.Entities;
using loginpage.Controller;
using StudyRoom.API.Model;
using System;
using System.Collections.Generic;
using System.Data;
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
            BindGrid();
            BinRoom();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //delete
            Button1.Enabled = true;

            String id = lblId.Text;
            int ids = Convert.ToInt32(id);
            bool uc = BookingController.DeleteBooking(ids);
            if (!uc)
            {
                Session["error"] = "Booking didn't Deleted";
            }
            else
            {
                Session["success"] = "Booking Deleted";
                Button1.Enabled = true;
                BindGrid();
                Clean();
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Clean();
        }

        void Clean()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Button1.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //not use
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Bid = Convert.ToInt32(id);
            Book uc = BookingController.GetBookings(Bid);
            TextBox1.Text = id;
            TextBox2.Text = Convert.ToString(uc.StudentCount);
            TextBox3.Text = uc.Purpose;

        }

        private void BindGrid()
        {
            List<Book> BookingList = BookingController.GetBookings();

            int count = BookingList.Count;
            if (count != 0)
            {
                for (int i = 0; i < count; i++)
                {
                    int c = BookingList[i].slot;
                    if (c == 1)
                    {
                        BookingList[i].slo = "Evening";
                    }
                    else
                    {
                        BookingList[i].slo = "Morning";
                    }
                }
            }

            GridView1.DataSource = BookingList;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //no  use
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            // no use
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
        {
            //(GridView1.Rows[e.NewSelectedIndex].Cells[1].Text);
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Uid = Convert.ToInt32(id);
            Book uc = BookingController.GetBookings(Uid);
            lblId.Text = Convert.ToString(uc.BId);
            TextBox1.Text = Convert.ToString(uc.UserId);
            TextBox2.Text = Convert.ToString(uc.StudentCount);
            TextBox3.Text = uc.Purpose;
            DateTime dt = Convert.ToDateTime(uc.ReservationDate);
            Calendar1.TodaysDate = dt;
            int sl = uc.slot;
            if (sl != 0)
            {
                DropDownList1.SelectedValue = "Evening";
            }
            else {

                DropDownList1.SelectedValue = "Morning";
            }

            DropDownList2.SelectedValue = Convert.ToString(uc.SID);
            Button1.Enabled = false;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
          
           
        }

        void BinRoom()
        {
            List<Rooms> rooms = StudyRoomController.GetRooms();

            DataTable dt = new DataTable();
            dt = StudyRoomController.ToDataTable(rooms);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "SId";
            DropDownList2.DataValueField = "SId";
            DropDownList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // reserve
            int sid = Convert.ToInt32(TextBox1.Text);
            int studentCount = Convert.ToInt32(TextBox2.Text);
            string purpose = TextBox3.Text;
            string slt = DropDownList1.SelectedValue;
            int slot;
            if (slt != "Evening")
            {
                slot = 0;
            }
            else
            {
                slot = 1;
            }

            string room = DropDownList2.SelectedValue;
            DateTime date = Calendar1.SelectedDate;
            string dt = date.ToString("yyyy-MM-dd");

            Book us = new Book();
            us.SID = Convert.ToInt32(room);
            us.slot = slot;
            us.StudentCount = studentCount;
            us.UserId = sid;
            us.Purpose = purpose;
            us.ReservationDate = dt;

            bool uc = BookingController.AddBooking(us);
            if (!uc)
            {
                Session["error"] = "Booking not added";
            }
            else
            {
                Session["success"] = "Booking added";
                BindGrid();
                Clean();
            }
        }
    }
}