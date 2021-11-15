using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace btl_web_nc.GIANGVIEN
{
    public partial class Chitietlophoc : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblBuoihoc where sLopid=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["ID"]);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptBuoihoc.DataSource = dt;
            rptBuoihoc.DataBind();
            con.Close();
        }
    }
}