using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_year_Project
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                string id = cookie["id"];

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Customer where id='" + id + "'", con);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                con.Close();
                name.Text = ds.Rows[0]["fname"].ToString() + " " + ds.Rows[0]["lname"].ToString();
                eid.Text = ds.Rows[0]["eid"].ToString();
                mobno.Text = ds.Rows[0]["mobno"].ToString();
                DateTime dt = Convert.ToDateTime(ds.Rows[0]["dob"].ToString());
                dob.Text = dt.ToShortDateString();

                if (cookie["type"] == "Vendor")
                {
                    ProfileLink.NavigateUrl = "VendorProfileEdit.aspx";
                }
                else
                {
                    ProfileLink.NavigateUrl = "Profile.aspx";
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('You are not signed in'); window.location.href='Signup.aspx'</script>");
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Update.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if ((Request.Cookies["UserDetails"] != null))
            {
                Response.Cookies["UserDetails"].Expires = DateTime.Now.AddDays(-30);

            }
            Response.Redirect("Signup.aspx");
        }
    }
}