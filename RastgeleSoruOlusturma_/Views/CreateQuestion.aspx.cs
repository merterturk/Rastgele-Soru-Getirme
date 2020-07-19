using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_.Views
{
    public partial class CreateQuestion : System.Web.UI.Page
    {
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                drpdersler.DataSource = db.Derslerigetir();
                drpdersler.DataTextField = "SubjectName";
                drpdersler.DataValueField = "SubjectID";
                drpdersler.DataBind();
            }
        }

        protected void btnsoruolustur_Click(object sender, EventArgs e)
        {
            lblsorubilgi.Text = "";
            lblsorubilgi.Visible = true;
            if (txtsorusayisi.Text != "")
            {
                rptquestion.DataSource = db.SoruOlustur(Convert.ToInt32(drpdersler.SelectedValue), Convert.ToInt32(txtsorusayisi.Text));
                rptquestion.DataBind();
            }
            lblsorubilgi.Text = drpdersler.SelectedItem.Text+" "+"Dersinde Toplamda"+" "+Convert.ToInt32(db.ToplamSoru(drpdersler.SelectedValue)).ToString()+" "+"Soru Bulunmaktadır";
        }
    }
}