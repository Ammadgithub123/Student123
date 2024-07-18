using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace school_management_portal
{
    public partial class Login12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var email = txtEmail.Text;
            //var password = txtPassword.Text;

            //using (var AM = new Data14StudentContext())
            //{
            //    var user = AM.User.Find(az => az.Email == email && az.Password == password);
            //    if (user != null)
            //    {

            //        Session["UserID"] = user.UserID;
            //        Response.Redirect("Security123Register.aspx");
            //    }
            //    else
            //    {
            //        LblMsg.Text = "Password & Email are not correct.";
            //    }
            }
        }

    }
