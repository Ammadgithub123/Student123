using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using static System.Net.WebRequestMethods;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Xml.Linq;
using System.Drawing;


namespace school_management_portal
{
    public partial class Students : System.Web.UI.Page
    {
        internal static readonly object Identity;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewStudents_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var cmd = new SqlCommand("insert into Student67 Values('" + TxtFirstName.Text + "','" + TxtLastName.Text + "','" + TxtDOB.Text + "','" + TxtBoxEmail.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Student Data is Added Successfully");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var cmd = new SqlCommand("Update Student67 set Name = '" + TxtFirstName.Text + "','" + TxtLastName.Text + "','" + TxtDOB.Text + "','" + TxtBoxEmail.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Student Data is Updated Successfully");

            //var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            //SqlCommand cmd = new SqlCommand("UPDATE Students SET FirstName='" + TxtFirstName.Text + "', LastName='" + TxtLastName.Text + "', DateofBirth='" + TxtDOB.Text + "', Email='" + TxtBoxEmail.Text +"' WHERE StudentID=@StudentID", conn);

            //cmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text);
            //cmd.Parameters.AddWithValue("@LastName", TxtLastName.Text);
            //cmd.Parameters.AddWithValue("@Email", TxtBoxEmail.Text);
            //cmd.Parameters.AddWithValue("@Phone", TxtDOB.Text);

            //conn.Open();
            //cmd.ExecuteNonQuery();
            //conn.Close();

            // MessageBox.Show("Student Data is Updated Successfully");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var cmd = new SqlCommand("Delete from Student67 where FirstName = '" + TxtFirstName.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Student Data is Deleted Successfully");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var cmd = new SqlCommand("Select *from Student67", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                GVStudents.DataSource = (reader["FirstName"]);
                GVStudents.DataSource = (reader["LastName"]);
                GVStudents.DataSource = (reader["Email"]);
                GVStudents.DataSource = (reader["DateofBirth"]);
                GVStudents.DataBind();
            }
            conn.Close();
        }

        protected void GVStudents_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtPassword12_TextChanged(object sender, EventArgs e)
        {

        }
    }
}