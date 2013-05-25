using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mpi_web.Users
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void LiczbaBox_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            long id = (from u in baza.uzytkownik where u.login == User.Identity.Name select u.id_uzytkownik).FirstOrDefault();
            zadanie nowe = new zadanie();
            nowe.status__id_status = 1;
            nowe.zadana_liczba = LiczbaBox.Text;
            nowe.uzytkownik_id_uzytkownik = id;
            nowe.kolejnosc = 1;
            baza.zadanie.Add(nowe);
            baza.SaveChanges();
            Label1.Visible = true;
        }
    }
}