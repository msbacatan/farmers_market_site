<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FMApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <img src="../Images/COVID_FMAGS-Facebook-4.png" style="width: 900px; height: 298px; margin-bottom: 0px" />
        <h2><%: Title %></h2>
        <h3>Go Farmer's Market</h3>
        <p>Your online resource for all things Farmers Market.</p>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="row"><label class="control-label col-sm-5">General Season Dates:</label><label class="control-label col-sm-5">May - October</label></div>
            <div class="row"><label class="control-label col-sm-5">Time:</label><label class="control-label col-sm-5">*varies* (Market opens for business with the ringing of the bell</label></div>
            <div class="row"><label class="control-label col-sm-5">Where:</label><label class="control-label col-sm-5">Generally located in downtown areas or large local parks</label></div>
            <div class="row"><label class="control-label col-sm-5">Why:</label><label class="control-label col-sm-5">Discover fresh baked goods, locally-grown produce, farm fresh eggs, flowers, jams and preserves, honey, wine, arts and crafts</label></div>
        </div>
    </div>
</asp:Content>

