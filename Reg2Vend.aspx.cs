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
    public partial class Reg2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                      
        }

        protected void UploadPhoto()
        {
            HttpCookie cookie = Request.Cookies["UserDetails"];
            string id = cookie["id"];
            if (FileUpload1.PostedFiles.Count() == 5)
            {
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
            else
            {
                Response.Write("<script language=javascript>alert('Please upload exactly 5 images')</script>");
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

            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "update Vendor2 set city='"+ DropDownList1.SelectedValue+"', about='"+ TextBox1.Text+"', cost='"+TextBox2.Text+"' where id = '" + id + "'";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            UploadPhoto();
            UploadPP();

            Response.Redirect("Home.aspx");
            
        }
    }
}