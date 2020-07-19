using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_.Views
{
    public partial class User : System.Web.UI.Page
    {
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string[] bilgilerim = new string[2];
            bilgilerim = db.KisiselBilgilerim(Convert.ToInt32(Session["UserID"]));
            if (!Page.IsPostBack)
            {
                txtadsoyad.Text = bilgilerim[0];
                txtsifre.Text = bilgilerim[1];
            }
        }

        protected void btnkiselbilgi_Click(object sender, EventArgs e)
        {
            if (txtadsoyad.Text != "" && txtsifre.Text != "")
            {
                db.BilgilerimiGuncelle(Convert.ToInt32(Session["UserID"]), txtadsoyad.Text, txtsifre.Text);
                Session.Clear();
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnkullaniciekle_Click(object sender, EventArgs e)
        {
            if (txtyenikulad.Text != "" && txtyenikulsifre.Text != "")
            {
                db.KullaniciEkle(txtyenikulad.Text, txtyenikulsifre.Text);
                Response.Redirect("Home.aspx");
            }
        }
    }
}