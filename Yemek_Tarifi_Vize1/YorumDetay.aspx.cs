using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Vize1
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.Yemekid=tbl_yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtad.Text = dr[0].ToString();
                    txtmail.Text = dr[1].ToString();
                    txticerik.Text = dr[2].ToString();
                    txtyemekad.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}
