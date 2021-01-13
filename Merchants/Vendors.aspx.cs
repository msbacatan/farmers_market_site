using FMApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMApp
{
    public partial class Vendors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clearFields();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Get Vendor list from Session
                VendorList sList = VendorList.GetVendors();

                // Add new Vendor to list
                sList.AddVendor(txtVendorName.Text, txtVendorStreet.Text, txtVendorCity.Text, txtVendorState.Text, txtVendorZip.Text, txtCounty.Text, txtVendorMedia.Text, txtEmail.Text);

                lblOutput.Visible = true;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        protected void clearFields()
        {
            txtVendorName.Text = "";
            txtVendorStreet.Text = "";
            txtVendorCity.Text = "";
            txtVendorState.Text = "";
            txtVendorZip.Text = "";
            txtCounty.Text = "";
            txtVendorMedia.Text = "";
            txtEmail.Text = "";
            txtEmail1.Text = "";
            requiredEmail.Visible = false;
            lblOutput.Visible = false;
        }
    }
}