using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace seyhmusaykut1747
{
    public partial class sablonum : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["oturum"] == "1")
            {
                girisyok.Visible = false;
                girisvar.Visible = true;
                Label1.Text = Session["label"].ToString();
            }
        }

        protected void giris_Click(object sender, EventArgs e)
        {
            OleDbConnection DBbaglanti = new OleDbConnection();
            DBbaglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("App_Data/verim.mdb");
            DBbaglanti.Open();
            OleDbCommand SqlKod = new OleDbCommand();
            SqlKod.Connection = DBbaglanti;
            SqlKod.CommandText = "SELECT * FROM musteriler WHERE v_KAd='" + k_adi.Text + "' and v_Parola='" + sifre.Text + "'";

            OleDbDataReader veriOku;
            veriOku = SqlKod.ExecuteReader();
            while (veriOku.Read())
            {
                girisyok.Visible = false;
                girisvar.Visible = true;
                Session["oturum"] = "1";
                Session["label"] = veriOku[0];
                Session["s_kad"]=veriOku[2];
                Session["s_eposta"] = veriOku[3];
                Session["s_parola"] = veriOku[4];
                Label1.Text = Session["label"].ToString();
            }
            veriOku.Close();
            DBbaglanti.Close();
            
        }

        protected void cikis_Click(object sender, EventArgs e)
        {
            girisyok.Visible = true;
            girisvar.Visible = false;
            Session["oturum"] = null;
            Session["s_eposta"] = null;
            Session["s_parola"] = null;
            Label1.Text = null;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}