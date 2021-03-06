﻿using System;
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
            SqlDataSource1.SelectCommand = "SELECT zadanie.id_zadanie, zadanie.zadana_liczba, czas_dodania, wynik1, czas_zakonczenia FROM zadanie JOIN uzytkownik ON zadanie.uzytkownik_id_uzytkownik = uzytkownik.id_uzytkownik WHERE uzytkownik.login = '"+User+"'";
            SqlDataSource1.DeleteCommand = "DELETE FROM zadanie WHERE id_zadanie=@id_zadanie2";
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
            TextBox3.Text = DateTime.Now.ToString() + " postęp to: " + (from u in baza.zadanie where u.id_zadanie == liczba select u.postep).FirstOrDefault().ToString() + "%";

            Label4.Visible = true;
            TextBox4.Visible = true;
            TextBox4.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_rozpoczecie).FirstOrDefault().ToString();

            Label5.Visible = true;
            TextBox5.Visible = true;
            TextBox5.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_zakonczenia).FirstOrDefault().ToString();

            Label6.Visible = true;
            TextBox6.Visible = true;
            TextBox6.Text = (from u in baza.zadanie where u.id_zadanie == liczba select u.czas_dodania).FirstOrDefault().ToString();

            Button2.Visible = true;
           

            Label8.Visible = true;
            TextBox8.Visible = true;
            string id_alg = (from u in baza.zadanie where u.id_zadanie == liczba select u.algorytm_id_algorytm).FirstOrDefault().ToString();
            if (id_alg == "1")
                TextBox8.Text = "Miller-Rabin";
            if (id_alg == "2")
                TextBox8.Text = "Fermat";
            if (id_alg == "3")
                TextBox8.Text = "Wszystkie";
            Button3.Visible = true;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlDataSource1.DeleteParameters.Add("id_zadanie2", DropDownList1.Text);
            SqlDataSource1.Delete();
            Label1.Visible = false;
            TextBox1.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            Label3.Visible = false;
            TextBox3.Visible = false;
            Label4.Visible = false;
            TextBox4.Visible = false;
            Label5.Visible = false;
            TextBox5.Visible = false;
            Label6.Visible = false;
            TextBox6.Visible = false;
            Button2.Visible = false;
            Label8.Visible = false;
            TextBox8.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            long liczba = Convert.ToInt64(DropDownList1.Text);
            string postep = (from u in baza.zadanie where u.id_zadanie == liczba select u.postep).FirstOrDefault().ToString();

            TextBox3.Text = DateTime.Now.ToString() + " postęp to: " + postep + "%";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Baza2Context baza = new Baza2Context();
            long liczba = Convert.ToInt64(DropDownList1.Text);
            string postep = (from u in baza.zadanie where u.id_zadanie == liczba select u.postep).FirstOrDefault().ToString();
            TextBox3.Text = DateTime.Now.ToString() + " postęp to: " + postep + "%";
        }
       

    }
}