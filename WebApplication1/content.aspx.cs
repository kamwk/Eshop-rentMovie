using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace WebApplication1
{
    public partial class content1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String id = Request.QueryString["id"];
            Random ran = new Random();
            int ranadv = ran.Next(3);
            img.ImageUrl = "/images/banner"+(ranadv+1)+".jpg";
        }

        protected void btnRent_Click(object sender, EventArgs e)
        {
            //Session["page"] = "product.aspx?id=" + Request.QueryString["id"];
            int pagelevel = 1;
            if (Session["userlevel"] == null)
                Response.Redirect("login.aspx");
            else
            {
                String id = Request.QueryString["id"];
                //String email = Session["email"].ToString();
                int memberID = int.Parse(Session["memberID"].ToString());
                String insertSQL = "INSERT INTO Bills (MemberID, MovieRented) VALUES (@memberID, @id)";

                // Define the ADO.NET objects.
                SqlConnection con = new SqlConnection(WebConfigurationManager.
              ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand(insertSQL, con);

                // Add the parameters.
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@memberID", memberID);

                int added = 0;
                try
                {
                    con.Open();
                    added = cmd.ExecuteNonQuery();
                    lblResults.Text = added.ToString() + " order received.";
                }
                catch (Exception err)
                {
                    lblResults.Text = "Error inserting record. " + err.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void textBoxSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/search.aspx?name=" + textBoxSearch1.Text, true);
        }
    }
}