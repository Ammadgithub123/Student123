using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using static System.Net.WebRequestMethods;

namespace school_management_portal
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TxtUsername.Text;
            string password = TxtPassword.Text;
            string roleID = TxtRoleID.Text;

            try
            {
                var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
                var cmd = new SqlCommand("insert into Usermanagement Values( '" + TxtUsername.Text + "' , '" + TxtPassword.Text + "','" + TxtRoleID.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

   
                MessageBox.Show("Usermanagment is Added Successfully");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    

   
        protected void gvAZ_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            gvAZ.DataBind();
        }

        protected void ddlValues_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtRoleID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}