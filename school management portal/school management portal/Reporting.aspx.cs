using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using static System.Net.WebRequestMethods;

namespace school_management_portal
{
    public partial class Reporting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void gvAZ_SelectedIndexChanged(object sender, EventArgs e)
        {
            gvAZ1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var cmd = new SqlCommand("insert into Reporting Values('" + TxtReportName + "','" + TxtReportData.Text + "')", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            MessageBox.Show("Reported is Successfull between Teachers and the Students");
        }
    }
}