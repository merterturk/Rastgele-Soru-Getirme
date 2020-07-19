using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace RastgeleSoruOlusturma_.Models
{
    public class DBislem
    {

        public static string baglanti = "Data Source=LAPTOP-9IQ5NO3T\\SQLEXPRESS;Initial Catalog=SoruDB;Integrated Security=True";
        public static SqlConnection conn;
        public static SqlCommand cmd;
        public static SqlDataReader dr;
        public static int UserID;
        public static SqlDataAdapter da;
        public static DataTable dt;
        public bool Login(string username, string password)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select * from UserTBL where Username=@p1 and Password=@p2", conn);
            cmd.Parameters.AddWithValue("@p1", username);
            cmd.Parameters.AddWithValue("@p2", password);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                UserID = Convert.ToInt32(dr["UserID"]);
                conn.Close();
                dr.Close();
                return true;
            }
            else
            {
                conn.Close();
                dr.Close();
                return false;
            }
        }
        public int SoruSayisi()
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select count(*) from QuestionTBL", conn);
            int derssayisi = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return derssayisi;
        }
        public int KullaniciSayisi()
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select count(*) from UserTBL", conn);
            int kullanicisayisi = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return kullanicisayisi;
        }
        public int DersSayisi()
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select count(*) from SubjectTBL", conn);
            int derssayisi = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            return derssayisi;
        }
        public string EncokSoruEkleyenKullanici()
        {
            string encoksoru = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select TOP 1 b.Username FROM QuestionTBL AS a INNER JOIN UserTBL AS b ON a.UserID = b.UserID  GROUP BY b.Username ORDER BY Count(QuestionID) DESC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                encoksoru = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return encoksoru;
        }
        public string EnazSoruEkleyenKullanici()
        {
            string enazsoru = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select TOP 1 b.Username FROM QuestionTBL AS a INNER JOIN UserTBL AS b ON a.UserID = b.UserID  GROUP BY b.Username ORDER BY Count(QuestionID) ASC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                enazsoru = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return enazsoru;
        }
        public string EncokSoruEklenenders()
        {
            string encokders = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("SELECT TOP 1 b.SubjectName from QuestionTBL AS a INNER JOIN SubjectTBL AS b ON a.SubjectID=b.SubjectID GROUP BY b.SubjectName ORDER BY Count(QuestionID) DESC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                encokders = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return encokders;
        }
        public string EnazSoruEklenenDers()
        {
            string enazders = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("SELECT TOP 1 b.SubjectName from QuestionTBL AS a INNER JOIN SubjectTBL AS b ON a.SubjectID=b.SubjectID GROUP BY b.SubjectName ORDER BY Count(QuestionID) ASC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                enazders = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return enazders;
        }
        public string EnsonEklenenDers()
        {
            string ensoneklenenders = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select TOP 1 SubjectName From SubjectTBL ORDER BY SubjectID DESC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ensoneklenenders = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return ensoneklenenders;
        }
        public string EnsonEklenenKullanici()
        {
            string ensoneklenenkullanici = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select TOP 1 UserName From UserTBL ORDER BY UserID DESC", conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ensoneklenenkullanici = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return ensoneklenenkullanici;
        }
        public DataTable Derslerigetir()
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            da = new SqlDataAdapter("Select * from SubjectTBL", conn);
            dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public DataTable DersleriGetirSirali()
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            da = new SqlDataAdapter("Select * from SubjectTBL ORDER BY SubjectName ASC", conn);
            dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public void DersGuncelle(int subjectID, string subjectname)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Update SubjectTBL set SubjectName=@p1 where SubjectID=@p2", conn);
            cmd.Parameters.AddWithValue("@p1", subjectname);
            cmd.Parameters.AddWithValue("@p2", subjectID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public string DersAdiGetir(int subjectid)
        {
            string dersadi = "";
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select SubjectName from SubjectTBL where SubjectID=@p1", conn);
            cmd.Parameters.AddWithValue("@p1", subjectid);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dersadi = dr[0].ToString();
                dr.Close();
            }
            conn.Close();
            return dersadi;
        }
        public void DersEkle(string dersadi)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Insert INTO SubjectTBL(SubjectName) values(@p1)", conn);
            cmd.Parameters.AddWithValue("@p1", dersadi);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public string[] KisiselBilgilerim(int userID)
        {
            string[] bilgilerim = new string[2];
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select Username,Password from UserTBL where UserID=@p1", conn);
            cmd.Parameters.AddWithValue("@p1", userID);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                bilgilerim[0] = dr["Username"].ToString();
                bilgilerim[1] = dr["Password"].ToString();

            }
            dr.Close();
            conn.Close();
            return bilgilerim;

        }
        public void BilgilerimiGuncelle(int userID, string username, string password)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Update UserTBL set Username=@p1,Password=@p2 where UserID=@p3", conn);
            cmd.Parameters.AddWithValue("@p1", username);
            cmd.Parameters.AddWithValue("@p2", password);
            cmd.Parameters.AddWithValue("@p3", userID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void KullaniciEkle(string username, string password)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Insert INTO UserTBL(Username,Password) values(@p1,@p2)", conn);
            cmd.Parameters.AddWithValue("@p1", username);
            cmd.Parameters.AddWithValue("@p2", password);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public DataTable SorulariGetir(int userID)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            da = new SqlDataAdapter("Select QuestionID,a.SubjectName,QuestionContent,A,B,C,D,E,Correctanswer from QuestionTBL AS b INNER JOIN SubjectTBL AS a on b.SubjectID=a.SubjectID where UserID=@p1 and Status=1 ", conn);
            da.SelectCommand.Parameters.AddWithValue("@p1", userID);
            dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public void CevapEkle(DropDownList item)
        {
            item.Items.Add("A");
            item.Items.Add("B");
            item.Items.Add("C");
            item.Items.Add("D");
            item.Items.Add("E");
        }
        public string[] TekSorugetir(int QuestionID)
        {
            string[] dizim = new string[9];
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Select b.SubjectID,b.SubjectName AS subject,QuestionContent,A,B,C,D,E,CorrectAnswer from QuestionTBL AS a INNER JOIN SubjectTBL AS b ON a.SubjectID=b.SubjectID where QuestionID=@p1", conn);
            cmd.Parameters.AddWithValue("@p1", QuestionID);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dizim[0] = dr["subject"].ToString();
                dizim[1] = dr["QuestionContent"].ToString();
                dizim[2] = dr["A"].ToString();
                dizim[3] = dr["B"].ToString();
                dizim[4] = dr["C"].ToString();
                dizim[5] = dr["D"].ToString();
                dizim[6] = dr["E"].ToString();
                dizim[7] = dr["CorrectAnswer"].ToString();
                dizim[8] = dr["SubjectID"].ToString();
            }
            dr.Close();
            conn.Close();
            return dizim;
        }
        public void SoruEkle(int UserID, int SubjectID, string soru, string A, string B, string C, string D, string E, string dogrucevap)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Insert INTO QuestionTBL(UserID,SubjectID,QuestionContent,A,B,C,D,E,Correctanswer) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)", conn);
            cmd.Parameters.AddWithValue("@p1", UserID);
            cmd.Parameters.AddWithValue("@p2", SubjectID);
            cmd.Parameters.AddWithValue("@p3", soru);
            cmd.Parameters.AddWithValue("@p4", A);
            cmd.Parameters.AddWithValue("@p5", B);
            cmd.Parameters.AddWithValue("@p6", C);
            cmd.Parameters.AddWithValue("@p7", D);
            cmd.Parameters.AddWithValue("@p8", E);
            cmd.Parameters.AddWithValue("@p9", dogrucevap);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void SoruGuncelle(int SubjectID, string soru, string A, string B, string C, string D, string E, string dogrucevap, int SoruID)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Update QuestionTBL set SubjectID=@p1,QuestionContent=@p2,A=@p3,B=@p4,C=@p5,D=@p6,E=@p7,Correctanswer=@p8 where QuestionID=@p9", conn);
            cmd.Parameters.AddWithValue("@p1", SubjectID);
            cmd.Parameters.AddWithValue("@p2", soru);
            cmd.Parameters.AddWithValue("@p3", A);
            cmd.Parameters.AddWithValue("@p4", B);
            cmd.Parameters.AddWithValue("@p5", C);
            cmd.Parameters.AddWithValue("@p6", D);
            cmd.Parameters.AddWithValue("@p7", E);
            cmd.Parameters.AddWithValue("@p8", dogrucevap);
            cmd.Parameters.AddWithValue("@p9", SoruID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void SoruSil(int QuestionID)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("Update QuestionTBL set Status=0 where QuestionID=@p1", conn);
            cmd.Parameters.AddWithValue("@p1", QuestionID);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public DataTable SoruOlustur(int subjectid, int sorusayisi)
        {
            conn = new SqlConnection(baglanti);
            conn.Open();
            da = new SqlDataAdapter("Select TOP (@p1) b.SubjectName AS subject, QuestionContent, A, B, C, D, E, Correctanswer from QuestionTBL AS a INNER JOIN SubjectTBL AS b ON a.SubjectID = b.SubjectID where a.SubjectID = @p2 ORDER BY NEWID()", conn);
            da.SelectCommand.Parameters.AddWithValue("@p1", sorusayisi);
            da.SelectCommand.Parameters.AddWithValue("@p2", subjectid);
            dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public int ToplamSoru(string SubjectID)
        {
            int soru = 0;
            conn = new SqlConnection(baglanti);
            conn.Open();
            cmd = new SqlCommand("SELECT Count(*) AS toplam FROM QuestionTBL WHERE SubjectID=@p1",conn);
            cmd.Parameters.AddWithValue("@p1", SubjectID);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                soru =Convert.ToInt32(dr["toplam"]);
            }
            conn.Close();
            return soru;
        }
    }
}
