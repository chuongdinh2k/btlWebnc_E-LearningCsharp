using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace btl_web_nc.ADMIN
{
    public partial class danhsachsinhvien : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cnn);
            SqlCommand cmd = new SqlCommand("select * from tblSinhvien", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptSinhvien.DataSource = dt;
            rptSinhvien.DataBind();
            con.Close();
        }
    }
}