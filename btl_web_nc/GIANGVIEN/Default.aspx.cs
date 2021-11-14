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
    public partial class Default : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblLop where sGiangvienid=@giangvienID", con);
            cmd.Parameters.AddWithValue("@giangvienID", Session["UserId"]);
            
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptLophoc.DataSource = dt;
            rptLophoc.DataBind();
            con.Close();
        }

        protected void rptLophoc_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}