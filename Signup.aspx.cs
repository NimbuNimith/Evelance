using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace Final_year_Project
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Customer where eid='" + username.Text + "' and pass='" + password.Text + "'", con);
               
                con.Open();
                int i=cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable ds = new DataTable();
                sda.Fill(ds);
                con.Close();
                
                if (ds.Rows.Count>0)
                {
                    string a = ds.Rows[0]["id"].ToString();
                    HttpCookie cookie = new HttpCookie("UserDetails");
                    cookie["id"] = a;
                    cookie["type"] = "Cust";
                    Response.Cookies.Add(cookie);
                    //Response.Redirect("~/Profile.aspx");
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString2"].ConnectionString);
                    SqlCommand cmd1 = new SqlCommand("select * from Vendor2 where eid='" + username.Text + "' and pass='" + password.Text + "'", con1);

                    con1.Open();
                    int i1 = cmd1.ExecuteNonQuery();
                    SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                    DataTable ds1 = new DataTable();
                    sda1.Fill(ds1);
                    con1.Close();

                    if (ds1.Rows.Count > 0)
                    {
                        string a = ds1.Rows[0]["id"].ToString();
                        HttpCookie cookie = new HttpCookie("UserDetails");
                        cookie["id"] = a;
                        cookie["type"] = "Vendor";
                        Response.Cookies.Add(cookie);
                        Response.Redirect("~/Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Incorrect Email ID or Password.')</script>");
                    }
                }
            }
            catch(Exception ea)
            {
                //Label1.Text = ea.Message;
                Console.WriteLine(ea.Message);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}