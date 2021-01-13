using FMApp.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMApp
{
    public partial class Subscribers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = GetData();
            GridView1.DataBind();
        }

        protected DataTable GetData()
        {
            DataTable dt = new DataTable();
            DbConnection.ExecuteSelectQuery("SELECT * FROM [eb_Subscribers] ORDER BY [ID]", ref dt);
            return dt;

        }
    }
}