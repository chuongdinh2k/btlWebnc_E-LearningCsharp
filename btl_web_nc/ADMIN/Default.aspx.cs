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
    public partial class Default : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        string gender;
        string bangcap;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                gender = RadioButton1.Text;
            }
            else if(RadioButton2.Checked)
            { 
                gender = RadioButton2.Text; 
            }

            if (RadioButton3.Checked)
            {
                bangcap = RadioButton3.Text;
            }
            else if (RadioButton4.Checked) { bangcap = RadioButton4.Text; }
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_themgiangvien", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pk_idgv", txtMagv.Text);
            cmd.Parameters.AddWithValue("@sten", txtHoten.Text);
            cmd.Parameters.AddWithValue("@sgioitinh", gender);
            cmd.Parameters.AddWithValue("@dngaysinh", txtNgaysinh.Text);
            cmd.Parameters.AddWithValue("@sdiachi", txtDiaChi.Text);
            cmd.Parameters.AddWithValue("@semail", txtEmail.Text);
            cmd.Parameters.AddWithValue("@scmnd", txtCmnd.Text);
            cmd.Parameters.AddWithValue("@ssodienthoai", txtPhoneNumber.Text);
            cmd.Parameters.AddWithValue("@sbangcap", bangcap);
            cmd.Parameters.AddWithValue("@fk_sidaccount", txtMagv.Text);

            cmd.ExecuteNonQuery();
            DataTable dtbl = new DataTable();

            SqlDataAdapter sqlsda = new SqlDataAdapter(cmd);
            sqlsda.Fill(dtbl);
            con.Close();
            if (dtbl.Rows.Count >= 1)
            {
                for (int i = 0; i < dtbl.Rows.Count; i++)
                {
                    String UserId = dtbl.Rows[i]["PK_idGv"].ToString();
                    Label1.Text = UserId;
                }
              

            }
            else
            {
                Label1.Text = "False";
            }
        }
    }
}