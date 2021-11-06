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
    public partial class UpdatePortfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadPhoto()
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string id = cookie["id"];
            
            for (int i = 0; i < FileUpload1.PostedFiles.Count(); i++)
            {
                string filename = Path.GetFileName(FileUpload1.PostedFiles[i].FileName);
                string extension = FileUpload1.PostedFiles[i].ContentType;
                using (Stream fs = FileUpload1.PostedFiles[i].InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(constr))
                        {
                            string query = "insert into VendorImage values (@id,@image,@extension,@type)";
                            using (SqlCommand cmd = new SqlCommand(query))
                            {
                                cmd.Connection = con;
                                cmd.Parameters.AddWithValue("@id", id);
                                cmd.Parameters.AddWithValue("@image", bytes);
                                cmd.Parameters.AddWithValue("@extension", extension);
                                cmd.Parameters.AddWithValue("@type", "other");
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                    }
                }
            }
            

        }

        protected void UploadPP()
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string id = cookie["id"];

            string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string extension = FileUpload2.PostedFile.ContentType;
            using (Stream fs = FileUpload2.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "insert into VendorImage values (@id,@image,@extension,@type)";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@id", id);
                            cmd.Parameters.AddWithValue("@image", bytes);
                            cmd.Parameters.AddWithValue("@extension", extension);
                            cmd.Parameters.AddWithValue("@type", "dp");
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string id = cookie["id"];

           
            

            //string email = cookie["email"];

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString);
            con1.Open();
            if (Company.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set company = '" + Company.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (DropDownList1.SelectedIndex != 0)
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set city = '" + DropDownList1.SelectedValue + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (About.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set about = '" + About.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (Cost.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set cost = '" + Cost.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (Mobile.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set mobno = '" + Mobile.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if (eid.Text != (""))
            {
                SqlCommand cmd1 = new SqlCommand("update Vendor2 set eid = '" + eid.Text + "' where id = " + id + "", con1);

                cmd1.ExecuteNonQuery();
            }
            if(FileUpload1.HasFiles)
            {
                SqlCommand cmd1 = new SqlCommand("Delete from VendorImage  where id = " + id + " and type='other'", con1);
                cmd1.ExecuteNonQuery();
                UploadPhoto();
            }
            if(FileUpload2.HasFile)
            {
                SqlCommand cmd1 = new SqlCommand("Delete from VendorImage  where id = " + id + " and type='dp'", con1);
                cmd1.ExecuteNonQuery();
                UploadPP();
            }
            con1.Close();
            Response.Redirect("VendorProfileEdit.aspx");

        }
    }
}