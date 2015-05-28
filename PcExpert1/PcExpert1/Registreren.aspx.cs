using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.Sql;
using MySql.Data.MySqlClient;
using MySql.Data.Types;
using System.Configuration;


	

namespace PcExpert1
{
    public partial class Registreren : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            HttpCookie koekje = Request.Cookies["userinfo"];
             
            if(koekje != null)
            {
                txtNaam.Text = koekje["Voornaam"];
                txtAnaam.Text = koekje["Achternaam"];
                txtEmail.Text = koekje["E-mail"];
                txtAdres.Text = koekje["Adres"];
                txtPostcode.Text = koekje["Postcode"];
                txtWoonplaats.Text = koekje["Woonplaats"];
                txtTelNr.Text = koekje["Telefoon nummer"];
            }
            else
            {
                lblCookieError.Text = "Geen Koekjes gevonden";
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie koekje = new HttpCookie("userinfo");

            koekje["Voornaam"] = txtNaam.Text;
            koekje["Achternaam"] = txtAnaam.Text;
            koekje["E-mail"] = txtEmail.Text;
            koekje["Adres"] = txtAdres.Text;
            koekje["Postcode"] = txtPostcode.Text;
            koekje["Woonplaats"] = txtWoonplaats.Text;
            koekje["Telefoon nummer"] = txtTelNr.Text;

            koekje.Expires = DateTime.Now.AddHours(2);

            Response.SetCookie(koekje);
            string connString = ConfigurationManager.ConnectionStrings["TheConnection"].ConnectionString;
        MySqlConnection conn = new MySqlConnection(connString);

         string myQuerry =
         "INSERT INTO Registreren (Voornaam, Achternaam, Email, Adres, Postcode, Woonplaats, TelefoonNr) VALUES(@Voornaam, @Achternaam, @Email, @Adres, @Postcode, @Woonplaats, @TelefoonNr)";
            MySqlCommand cmd = new MySqlCommand(myQuerry, conn);

     cmd.Parameters.AddWithValue("@Voornaam", txtNaam.Text);
     cmd.Parameters.AddWithValue("@Achternaam", txtAnaam.Text);
     cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
     cmd.Parameters.AddWithValue("@Adres", txtAdres.Text);
     cmd.Parameters.AddWithValue("@postcode", txtPostcode.Text);
     cmd.Parameters.AddWithValue("@Woonplaats", txtWoonplaats.Text);    
     cmd.Parameters.AddWithValue("@TelefoonNr", txtTelNr.Text);
            
   try
     {
         conn.Open();
         cmd.ExecuteNonQuery();
         lblMelding.Text = "Uw gegvens zijn ontvangen!";

      }

     catch (MySqlException err)
     {

       //  lblMelding.Text = err.Message;
         Session["errorMessage"] = err.Message;
     }


     finally
     {
         
         conn.Close();
         Response.Cookies["userinfo"].Expires = DateTime.Now.AddDays(-1);
     }

 }







        }
    }
