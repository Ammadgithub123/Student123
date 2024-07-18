using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace school_management_portal
{
    public partial class Security123 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
             var StudentStore = new UserStore<IdentityUser>();
             var manager = new UserManager<IdentityUser>(StudentStore);

            var Student = new IdentityUser()
            {
                UserName = StudentName.Text,
 
            };

            IdentityResult result = manager.Create(Student, TxtPassword.Text);

            if (result.Succeeded)
            {
                //var AM = HttpContext.Current.GetOwinContext().Authentication;
                //var UID= manager.CreateIdentity(User, DefaultAuthenticationTypes.ApplicationCookie);
                //AM.LogIn(new AuthenticationProperties() { }, UID);
                //Response.Redirect("~/Login12.aspx");
            }
            else
            {
                //AZ.Text = result.Errors.FirstOrDefault();
            }
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}