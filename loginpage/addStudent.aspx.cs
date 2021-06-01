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
    public partial class addStudent1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
            Button3.Enabled = false;
            BindGrid();
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
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Add Student
            int id = Convert.ToInt32(TextBox1.Text);
            string fname = TextBox2.Text;
            string lname = TextBox3.Text;
            int contact = Convert.ToInt32(TextBox4.Text);
            string address = TextBox5.Text;
            string batch = TextBox6.Text;
            string degree = TextBox7.Text;
            string password = TextBox8.Text;
            UserData us = new UserData();
            us.UId = id;
            us.F_name = fname;
            us.L_name = lname;
            us.Contact = contact;
            us.Address = address;
            us.Batch = batch;
            us.Degree = degree;
            us.Password = password;
            bool uc = UserController.CreateUser(us);
            if (!uc)
            {
                Session["error"] = "User didn't added";
            }
            else
            {
                Session["success"] = "User added";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        private void BindGrid()
        {
            List<UserData> UserList = UserController.GetUsers();

            GridView1.DataSource = UserList;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
             
            Button1.Enabled = false;
            string id = (GridView1.Rows[e.NewSelectedIndex].Cells[1].Text).ToString();
            int Uid = Convert.ToInt32(id);
            UserData uc = UserController.GetUsers(Uid);
            lblId.Text = Convert.ToString(uc.UId);
            TextBox1.Text = id;
            TextBox2.Text = uc.F_name;
            TextBox3.Text = uc.L_name;
            TextBox4.Text = Convert.ToString(uc.Contact);
            TextBox5.Text = uc.Address;
            TextBox6.Text = uc.Batch;
            TextBox7.Text = uc.Degree;
            TextBox8.Text = uc.Password;
            Button2.Enabled = true;
            Button3.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           //ABANDED METHOD
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // no use
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            //update student
            int id = Convert.ToInt32(TextBox1.Text);
            string fname = TextBox2.Text;
            string lname = TextBox3.Text;
            int contact = Convert.ToInt32(TextBox4.Text);
            string address = TextBox5.Text;
            string batch = TextBox6.Text;
            string degree = TextBox7.Text;
            string password = TextBox8.Text;
            UserData us = new UserData();
            us.UId = id;
            us.F_name = fname;
            us.L_name = lname;
            us.Contact = contact;
            us.Address = address;
            us.Batch = batch;
            us.Degree = degree;
            us.Password = password;
            bool uc = UserController.UpdateUser(us);
            if (!uc)
            {
                Session["error"] = "User didn't Updated";
            }
            else
            {
                Session["success"] = "User updated";
                BindGrid();
                Clean();
                Button1.Enabled = true;
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string id = lblId.Text;
            int ids = Convert.ToInt32(id);
            bool uc = UserController.DeleteAdmin(ids);
            if (!uc)
            {
                Session["error"] = "User didn't Deleted";
            }
            else
            {
                Session["success"] = "User Deleted";
                BindGrid();
                Clean();
                Button1.Enabled = true;
            }
        }
    }
}