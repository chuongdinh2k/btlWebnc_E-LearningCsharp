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
        int ibuoihocid;
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
            if (dt.Rows.Count >= 1)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    String UserId = dt.Rows[i]["ibuoihocid"].ToString();
                    
                }
                rptBuoihoc.DataSource = dt;
                rptBuoihoc.DataBind();
            }
            //rptBuoihoc.DataSource = dt;
            //rptBuoihoc.DataBind();
            con.Close();
        }

        protected void rptBuoihoc_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HyperLink hyperLink = (HyperLink)e.Item.FindControl("HyperLink2");
                
                SqlConnection con = new SqlConnection(cnn);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblBuoihoc where sLopid=@id", con);
                cmd.Parameters.AddWithValue("@id", Request.QueryString["ID"]);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);


                if (dt.Rows.Count >= 1)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        String ibuoihocid = dt.Rows[i]["ibuoihocid"].ToString();
                        hyperLink.NavigateUrl = String.Format("danhsachdiemdanh.aspx?slopid={0}&ibuoihocid={1}",Request.QueryString["ID"], ibuoihocid);
                    }
                }
                con.Close();
            }
        }
    }
}