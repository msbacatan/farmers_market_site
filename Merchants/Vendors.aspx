<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vendors.aspx.cs" Inherits="FMApp.Vendors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <img src="../Images/Fall_22_CREDIT_C_Martin_for_Visit_Alexandria_2100x1400_24a10ff2_6725_4654_a680_036e5d730a28_1__f99f634c-5a41-43e9-8480-b87429cf993f.jpg" style="width: 720px; height: 183px; margin-bottom: 0px; margin-left: 0px;" />
        <h1>Join our Vendor Network</h1>
        <h3>Please provide the following information:</h3>
    </div>
    <div class="container">
           <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Vendor Name:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorName" runat="server" AutoPostBack="True"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Business Name" ControlToValidate="txtVendorName" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Street Address:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorStreet" runat="server" AutoPostBack="True"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Business Address" ControlToValidate="txtVendorCity" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">City:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorCity" runat="server"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter City" ControlToValidate="txtVendorCity" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">State:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorState" runat="server"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter State" ControlToValidate="txtVendorState" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">County:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtCounty" runat="server"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter County" ControlToValidate="txtCounty" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Zip:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorZip" runat="server"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Zip" ControlToValidate="txtVendorZip" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                    <div class="col-md-5"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid ZipCode" ControlToValidate="txtVendorZip" CssClass="alert-info" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Website:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtVendorMedia" runat="server"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter URL" ControlToValidate="txtVendorMedia" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                    <div class="col-md-5"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid URL" ControlToValidate="txtVendorMedia" CssClass="alert-info" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Email:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtEmail" runat="server" AutoPostBack="True" TextMode="Email"></asp:TextBox></div>
                    <div class="col-md-5"><asp:RequiredFieldValidator ID="requiredEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
                    <div class="col-md-5"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail" CssClass="alert-info" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <label class="control-label col-md-5">Confirm Email:</label>
                    <div class="col-md-5"><asp:TextBox ID="txtEmail1" runat="server" TextMode="Email"></asp:TextBox></div>
                    <div class="col-md-5"><asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="alert-warning" Display="Dynamic" ErrorMessage="Email addresses must match" ControlToCompare="txtEmail" ControlToValidate="txtEmail1"></asp:CompareValidator></div>
                    <div class="col-md-5"><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail1" CssClass="alert-info" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
                </div>
            </div>
            <div class="row">
                <div class="form group">
                    <div class="col-md-5">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </div>
                    <div class="col-md-5">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <asp:Label ID="lblOutput" runat="server" Text="Success! Confimation email will be sent." Visible="False" CssClass="alert-success"></asp:Label>
                </div>
            </div>
    </div>
</asp:Content>
