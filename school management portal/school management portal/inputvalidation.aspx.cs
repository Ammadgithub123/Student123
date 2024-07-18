using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace school_management_portal
{
    public partial class inputvalidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = TxtPassword.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                LblMsg.Text = "Please Enter Email & Password";
                return;
            }

            if (Regex.IsMatch(email, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"))
            {
                MessageBox.Show("Email and password are valid");
              
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }


        protected void TxtPassword_TextChanged(object sender, EventArgs e)
        {
           
           
        }
    }
}