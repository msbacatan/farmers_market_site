using FMApp.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FMApp
{
    public partial class Subscribe : System.Web.UI.Page
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
                DbConnection.ExecuteInsertQuery("Insert into eb_Subscribers Values('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtAddress.Text + "', '" + txtCity.Text + "', '" + ddlState.Text + "', '" + txtZip.Text + "', '" + txtEmail.Text + "', '" + txtTwitter.Text + "')");
                lblOutput.Visible = true;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        protected void clearFields()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            ddlState.SelectedValue = null;
            txtZip.Text = "";
            txtEmail.Text = "";
            txtEmail1.Text = "";
            txtTwitter.Text = "";
            lblOutput.Visible = false;
        }
    }
}