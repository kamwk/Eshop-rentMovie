using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text="";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPassword2.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblOutput.Text +=
                "<br />We received the following information:" +
                "<table style=\"background-color: Yellow\">" +
                "<tr><td>Name:</td><td>" + txtName.Text + "</td></tr>" +
                "<tr><td>Email:</td><td>" + txtEmail.Text + "</td></tr>" +
                "</td></tr></table>";
        }
    }
}