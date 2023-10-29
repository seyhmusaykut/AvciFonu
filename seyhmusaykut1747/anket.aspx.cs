using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace seyhmusaykut1747
{
    public partial class anket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Anket_Click(object sender, EventArgs e)
        {
            OleDbConnection veri_db = new OleDbConnection();
            veri_db.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("App_Data/anket.mdb");
            veri_db.Open();
            OleDbCommand SQLKod = new OleDbCommand();
            SQLKod.Connection = veri_db;
            SQLKod.CommandText = "INSERT INTO anket (v_avtur ,v_kampilgi ,v_bilgi ,v_silahlar ,v_oltalar ,v_puan ,v_iletisim) VALUES ('" + avtur.SelectedValue + "','" + kampilgi.SelectedValue + "','" + bilgi.SelectedValue + "','" + silahlar.SelectedValue + "','" + oltalar.Text + "','" + puan.Text + "','" + iletisim.Text + "')";
            SQLKod.ExecuteReader();
            veri_db.Close();
            Panel_Anket.Visible = true;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                iletisimPanel.Visible = true;
            }
            else
            {
                iletisimPanel.Visible = false;
            }
        }
    }
}