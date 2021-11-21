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
    public partial class danhsachdiemdanh : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_DanhSachDiemDanh", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@slopid", Request.QueryString["slopid"]);
            cmd.Parameters.AddWithValue("@ibuoihocid", Request.QueryString["ibuoihocid"]);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptdiemdanh.DataSource = dt;
            rptdiemdanh.DataBind();
            con.Close();
        }
    }
}