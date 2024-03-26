using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Vize1
{
    public partial class tarifoner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntarifoner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtTarifad.Text);
            komut.Parameters.AddWithValue("@t2", txtTarifmalzeme.Text);
            komut.Parameters.AddWithValue("@t3", txtTarifyapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifoneren.Text);
            komut.Parameters.AddWithValue("@t6", txtTarifmail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alinmistir");
        }
    }
}