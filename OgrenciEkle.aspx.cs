using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace ASPNet.OTS.v1
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {        // public olarak kullanabileceğim değişgenler
        SqlConnection vo_Conn;
        SqlCommand vo_Command;

        string vs_ConnStr = "Data Source=.;Initial Catalog=OTSv1;Trusted_Connection=True";
        string vs_SQLText;

        DataTable tablo; // vt dden gelecek olan tabloyu tutmak için...
        SqlDataAdapter vo_DA; // adapter için
        DataSet vo_DS; // dataset için

        string vs_DT; // Öğrencinin DT sinin string hali
        string vs_Cins;
        int vs_sinif;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btonKayit_Click(object sender, EventArgs e)
        {
            
            try
            {
                
                vo_Conn = new SqlConnection(vs_ConnStr);

                vo_Command = new SqlCommand();
                vo_Conn.Open();

                vo_Command.Connection = vo_Conn;
                vo_Command.CommandText = "INSERT INTO datOgrenci ";
                vo_Command.CommandText += "(OgrNo,OgrAd,OgrSoyad,SinifID,OgrDT,OgrCinsiyet) VALUES (";
                vo_Command.CommandText += Convert.ToInt32(tboxOgrNo.Text) + ",'" + tboxAd.Text + "','" + tboxOgrSoyad.Text + "'," + vs_sinif + ",'" + txttarih.Text + "','" + vs_Cins + "')";
                int a = vo_Command.ExecuteNonQuery();
                if (a > 0)
                {
                    Response.Write("<script>alert('Kayıt Eklendi')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Kayıt Eklenemedi')</script>");
                }
                vo_Conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('Kayıt Eklenemedi')</script>");
                throw;
            }
           

        }

        protected void calrDT_SelectionChanged(object sender, EventArgs e)
        {
            string vs_Gun, vs_Ay, vs_Yil;

            vs_Gun = calrDT.SelectedDate.Day.ToString();
            vs_Ay = calrDT.SelectedDate.Month.ToString();
            vs_Yil = calrDT.SelectedDate.Year.ToString();

            if (vs_Gun.Length < 2)
            {
                vs_Gun = "0" + vs_Gun;

            }

            if (vs_Ay.Length < 2)
            {
                vs_Ay = "0" + vs_Ay;

            }

            vs_DT = vs_Yil + vs_Ay + vs_Gun; // yyyymmdd formatı oluşturuldu
            txttarih.Text = vs_DT;

        }

        protected void rbtlCinsiyet_SelectedIndexChanged(object sender, EventArgs e)
        {
            vs_Cins = rbtlCinsiyet.SelectedValue;
        }

        protected void ddlsSinif_SelectedIndexChanged(object sender, EventArgs e)
        {
           txtsinif.Text = ddlsSinif.SelectedValue;
            vs_sinif = Convert.ToInt32(txtsinif.Text);
        }
    }
}