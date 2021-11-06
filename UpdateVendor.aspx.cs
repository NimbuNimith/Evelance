using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_year_Project
{
    public partial class UpdateVendor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string id = cookie["id"];

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            con1.Open();
            if (fname.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set fname = '" + fname.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (lname.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set lname = '" + lname.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            //if (eid.Text != (""))
            //{
            //    SqlCommand cmd1 = new SqlCommand("update Vendor2 set eid = '" + eid.Text + "' where id = " + id + "", con1);

            //    cmd1.ExecuteNonQuery();
            //}
            //if (mobno.Text != (""))
            //{
            //    SqlCommand cmd1 = new SqlCommand("update Vendor2 set mobno = '" + mobno.Text + "' where id = " + id + "", con1);

            //    cmd1.ExecuteNonQuery();
            //}
            if (pass.Text != (""))
            {
                if (cpass.Text == pass.Text)
                {
                    SqlCommand cmd1 = new SqlCommand("update Vendor2 set pass = '" + pass.Text + "' where id = " + id + "", con1);

                    cmd1.ExecuteNonQuery();
                }
                if (cpass.Text != pass.Text)
                {
                    Response.Write("<script language=javascript>alert('Password doesn't match.')</script>");
                }
            }
            con1.Close();
            Response.Redirect("~/VendorProfile.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/VendorProfile.aspx");
        }
    }
}