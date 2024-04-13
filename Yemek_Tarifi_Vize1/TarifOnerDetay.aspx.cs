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
        sqlsinif bgl= new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            SqlCommand komut = new SqlCommand("Select * From tbl_tarifler where Tarifid=@p1",bgl.baglanti());
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
        }
    }
}