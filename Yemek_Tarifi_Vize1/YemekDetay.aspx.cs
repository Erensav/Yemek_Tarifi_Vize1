using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Vize1
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd From tbl_yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {

                lbl3.Text = dr[0].ToString();

            }
            dr.Close();
            bgl.baglanti().Close();


            // Yemek Listeli Yorumlar
            SqlCommand komut2 = new SqlCommand("Select * From tbl_yorumlar where Yemekid=@p2",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();


        }

        protected void btnyorumyap_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into tbl_yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox11.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox22.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox33.Text);
            komut3.Parameters.AddWithValue("@p4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.baglanti() .Close();

        }
    }
}