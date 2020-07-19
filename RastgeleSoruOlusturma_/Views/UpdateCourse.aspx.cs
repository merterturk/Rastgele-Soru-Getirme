using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RastgeleSoruOlusturma_.Models;
using System.Data.SqlClient;

namespace RastgeleSoruOlusturma_
{
    public partial class UpdateCourse1 : System.Web.UI.Page
    {
        int subjectid;
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDersID.Enabled = false;
            subjectid = Convert.ToInt32(Request.QueryString["SubjectID"]);
            if (!Page.IsPostBack)
            {
                txtDersID.Text = subjectid.ToString();
                txtDersAdi.Text = db.DersAdiGetir(subjectid);
            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
                db.DersGuncelle(Convert.ToInt32(txtDersID.Text), txtDersAdi.Text);
                Response.Redirect("Course.aspx");
        }
    }
}