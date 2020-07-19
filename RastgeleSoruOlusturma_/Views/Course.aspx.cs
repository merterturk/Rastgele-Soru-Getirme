using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_
{
    public partial class Course : System.Web.UI.Page
    {
        DBislem db = new DBislem();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.Derslerigetir();
            Repeater1.DataBind();
        }
        protected void Btnekle_Click(object sender, EventArgs e)
        {
            if (txtdersadi.Text != null)
            {
                db.DersEkle(txtdersadi.Text);
                Response.Redirect("Course.aspx");
            }
        }
    }
}