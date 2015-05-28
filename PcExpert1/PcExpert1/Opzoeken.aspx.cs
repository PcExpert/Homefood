using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace PcExpert1
{
    public partial class Opzoeken : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constring = WebConfigurationManager.ConnectionStrings["TheConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(constring);
            string sqlOpdracht = "SELECT * FROM  Opzoeken AND Registreren ";
            SqlCommand cmd = new SqlCommand(sqlOpdracht, conn);
            SqlDataReader rd;

            try
            {
                conn.Open();
                rd = cmd.ExecuteReader();
                gvOpzoeken.DataSource = rd; 
                gvOpzoeken.DataBind();

               
            }


            catch
            {
                lblFout.Text = "er ging iets fout";
            }

            finally
            {
                conn.Close();
            }
        }

        protected void gvOpzoeken_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}