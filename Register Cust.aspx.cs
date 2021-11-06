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
    public partial class Register_Cust : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            SqlCommand cmd11 = new SqlCommand("select * from Customer where eid ='" + eidCust.Text + "'", con1);
            con1.Open();
            cmd11.ExecuteNonQuery();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd11);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            if(dt.Rows.Count==0)
            {
                SqlConnection con11 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd111 = new SqlCommand("select * from Vendor2 where eid ='" + eidVend.Text + "'", con11);
                con11.Open();
                cmd111.ExecuteNonQuery();
                SqlDataAdapter sda11 = new SqlDataAdapter(cmd111);
                DataTable dt1 = new DataTable();
                sda11.Fill(dt1);
                if (dt1.Rows.Count == 0)
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                        SqlCommand cmd = new SqlCommand("Insert into Customer(fname,lname,eid,dob,pass,mobno) values('" + fnameCust.Text + "','" + lnameCust.Text + "','" + eidCust.Text + "','" + datepicker.Text + "','" + passCust.Text + "','" + mobnoCust.Text + "')", con);
                        SqlCommand cmd1 = new SqlCommand("select * from Customer where eid ='" + eidCust.Text + "' and pass='" + passCust.Text + "'", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        cmd1.ExecuteNonQuery();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                        DataTable ds = new DataTable();
                        sda.Fill(ds);
                        con.Close();


                        string a = ds.Rows[0]["id"].ToString();
                        HttpCookie cookie = new HttpCookie("UserDetails");
                        cookie["id"] = a;
                        cookie["type"] = "Cust";
                        Response.Cookies.Add(cookie);
                        //Response.Redirect("~/Update.aspx");
                        Response.Redirect("~/home.aspx");
                    }
                    catch (Exception ea)
                    {
                        Console.WriteLine(ea.Message);
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Email ID already existts')</script>");
                }
                    
            }
            else
            {
                Response.Write("<script language=javascript>alert('Email ID already existts')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            SqlCommand cmd11 = new SqlCommand("select * from Customer where eid ='" + eidCust.Text + "'", con1);
            con1.Open();
            cmd11.ExecuteNonQuery();
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd11);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                SqlConnection con11 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
                SqlCommand cmd111 = new SqlCommand("select * from Vendor2 where eid ='" + eidVend.Text + "'", con11);
                con11.Open();
                cmd111.ExecuteNonQuery();
                SqlDataAdapter sda11 = new SqlDataAdapter(cmd111);
                DataTable dt1 = new DataTable();
                sda11.Fill(dt1);
                if (dt1.Rows.Count == 0)
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString2"].ConnectionString);
                        SqlCommand cmd2 = new SqlCommand("Insert into Vendor2(fname,lname,eid,dob,mobno,category,company,pass) values('" + fnameVend.Text + "','" + lnameVend.Text + "','" + eidVend.Text + "','" + datepicker2.Text + "','" + mobnoVend.Text + "','" + category.SelectedValue + "','" + compname.Text + "','" + passVend.Text + "')", con);
                        SqlCommand cmd3 = new SqlCommand("select * from Vendor2 where eid='" + eidVend.Text + "'and pass = '" + passVend.Text + "'", con);
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        cmd3.ExecuteNonQuery();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd3);
                        DataTable ds = new DataTable();
                        sda.Fill(ds);
                        con.Close();

                        string a = ds.Rows[0]["id"].ToString();
                        HttpCookie cookie = new HttpCookie("UserDetails");
                        cookie["id"] = a;
                        cookie["type"] = "Vendor";
                        Response.Cookies.Add(cookie);
                        //Response.Redirect("~/Update.aspx");
                        Response.Redirect("~/Reg2Vend.aspx");
                    }
                    catch (Exception eb)
                    {
                        Console.WriteLine(eb.Message);
                    }
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Email ID already existts')</script>");
                }

            }
            else
            {
                Response.Write("<script language=javascript>alert('Email ID already existts')</script>");
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}