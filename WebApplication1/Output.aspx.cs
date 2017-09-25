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
    public partial class Output : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CreateNewUser();
        }

        protected void CreateNewUser()
        {
            string name = Request.Form["txtName"];
            string email = Request.Form["txtEmail"];
            string password = Request.Form["txtPassword"];
            // Add a new user
            String insertSQL = "INSERT INTO MemberDetails (MemberName, Password, Email) VALUES (@name, @password, @email)";

            // Define the ADO.NET objects.
            SqlConnection con = new SqlConnection(WebConfigurationManager.
          ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            // Add the parameters.
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@email", email);

            // Try to open database and insert new record.
            int added = 0;
            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                lblOutput.Text = added.ToString() + " user(s) added.";
            }
            catch (Exception err)
            {
                lblOutput.Text = "Error inserting record. " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}