using System;
using System.Collections.Generic;
using System.Data;
using FMApp.Models;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMApp
{
    public partial class UpdateDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add headers
            DataTable dt = new DataTable();
            dt.Columns.Add("Business Name");
            dt.Columns.Add("Address");
            dt.Columns.Add("City");
            dt.Columns.Add("State");
            dt.Columns.Add("County");
            dt.Columns.Add("Zip");
            dt.Columns.Add("Media");
            dt.Columns.Add("Email");

            // Add each bean data as a data table entry
            VendorList sList = VendorList.GetVendors();
            for (int i = 0; i < sList.Count; i++)
            {
                dt.Rows.Add(sList[i].VendorName, sList[i].VendorStreet, sList[i].VendorCity, sList[i].VendorState, sList[i].VendorZip, sList[i].County, sList[i].VendorMedia, sList[i].Email);
            }
        }
    }
}