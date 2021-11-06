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
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie["type"] == "Vendor")
            {
                ProfileLink.NavigateUrl = "VendorProfileEdit.aspx";
                Button2.Enabled = false;
                TextBox1.Enabled = false;
                TextBox3.Enabled = false;
                Label2.Text = "Vendors cannot<br />Leave a Review";
            }
            else
            {
                ProfileLink.NavigateUrl = "Profile.aspx";
                Label2.Text = "Know the vendor?<br />Leave a Review";
                Button2.Enabled = true;
                TextBox1.Enabled = true;
                TextBox3.Enabled = true;
            }
            string id = Request.QueryString["id"];
            //string vendId = cookie["id"];
            BindReviewRepeater(id);
            BindProfileImage(id);
            BindData(id);
            CheckReview(id);
            HeadReview(id);
            //FavButton(vendId, id, cookie["type"]);
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
            }
        }
        private void BindReviewRepeater(string id)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT CustId,stars,about,date FROM Rating where VendId ='" + id + "' and about is not null", con);
                con.Open();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dt.Columns.Add("Name", typeof(string));
                    if (dt.Rows.Count == 0)
                    {

                    }
                    else
                    {
                        foreach (DataRow row in dt.Rows)
                        {
                            SqlCommand cmd1 = new SqlCommand("SELECT fname,lname FROM Customer where id = " + row["CustId"] + " ", con);
                            using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                            {
                                DataTable dt1 = new DataTable();
                                sda1.Fill(dt1);
                                row["Name"] = dt1.Rows[0]["fname"] + " " + dt1.Rows[0]["lname"];
                            }
                        }
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }

                    //data:<%#Eval("DPExtension") %>;base64,<%#Eval("DisplayPhoto") %

                }
            }
        }
        protected void CheckReview(string id)
        {
            HttpCookie cookie = Request.Cookies["userdetails"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eventmanagementconnectionstring"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from rating where vendid='" + id + "' and custid='" + cookie["id"] + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            sda.Fill(ds);
            con.Close();
            if (ds.Rows.Count != 0)
            {
                TextBox1.Text = ds.Rows[0]["stars"].ToString();
                TextBox3.Text = ds.Rows[0]["about"].ToString();
                Button2.Enabled = false;
            }
        }
        protected void HeadReview(string id)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eventmanagementconnectionstring"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select avg(stars) from rating where vendid='" + id + "'", con);
            SqlCommand cmd1 = new SqlCommand("select count(stars) from rating where vendid='" + id + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            sda.Fill(ds);
            cmd1.ExecuteNonQuery();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable ds1 = new DataTable();
            sda1.Fill(ds1);
            con.Close();
            TextBox2.Text = ds.Rows[0][0].ToString();
            Label1.Text = ds.Rows[0][0] + " average based on " + ds1.Rows[0][0] + " reviews.";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string custId = cookie["id"];
            string vendId = Request.QueryString["id"];
            DateTime datevalue = DateTime.Today;
            string date = datevalue.ToString("m");
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("insert into Rating values('" + custId + "','" + vendId + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + date + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                CheckReview(vendId);
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string id = Request.QueryString["id"];
            Response.Redirect("~/VendorProfile.aspx?id=" + id);
            //ImageButton1.PostBackUrl = "~/VendorProfile.aspx?id=" + id;
        }
        
    }
}