using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace school_management_portal
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["RoleName"] == null || Session["RoleName"].ToString() != "AdminPanel")
            {
                Response.Redirect("RoleBasedAccess.aspx");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = TxtUserName.Text;
            string password = TxtPassword.Text;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            string query = "Insert into AdminPanel (Username,Password) VALUES (@Username,@Password)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Session["Username"] = username;
                Session["Password"] = password;
            }
            MessageBox.Show("Data is Added Successfully");
        }
    }
}