using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Mpi_web.Users
{
    public partial class Tasks : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string User = Page.User.Identity.Name.ToString();
            SqlDataSource1.SelectCommand = "SELECT zadanie.id_zadanie, zadanie.zadana_liczba FROM zadanie JOIN uzytkownik ON zadanie.uzytkownik_id_uzytkownik = uzytkownik.id_uzytkownik WHERE uzytkownik.login = '"+User+"'";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            long id = (from u in baza.uzytkownik where u.login == User.Identity.Name select u.id_uzytkownik).FirstOrDefault();
            long liczba = Convert.ToInt64(DropDownList1.Text);
            Label1.Visible = true;
            TextBox1.Visible = true;
            //TextBox1.Text = (from u in baza.zadanie where u.uzytkownik_id_uzytkownik == id select u.zadana_liczba).FirstOrDefault();
            TextBox1.Text = DropDownList1.SelectedItem.ToString();

            Label2.Visible = true;
            TextBox2.Visible = true;
            TextBox2.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.wynik1).FirstOrDefault();

            Label3.Visible = true;
            TextBox3.Visible = true;
            TextBox3.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.postep).FirstOrDefault().ToString();

            Label4.Visible = true;
            TextBox4.Visible = true;
            TextBox4.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_rozpoczecie).FirstOrDefault().ToString();

            Label5.Visible = true;
            TextBox5.Visible = true;
            TextBox5.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_zakonczenia).FirstOrDefault().ToString();

            Label6.Visible = true;
            TextBox6.Visible = true;
            TextBox6.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_dodania).FirstOrDefault().ToString();

            Label7.Visible = true;
            TextBox7.Visible = true;
            TextBox7.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.wynik2).FirstOrDefault();

            Label8.Visible = true;
            TextBox8.Visible = true;
            string id_alg = (from u in baza.zadanie where u.id_zadanie == liczba select u.algorytm_id_algorytm).FirstOrDefault().ToString();
            if (id_alg == "1")
                TextBox8.Text = "Miller-Rabin";
            if (id_alg == "2")
                TextBox8.Text = "AVR";
            if (id_alg == "3")
                TextBox8.Text = "Wszystkie";
        }
    }
}