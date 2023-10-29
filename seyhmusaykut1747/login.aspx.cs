using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace seyhmusaykut1747
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection DBbaglanti = new OleDbConnection();
            DBbaglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath(" App_Data/verim.mdb ");
            DBbaglanti.Open();
            OleDbCommand SqlKod = new OleDbCommand();
            SqlKod.Connection = DBbaglanti;
            SqlKod.CommandText = "INSERT INTO musteriler (v_Ad ,v_Soyadi ,v_KAd ,v_eposta ,v_Parola ,v_Memleket ,v_DTarih) VALUES ('" + adi.Text + "','" + sadi.Text + "','" + kadi.Text + "','" + epostam.Text + "','" + sifre.Text + "','" + Memleket.SelectedValue + "','" + DTarih.SelectedValue + "')";
            SqlKod.ExecuteReader();
            DBbaglanti.Close();
            signup.Visible = true;
        }
    }
}