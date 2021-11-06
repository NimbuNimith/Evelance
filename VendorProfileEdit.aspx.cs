using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_year_Project
{
    public partial class VendorProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                string id = cookie["id"];

                //Request.QueryString["id"];
                BindDisplayImageRepeater(id);
                BindProfileImage(id);
                BindData(id);

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
        private void BindData(string id)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Vendor2 where id='" + id + "'", con);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            sda.Fill(ds);
            con.Close();
            company.Text = ds.Rows[0]["company"].ToString();
            category.Text = ds.Rows[0]["category"].ToString();
            price.Text = "Base Price : ₹" + ds.Rows[0]["cost"].ToString();
            About.Text = ds.Rows[0]["about"].ToString();
            city.Text = ds.Rows[0]["city"].ToString();
            Phone.Text = ds.Rows[0]["mobno"].ToString();
            eid.Text = ds.Rows[0]["eid"].ToString();
            //dob.Text = dt.ToShortDateString();

        }
        private void BindProfileImage(string id)
        {
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT image,extension FROM VendorImage where id = " + id + " and type='dp'", con);
                con.Open();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dt.Columns.Add("Name", typeof(string));

                    foreach (DataRow row in dt.Rows)
                    {
                        //need to set value to NewColumn column
                        byte[] bytes = (byte[])row["image"];
                        string strBase64 = Convert.ToBase64String(bytes);
                        Image1.ImageUrl = "data:" + row["extension"] + ";base64," + strBase64 + "";   // or set it to some other value
                    }
                    //data:<%#Eval("DPExtension") %>;base64,<%#Eval("DisplayPhoto") %

                }
                con.Close();
            }
        }
        private void BindDisplayImageRepeater(string id)
        {

            //string id = id1;
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT image,extension FROM VendorImage where id = " + id + " and type='other'", con);
                con.Open();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dt.Columns.Add("Name", typeof(string));

                    foreach (DataRow row in dt.Rows)
                    {
                        //need to set value to NewColumn column
                        byte[] bytes = (byte[])row["image"];
                        string strBase64 = Convert.ToBase64String(bytes);
                        row["Name"] = strBase64;   // or set it to some other value
                    }
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();

                }
                con.Close();

            }
        }
        protected string GetActiveClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdatePortfolio.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UpdateVendor.aspx");
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