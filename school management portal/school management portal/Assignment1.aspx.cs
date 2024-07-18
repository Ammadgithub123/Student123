using System;
using System.Collections.Generic;
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
    public partial class Assignment1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DDLTeachers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
                var cmd = new SqlCommand("insert into Assignments2 Values( '" + TxtTeacherID.Text + "' , '" + TxtTitle.Text + "','" + TxtDetails.Text + "','" + TxtDate.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                TxtTeacherID.Text = TxtTitle.Text = TxtDetails.Text = TxtDate.Text = " ";
                MessageBox.Show("Assignments is Added Successfully");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        protected void TxtDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GVAssign_SelectedIndexChanged(object sender, EventArgs e)
        {
            GVAssign.DataBind();
        }
    } 
}