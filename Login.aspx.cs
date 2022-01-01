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
    public partial class Login : System.Web.UI.Page
    {        // public olarak kullanabileceğim değişgenler
        SqlConnection vo_Conn;
        SqlCommand vo_Command;

        string vs_ConnStr = "Data Source=.;Initial Catalog=OTSv1;Trusted_Connection=True";
        string vs_SQLText;

        DataTable tablo; // vt den gelecek olan tabloyu tutmak için...
        SqlDataAdapter vo_DA; // adapter için
        DataSet vo_DS; // dataset için

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                tboxUserName.Text = "";
                tboxUserPass.Text = "";
            }


            tboxUserPass.Attributes["value"] = tboxUserPass.Text;

        }

        protected void btonLogin_Click(object sender, EventArgs e)
        {
            vo_Conn = new SqlConnection(vs_ConnStr);

            vs_SQLText ="SELECT UserID FROM datUser WHERE ";
            vs_SQLText += "UserName='" + tboxUserName.Text.Trim() + "' AND ";
            vs_SQLText += "UserPass='" + tboxUserPass.Text.Trim() + "'";


            vo_DA = new SqlDataAdapter(vs_SQLText, vo_Conn);

            vo_DS = new DataSet();

            vo_Conn.Open();

            vo_DA.Fill(vo_DS, "datUser");

            if (vo_DS.Tables[0].Rows.Count >0)
            {
                Server.Transfer("Default.aspx");
            }
            else
            {
                Server.Transfer("Error.aspx");
            }

        }
    }
}