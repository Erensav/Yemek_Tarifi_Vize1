using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Vize1
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From tbl_tarifler where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox11.Text = dr[1].ToString();
                    TextBox22.Text = dr[2].ToString();
                    TextBox33.Text = dr[3].ToString();
                    TextBox34.Text = dr[5].ToString();
                    TextBox35.Text = dr[6].ToString();

                }
                bgl.baglanti().Close();

                // 
                SqlCommand komut2 = new SqlCommand("Select * From tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }


        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            // durum guncelleme
            SqlCommand komut2 = new SqlCommand("update tbl_tarifler set TarifDurum=1 where tarifid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            // yemegi ana sayfa ekleme

            SqlCommand komut3 = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox11.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox22.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox33.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}