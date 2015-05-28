using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PcExpert1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgButn1_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void imgButn2_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Bestellen.aspx");
            }
        }

        protected void imgButn3_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Registreren.aspx");
            }
        }

        protected void imgButn4_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Contact.aspx");
            }
        }

        protected void imgButn5_Click(object sender, ImageClickEventArgs e)
        {
            {
                Response.Redirect("Opzoeken.aspx");
            }
        }
    }
}