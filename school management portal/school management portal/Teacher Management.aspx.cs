using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using static System.Net.WebRequestMethods;

namespace school_management_portal
{
    public partial class Teacher_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvTeachers.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            SqlCommand cmd = new SqlCommand("Insert into Teacher1 ( FirstName, LastName, Email,Phone) VALUES ( @FirstName, @LastName, @Email, @Phone)", conn);

            cmd.Parameters.AddWithValue("@TeacherID", TxtTeacherID.Text);
            cmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", TxtLastName.Text);
            cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
            cmd.Parameters.AddWithValue("@Phone", TxtPhone.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Teachers Added Successfully");
            Response.Redirect("TeacherManagment.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}