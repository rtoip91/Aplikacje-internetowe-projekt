using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mpi_web.Users
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserButton_Click(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            uzytkownik nowy = new uzytkownik();
            nowy.login = LoginBox.Text;
            nowy.haslo = PassBox.Text;
            nowy.typ_id_typ = 1;
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