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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Create a Select statement that searches for a record matching the username.
String selectSQL = "SELECT MemberName, MemberID FROM MemberDetails WHERE MemberName = '" + txtName.Text + "' and Password = '" + txtPassword.Text + "'";

// Define the ADO.NET objects.
SqlConnection con = new SqlConnection(WebConfigurationManager.
ConnectionStrings["ConnectionString"].ConnectionString);
SqlCommand cmd = new SqlCommand(selectSQL, con);
SqlDataReader reader;

// Try to open database and read information.
try {
  con.Open();
  reader = cmd.ExecuteReader();
  reader.Read();
  if (reader.HasRows) {
    Session["email"] = reader["MemberName"].ToString();
    Session["memberID"] = reader["MemberID"].ToString();
    if (reader["MemberName"].ToString().Equals("admin")) {
      Session["userlevel"] = "2";
      Response.Redirect("content.aspx");
    }
    Session["userlevel"] = "1";
      Response.Redirect("index.aspx");
  }
  else {
    error.Text = "Incorrect username or password.";
  }
  con.Close();
}
catch (Exception err) {
  error.Text = "Error retrieving users. " + err.Message;
}
finally {
  con.Close();
}
        }

        protected void btnregist_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}