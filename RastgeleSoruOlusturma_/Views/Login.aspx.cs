using RastgeleSoruOlusturma_.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            KullaniciSifre.Visible = false;
        }
        DBislem db = new DBislem();
        protected void Giris_Click(object sender, EventArgs e)
        {
                bool sonuc = db.Login(username.Text, password.Text);
                if (sonuc)
                {
                
                    Session["Username"] = username.Text;
                    Session["UserID"] = Convert.ToInt32(DBislem.UserID).ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                if (username.Text != null && password.Text != null)
                {
                    KullaniciSifre.Visible = true;
                    KullaniciSifre.Text = "Kullanıcı adı veya şifre hatalı!";
                }
          
            
                }
           
            }
        }

    }
