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
    public partial class VendorProfile : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                string id = Request.QueryString["id"];
                string vendId = cookie["id"];
                BindDisplayImageRepeater(id);
                BindProfileImage(id);
                BindData(id);
                FavButton(vendId, id, cookie["type"]);
                HeadReview(id);

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
                        Image1.ImageUrl ="data:"+row["extension"]+";base64,"+ strBase64+"";   // or set it to some other value
                    }
                    //data:<%#Eval("DPExtension") %>;base64,<%#Eval("DisplayPhoto") %

                }
            }
        }
        private void BindDisplayImageRepeater(string id)
        {

            //string id = id1;
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("SELECT image,extension FROM VendorImage where id = "+id+" and type='other'", con);
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
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if ((Request.Cookies["UserDetails"] != null))
            {
                Response.Cookies["UserDetails"].Expires = DateTime.Now.AddDays(-30);

            }
            Response.Redirect("Signup.aspx");
        }
        private void FavButton(string primId, string vendId, string type)
        {
            if (type == "Vendor")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Favourite where PrimId='" + primId + "' and VendId = '" + vendId + "'", con);

                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                con.Close();
                if (ds.Rows.Count == 0)
                {
                    butt.Attributes["class"] = "heart";
                }
                else
                {
                    butt.Attributes["class"] = "heart1";
                }
            }
            else if (type == "Cust")
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd1 = new SqlCommand("select * from Favourite where CustId='" + primId + "' and VendId = '" + vendId + "'", con1);

                con1.Open();
                int i = cmd1.ExecuteNonQuery();
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable ds1 = new DataTable();
                sda1.Fill(ds1);
                con1.Close();
                if (ds1.Rows.Count == 0)
                {
                    butt.Attributes["class"] = "heart";
                }
                else
                {
                    butt.Attributes["class"] = "heart1";
                }
            }
        }
        protected void HeadReview(string id)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["eventmanagementconnectionstring"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select avg(stars) from rating where vendid='" + id + "'", con);
            SqlCommand cmda = new SqlCommand("select count(stars) from rating where vendid='" + id + "'", con);
            SqlCommand cmd5 = new SqlCommand("select count(stars) from rating where vendid='" + id + "' and stars='5'", con);
            SqlCommand cmd4 = new SqlCommand("select count(stars) from rating where vendid='" + id + "' and stars='4'", con);
            SqlCommand cmd3 = new SqlCommand("select count(stars) from rating where vendid='" + id + "' and stars='3'", con);
            SqlCommand cmd2 = new SqlCommand("select count(stars) from rating where vendid='" + id + "' and stars='2'", con);
            SqlCommand cmd1 = new SqlCommand("select count(stars) from rating where vendid='" + id + "' and stars='1'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            sda.Fill(ds);

            cmda.ExecuteNonQuery();
            SqlDataAdapter sdaa = new SqlDataAdapter(cmda);
            DataTable dsa = new DataTable();
            sdaa.Fill(dsa);

            cmd1.ExecuteNonQuery();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable ds1 = new DataTable();
            sda1.Fill(ds1);

            cmd2.ExecuteNonQuery();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable ds2 = new DataTable();
            sda2.Fill(ds2);

            cmd3.ExecuteNonQuery();
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            DataTable ds3 = new DataTable();
            sda3.Fill(ds3);

            cmd4.ExecuteNonQuery();
            SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
            DataTable ds4 = new DataTable();
            sda4.Fill(ds4);

            cmd5.ExecuteNonQuery();
            SqlDataAdapter sda5 = new SqlDataAdapter(cmd5);
            DataTable ds5 = new DataTable();
            sda5.Fill(ds5);
            con.Close();
            Label2.Text = ds5.Rows[0][0].ToString();
            Label3.Text = ds4.Rows[0][0].ToString();
            Label4.Text = ds3.Rows[0][0].ToString();
            Label5.Text = ds2.Rows[0][0].ToString();
            Label6.Text = ds1.Rows[0][0].ToString();
            TextBox2.Text = ds.Rows[0][0].ToString();
            Label1.Text = ds.Rows[0][0] + " average based on " + dsa.Rows[0][0] + " reviews.";
            float total = Convert.ToInt32(ds5.Rows[0][0].ToString()) + Convert.ToInt32(ds4.Rows[0][0].ToString()) + Convert.ToInt32(ds3.Rows[0][0].ToString()) + Convert.ToInt32(ds2.Rows[0][0].ToString()) + Convert.ToInt32(ds1.Rows[0][0].ToString());
            float bar5 = (Convert.ToInt32(ds5.Rows[0][0].ToString()) / total) * 100;
            float bar4 = (Convert.ToInt32(ds4.Rows[0][0].ToString()) / total) * 100;
            float bar3 = (Convert.ToInt32(ds3.Rows[0][0].ToString()) / total) * 100;
            float bar2 = (Convert.ToInt32(ds2.Rows[0][0].ToString()) / total) * 100;
            float bar1 = (Convert.ToInt32(ds1.Rows[0][0].ToString()) / total) * 100;
            Bar5.Attributes.CssStyle.Add("width", "" + bar5 + "%");
            Bar4.Attributes.CssStyle.Add("width", "" + bar4 + "%");
            Bar3.Attributes.CssStyle.Add("width", "" + bar3 + "%");
            Bar2.Attributes.CssStyle.Add("width", "" + bar2 + "%");
            Bar1.Attributes.CssStyle.Add("width", "" + bar1 + "%");

        }
        protected void butt_ServerClick(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string vendId = Request.QueryString["id"];
            string primId = cookie["id"];
            string type = cookie["type"];

            if (type == "Vendor")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Favourite where PrimId='" + primId + "' and VendId = '" + vendId + "' and type = '" + type + "'", con);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                con.Close();
                if (ds.Rows.Count == 0)
                {
                    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                    SqlCommand cmd1 = new SqlCommand("insert into Favourite(PrimId,VendId,type) values('" + primId + "','" + vendId + "','" + type + "')", con);

                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    butt.Attributes["class"] = "heart1";
                }
                else
                {
                    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                    SqlCommand cmd2 = new SqlCommand("delete from Favourite where PrimId='" + primId + "' and VendId='" + vendId + "'and type='" + type + "'", con);

                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    butt.Attributes["class"] = "heart";
                }
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Favourite where CustId='" + primId + "' and VendId = '" + vendId + "' and type = '" + type + "'", con);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                con.Close();
                if (ds.Rows.Count == 0)
                {
                    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                    SqlCommand cmd1 = new SqlCommand("insert into Favourite(CustId,VendId,type) values('" + primId + "','" + vendId + "','" + type + "')", con);

                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    butt.Attributes["class"] = "heart1";
                }
                else
                {
                    SqlCommand cmd2 = new SqlCommand("delete from Favourite where CustId='" + primId + "' and VendId='" + vendId + "'and type='" + type + "'", con);

                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    butt.Attributes["class"] = "heart";
                }
            }

        }
    }
}