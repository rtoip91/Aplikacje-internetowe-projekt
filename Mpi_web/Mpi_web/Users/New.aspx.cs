using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

        /// <summary>
        /// Tworzenie nowego zadania
        /// </summary>
        /// <param name="number">Liczba do sprawdzenia pierwszości</param>
        private void nowy(string number)
        {
            Baza2Context baza = new Baza2Context();
            long id = (from u in baza.uzytkownik where u.login == User.Identity.Name select u.id_uzytkownik).FirstOrDefault();
            zadanie nowe = new zadanie();
            nowe.status__id_status = 1;
            nowe.zadana_liczba = number;
            nowe.uzytkownik_id_uzytkownik = id;
            nowe.czas_dodania = DateTime.Now;
            nowe.postep = 0;
            nowe.wynik2 = "0";
            nowe.wynik1="0";
            nowe.algorytm_id_algorytm = Int32.Parse(ListaAlgorytmow.SelectedValue);
            baza.zadanie.Add(nowe);
            baza.SaveChanges();
            Label1.Text = "Dodano pomyślnie";
            Label1.Visible = true;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            nowy(LiczbaBox.Text);
        }

        protected void FileButton_Click(object sender, EventArgs e)
        {
            System.IO.Stream myStream;
            int filelen;
            StringBuilder displayString = new StringBuilder();

            filelen = FileUpload.PostedFile.ContentLength;
            Byte[] Input = new Byte[filelen];
            myStream = FileUpload.FileContent;
            myStream.Read(Input, 0, filelen);
            char[] Input2 = new char[filelen];

            try
            {
                //sprawdzenie długości pliku
                if (filelen == 0)
                {
                    throw new Exception();
                }

                for (int loop1 = 0; loop1 < filelen; loop1++)
                {
                    //kowersja z byte na char
                    Input2[loop1] = (char)Input[loop1];
                    // sprawdzenie czy kolejny wczytany z pliku element jest cyfrą
                    if (Input2[loop1] < '0' || Input2[loop1] > '9')
                    {
                        throw new Exception();
                    }
                    displayString.Append((Input2[loop1].ToString()));


                }
                String a = displayString.ToString();

                nowy(a);
            }
            catch
            {
                Label1.Text = "Błędna zawartość pliku";
                Label1.Visible = true;
            }


        }

     
    }
}