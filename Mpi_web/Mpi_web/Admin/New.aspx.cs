using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Mpi_web.Admin
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string GetEncriptedPassword(string plainText)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(plainText, "SHA1");
        }

        protected void UserButton_Click(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            uzytkownik nowy = new uzytkownik();
            nowy.login = LoginBox.Text;
            nowy.haslo = GetEncriptedPassword(PassBox.Text);
            nowy.typ_id_typ = 2;
            try
            {
                var u = (from t in baza.uzytkownik where t.login == nowy.login select t).First();
                Label1.Text = "Użytkownik o takiej nazwie już istnieje";
            }
            catch
            {
                baza.uzytkownik.Add(nowy);
                baza.SaveChanges();
                Label1.Text = "Dodano nowego użytkownika";
            }
            Label1.Visible = true;
        }
    }
}