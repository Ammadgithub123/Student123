using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Data;
using System.Diagnostics;
using System.Windows.Controls;
using System.Drawing;
using System.Xml.Linq;


namespace school_management_portal
{
    public partial class Schedule1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                updateGrid();
        }

        private void updateGrid()
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var ds = new DataSet();
            var adpt = new SqlDataAdapter("SELECT * FROM Schedules1", conn);
            adpt.Fill(ds, "Schedules1");
            GV23.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new SqlConnection("Data Source=DESKTOP-CSQNJOV;Initial Catalog=SchoolManagementDB5;Integrated Security=True;Encrypt=False");
            var ds = new DataSet();
            var adpt = new SqlDataAdapter("SELECT * FROM Schedules1", conn);
            adpt.Fill(ds, "Schedules1");

            DataRow dr = ds.Tables["Schedules1"].NewRow();
            dr["TeacherID"] = TxtTeacherID.Text;
            dr["DayOfWeek"] = TxtWeek.Text;
            dr["TimeSlot"] = TxtSlot.Text;
            dr["Subject"] = TxtSubject.Text;

            ds.Tables["Schedules1"].Rows.Add(dr);

            var cmdbuild = new SqlCommandBuilder(adpt);
            adpt.Update(ds, "Schedules1");
            updateGrid();
            MessageBox.Show("Teacher TimeTable is Scheduled Successfully");
        }

        protected void azgvBind_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}