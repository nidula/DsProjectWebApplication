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
            Button2.Enabled = false;
            Button3.Enabled = false;
            //DataBind();
            BindGrid();

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
            Clean();
        }

        void Clean()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //No use
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //no Use
        }
        private void BindGrid()
        {
            List<UserData> AdminList = UserController.GetAdminUser();

            GridView1.DataSource = AdminList;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Button1.Enabled = false;
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Uid = Convert.ToInt32(id);
            UserData uc = UserController.GetUsers(Uid);
            TextBox1.Text = id;
            TextBox2.Text = uc.F_name;
            TextBox3.Text = uc.L_name;
            TextBox4.Text = Convert.ToString(uc.Contact);
            TextBox5.Text = uc.Address;
            TextBox8.Text = uc.Password;
            Button2.Enabled = true;
            Button3.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //update student
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
            bool uc = UserController.UpdateAdmin(id, us);
            if (!uc)
            {
                Session["error"] = "Admin didn't Updated";
              
            }
            else
            {
                Session["success"] = "Admin updated";
                Button1.Enabled = true;
                BindGrid();
                Clean();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            bool uc = UserController.DeleteAdmin(id);
            if (!uc)
            {
                Session["error"] = "Admin didn't Deleted";
            }
            else
            {
                Session["success"] = "Admin Deleted";
                Button1.Enabled = true;
                BindGrid();
                Clean();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}