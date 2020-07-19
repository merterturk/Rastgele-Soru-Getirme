using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_.Views
{
    public partial class Question : System.Web.UI.Page
    {
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["QuestionID"];
            db.SoruSil(Convert.ToInt32(id));

            if (!Page.IsPostBack)
            {
                rptquestion.DataSource = db.SorulariGetir(Convert.ToInt32(Session["UserID"]));
                rptquestion.DataBind();
                dersler.DataSource = db.DersleriGetirSirali();
                dersler.DataTextField = "SubjectName";
                dersler.DataValueField = "SubjectID";
                dersler.DataBind();
                db.CevapEkle(drpcevap);
            }

        }

        protected void btnsoruekle_Click(object sender, EventArgs e)
        {
            db.SoruEkle(Convert.ToInt32(Session["UserID"]), Convert.ToInt32(dersler.SelectedValue), txtsoruicerik.Text, txtA.Text, txtB.Text, txtC.Text, txtD.Text, txtE.Text, drpcevap.SelectedItem.Text);
            Response.Redirect("Question.aspx");
        }
    }
}