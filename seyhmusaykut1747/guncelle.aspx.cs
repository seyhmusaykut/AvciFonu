using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace seyhmusaykut1747
{
    public partial class guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OleDbConnection logindb = new OleDbConnection();
                logindb.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("App_Data/verim.mdb");
                logindb.Open();
                OleDbCommand girisyap = new OleDbCommand();
                girisyap.Connection = logindb;
                girisyap.CommandText = "Select * From musteriler where v_eposta='" + Convert.ToString(Session["s_eposta"]) + "'";
                OleDbDataReader giris;
                giris = girisyap.ExecuteReader();
                while (giris.Read())
                {
                    u_Ad.Text = Convert.ToString(giris[0]);
                    u_Soyad.Text = Convert.ToString(giris[1]);
                    u_KAd.Text = Convert.ToString(giris[2]);
                    guncelleeposta.Text = Convert.ToString(giris[3]);
                    u_Parola.Text = Convert.ToString(giris[4]);
                    u_Memleket.SelectedValue = Convert.ToString(giris[5]);
                    u_DTarih.SelectedValue = Convert.ToString(giris[6]);
                }
                giris.Close();
                logindb.Close();
            }
        }
            

        protected void Button1_Click (object sender, EventArgs e)
        {
            OleDbConnection DBbaglanti = new OleDbConnection();
            DBbaglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("App_Data/verim.mdb ");
            DBbaglanti.Open();
            OleDbCommand SqlKod = new OleDbCommand();
            SqlKod.Connection = DBbaglanti;
            SqlKod.CommandText = " UPDATE musteriler SET  v_Ad='" + u_Ad.Text + "',v_Soyadi='" + u_Soyad.Text + "',v_KAd='" + u_KAd.Text + "',v_eposta='" + guncelleeposta.Text + "',v_Parola='" + u_Parola.Text + "',v_Memleket='" + u_Memleket.SelectedValue + "',v_DTarih=" + u_DTarih.SelectedValue + " WHERE v_KAd='" + Session["s_kad"].ToString() + "'";
            SqlKod.ExecuteReader();
            DBbaglanti.Close();
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection DBbaglanti = new OleDbConnection();
            DBbaglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath(" App_Data/verim.mdb ");
            DBbaglanti.Open();
            OleDbCommand SqlKod = new OleDbCommand();
            SqlKod.Connection = DBbaglanti;
            SqlKod.CommandText = " DELETE FROM musteriler   WHERE v_KAd='" + Session["s_kad"].ToString() + "'";
            SqlKod.ExecuteReader();
            DBbaglanti.Close();
            Panel3.Visible = true;
			Session["oturum"] = null;
			Session["label"] = null;
        }
    }
}