using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_
{
    public partial class Home : System.Web.UI.Page
    {
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {
            SoruSayisi.Text = db.SoruSayisi().ToString();
            KullaniciSayisi.Text = db.KullaniciSayisi().ToString();
            DersSayisi.Text = db.DersSayisi().ToString();
            EncokSoruEkleyenKullanici.Text = db.EncokSoruEkleyenKullanici();
            EnazSoruEkleyenKullanici.Text = db.EnazSoruEkleyenKullanici();
            EncokSoruEklenenDers.Text = db.EncokSoruEklenenders();
            EnazSoruEklenenDers.Text = db.EnazSoruEklenenDers();
            EnsonEklenenDers.Text = db.EnsonEklenenDers();
            EnsonEklenenKullanici.Text = db.EnsonEklenenKullanici();
        }
    }
}