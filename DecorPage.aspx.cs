using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Final_year_Project
{
    public partial class DecorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
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

            string query = "Select* from Vendor2 where category='Decorators'";
            if (IsPostBack)
            {
                if (DropDownList2.SelectedIndex == 0)
                {
                    if (DropDownList1.SelectedIndex == 0)
                    {
                        query = "Select* from Vendor2 where category='Decorators'";
                    }
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost<1000";
                    }
                    if (DropDownList1.SelectedIndex == 2)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=1000 and cost<5000";
                    }
                    if (DropDownList1.SelectedIndex == 3)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=5000 and cost<10000";
                    }
                    if (DropDownList1.SelectedIndex == 4)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=10000";
                    }
                }
                if (DropDownList2.SelectedIndex == 1)
                {
                    if (DropDownList1.SelectedIndex == 0)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and city='Mumbai'";
                    }
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost<1000 and city='Mumbai'";
                    }
                    if (DropDownList1.SelectedIndex == 2)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=1000 and cost<5000 and city='Mumbai'";
                    }
                    if (DropDownList1.SelectedIndex == 3)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=5000 and cost<10000 and city='Mumbai'";
                    }
                    if (DropDownList1.SelectedIndex == 4)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=10000 and city='Mumbai'";
                    }
                }
                if (DropDownList2.SelectedIndex == 2)
                {
                    if (DropDownList1.SelectedIndex == 0)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and city='Bangalore'";
                    }
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost<1000 and city='Bangalore'";
                    }
                    if (DropDownList1.SelectedIndex == 2)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=1000 and cost<5000 and city='Bangalore'";
                    }
                    if (DropDownList1.SelectedIndex == 3)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=5000 and cost<10000 and city='Bangalore'";
                    }
                    if (DropDownList1.SelectedIndex == 4)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=10000 and city='Bangalore'";
                    }
                }
                if (DropDownList2.SelectedIndex == 3)
                {
                    if (DropDownList1.SelectedIndex == 0)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and city='Chennai'";
                    }
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost<1000 and city='Chennai'";
                    }
                    if (DropDownList1.SelectedIndex == 2)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=1000 and cost<5000 and city='Chennai'";
                    }
                    if (DropDownList1.SelectedIndex == 3)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=5000 and cost<10000 and city='Chennai'";
                    }
                    if (DropDownList1.SelectedIndex == 4)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=10000 and city='Chennai'";
                    }
                }
                if (DropDownList2.SelectedIndex == 4)
                {
                    if (DropDownList1.SelectedIndex == 0)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and city='Kolkata'";
                    }
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost<1000 and city='Kolkata'";
                    }
                    if (DropDownList1.SelectedIndex == 2)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=1000 and cost<5000 and city='Kolkata'";
                    }
                    if (DropDownList1.SelectedIndex == 3)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=5000 and cost<10000 and city='Kolkata'";
                    }
                    if (DropDownList1.SelectedIndex == 4)
                    {
                        query = "Select* from Vendor2 where category='Decorators' and cost>=10000 and city='Kolkata'";
                    }
                }
            }
            Display(query);

        }
        protected void Display(string query)
        {
            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dt.Columns.Add("ProfilePhoto", typeof(string));
                    dt.Columns.Add("PPExtension", typeof(string));
                    dt.Columns.Add("DisplayPhoto", typeof(string));
                    dt.Columns.Add("DPExtension", typeof(string));
                    if (dt.Rows.Count == 0)
                    {
                        Label1.Text = "No Result Found";

                        Repeater1.DataSource = null;
                        Repeater1.DataSourceID = null;
                        Repeater1.DataBind();

                    }
                    else
                    {
                        foreach (DataRow row in dt.Rows)
                        {
                            Label1.Text = "";
                            //need to set value to NewColumn column
                            SqlCommand cmd1 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='dp'", con);
                            using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                            {
                                DataTable dt1 = new DataTable();
                                sda1.Fill(dt1);
                                if (dt1.Rows.Count > 0)
                                {
                                    byte[] bytes = (byte[])dt1.Rows[0]["image"];
                                    string strBase64 = Convert.ToBase64String(bytes);
                                    row["ProfilePhoto"] = strBase64;
                                    row["PPExtension"] = dt1.Rows[0]["extension"];
                                }

                            }
                            SqlCommand cmd2 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='other'", con);
                            using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                            {
                                DataTable dt2 = new DataTable();
                                sda2.Fill(dt2);
                                if (dt2.Rows.Count > 0)
                                {
                                    byte[] bytes = (byte[])dt2.Rows[0]["image"];
                                    string strBase64 = Convert.ToBase64String(bytes);
                                    row["DisplayPhoto"] = strBase64;
                                    row["DPExtension"] = dt2.Rows[0]["extension"];
                                }

                            }
                            Repeater1.DataSource = dt;
                            Repeater1.DataBind();
                        }
                    }
                }

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
    }
}