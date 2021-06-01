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
            //Add reservation

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
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
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
            TextBox1.Text = id;
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

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Chat eke code eka
           
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
    }
}