using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                btnlogin.Text = "Logout";
                name.Text = "Welcome, " + Session["email"].ToString() + int.Parse(Session["memberID"].ToString());
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {

        }

        protected void textBoxSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/search.aspx?name=" + textBoxSearch.Text, true);
        }
    }
}