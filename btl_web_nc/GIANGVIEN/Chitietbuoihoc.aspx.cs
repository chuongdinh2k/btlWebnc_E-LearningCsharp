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
    public partial class Chitietbuoihoc : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        private void LoadData()
        {
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblBuoihoc where iBuoihocid=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["ID"].ToString());

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lbTieude.Text = dt.Rows[i]["sTieude"].ToString();
                    lbNoidung.Text = dt.Rows[i]["sNoidung"].ToString();
                    lbNgay.Text = dt.Rows[i]["dThoigian"].ToString();
                    lbThoigianbatdau.Text = dt.Rows[i]["sThoigianbatday"].ToString();
                    lbThoigianketthuc.Text = dt.Rows[i]["sThoigianketthuc"].ToString();

                    //Hiển thị nội dung lên textbox
                    txtTieude.Text = dt.Rows[i]["sTieude"].ToString();
                    txtNoidung.Text = dt.Rows[i]["sNoidung"].ToString();


                    if (dt.Rows[i]["sTrangthai"].ToString() == "Học")
                    {
                        lbTrangthai.Text = "Học";
                        lbTrangthai.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lbTrangthai.Text = "Nghỉ";
                        lbTrangthai.ForeColor = System.Drawing.Color.Red;
                    }
                }


            }
            con.Close();
        }

        protected void btnCapnhat_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                Label1.Text = strname;
            }
        }
    }
}