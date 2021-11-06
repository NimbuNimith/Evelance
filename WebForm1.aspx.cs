using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Final_year_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string perc = "60%";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //TextBox1.Attributes["value"]="4.5";
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            //string query = "Select * from Vendor2 where category= 'Photos'";
            //using (SqlCommand cmd = new SqlCommand(query))
            //{
            //    cmd.Connection = con;
            //    con.Open();
            //    byte[] bytes = (byte[])cmd.ExecuteScalar();
            //    string strBase64 = Convert.ToBase64String(bytes);
            //}

            //string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(constr))
            //{
            //    SqlCommand cmd = new SqlCommand("SELECT * FROM Vendor2 where category= 'Photos'", con);
            //    con.Open();
            //    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            //    {
            //        DataTable dt = new DataTable();
            //        sda.Fill(dt);
            //        dt.Columns.Add("ProfilePhoto", typeof(string));
            //        dt.Columns.Add("PPExtension", typeof(string));
            //        dt.Columns.Add("DisplayPhoto", typeof(string));
            //        dt.Columns.Add("DPExtension", typeof(string));

            //        foreach (DataRow row in dt.Rows)
            //        {
            //            //need to set value to NewColumn column
            //            SqlCommand cmd1 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='dp'",con);
            //            using(SqlDataAdapter sda1=new SqlDataAdapter(cmd1))
            //            {
            //                DataTable dt1 = new DataTable();
            //                sda1.Fill(dt1);
            //                if(dt1.Rows.Count>0)
            //                {
            //                    byte[] bytes = (byte[])dt1.Rows[0]["image"];
            //                    string strBase64 = Convert.ToBase64String(bytes);
            //                    row["ProfilePhoto"] = strBase64;
            //                    row["PPExtension"] = dt1.Rows[0]["extension"];
            //                }

            //            }
            //            SqlCommand cmd2 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='other'",con);
            //            using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
            //            {
            //                DataTable dt2 = new DataTable();
            //                sda2.Fill(dt2);
            //                if(dt2.Rows.Count>0)
            //                {
            //                    byte[] bytes = (byte[])dt2.Rows[0]["image"];
            //                    string strBase64 = Convert.ToBase64String(bytes);
            //                    row["DisplayPhoto"] = strBase64;
            //                    row["DPExtension"] = dt2.Rows[0]["extension"];
            //                }

            //            }
            //            Repeater1.DataSource = dt;
            //            Repeater1.DataBind();
            //byte[] bytes = (byte[])row["image"];
            //string strBase64 = Convert.ToBase64String(bytes);
            //row["Name"] = strBase64;   // or set it to some other value
            //        }

            //    }

            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script language=javascript>alert('c#="+TextBox1.Text+"')</script>");
        }
    }
}