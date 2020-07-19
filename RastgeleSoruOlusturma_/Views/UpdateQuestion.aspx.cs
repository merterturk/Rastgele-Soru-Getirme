using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_.Views
{
    public partial class UpdateQuestion : System.Web.UI.Page
    {

        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {

            int QuestionID = Convert.ToInt32(Request.QueryString["QuestionID"]);
            string[] dizim = db.TekSorugetir(QuestionID);

            txtSoruID.Enabled = false;
            if (!Page.IsPostBack)
            {
                db.CevapEkle(drpcevap);
                drpders.DataSource = db.DersleriGetirSirali();
                drpders.DataTextField = "SubjectName";
                drpders.DataValueField = "SubjectID";
                drpders.DataBind();
                txtSoruID.Text = QuestionID.ToString();
                txtsoru.Text = dizim[1].ToString();
                drpders.Items.FindByValue(dizim[8].ToString()).Selected = true;

                txtA.Text = dizim[2].ToString();
                txtB.Text = dizim[3].ToString();
                txtC.Text = dizim[4].ToString();
                txtD.Text = dizim[5].ToString();
                txtE.Text = dizim[6].ToString();
                drpcevap.Text = dizim[7].ToString();
            }


        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
          
            db.SoruGuncelle(Convert.ToInt32(drpders.SelectedValue),txtsoru.Text,txtA.Text,txtB.Text,txtC.Text,txtD.Text,txtE.Text,drpcevap.SelectedItem.Text.ToString(),Convert.ToInt32(txtSoruID.Text));
            Response.Redirect("Question.aspx");

        }
    }
}