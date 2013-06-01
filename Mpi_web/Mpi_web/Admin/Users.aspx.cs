using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mpi_web.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            int u_id = Int32.Parse(UserList.SelectedValue);

            Baza2Context baza = new Baza2Context();
            var tasks = from u in baza.zadanie where u.uzytkownik_id_uzytkownik == u_id select u;

            foreach (var t in tasks)
            {
                baza.zadanie.Remove(t);
            }
            
            uzytkownik user = (from u in baza.uzytkownik where u.id_uzytkownik == u_id select u).FirstOrDefault();
            baza.uzytkownik.Remove(user);
            baza.SaveChanges();
        }
    }
}