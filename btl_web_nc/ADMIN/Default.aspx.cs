﻿using System;
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

    }
}