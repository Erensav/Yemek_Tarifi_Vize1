using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace Yemek_Tarifi_Vize1
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=EREN\SQLEXPRESS;Initial Catalog=Dbo_yemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }

    }
}