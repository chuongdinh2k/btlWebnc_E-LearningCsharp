using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace btl_web_nc
{
    public partial class Login : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Button đăng nhâp
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Do MD5 Hashing...
            //Mã hóa mật khẩu bằng md5
            byte[] hs = new byte[50];
            string pass = txtPassword.Text;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();
            SqlConnection con = new SqlConnection(cnn);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", hash_pass);
            cmd.ExecuteNonQuery();
            DataTable dtbl = new DataTable();

            SqlDataAdapter sqlsda = new SqlDataAdapter(cmd);
            sqlsda.Fill(dtbl);
            if (dtbl.Rows.Count >= 1)
            {
                for (int i = 0; i < dtbl.Rows.Count; i++)
                {
                    String UserId = dtbl.Rows[i]["sPk_sIdAccount"].ToString();/* lưu id user vào sessison*/
                    Session["UserId"] = UserId;
                }
                Response.Redirect("Default.aspx");/* điều hướng khi đăng nhập thành công*/

            }
            else
            {
                error.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
            }
        }
    }
}