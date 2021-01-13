<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="FMApp.Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
    <h2><%: Title %></h2>
    <h2>Stay Fit & Fresh</h2>
</div>
<div class="container">
       <div class="row justify-content-center">
          <div class="col-md-4">
            <div class="card shadow" style="width: 30rem;">
                <div class="inner">
                    <img class="card-img-top" src="../Images/Seasonality-chart.jpg" alt="Card image cap" style="width: 270px">
                </div>
              <div class="card-body">
                <h5 class="card-title">Seasonal Guide</h5>
                <p class="card-text">Nothing tastes better than a ripe fruit or veggie in season. USDA's Snap-ed program provides an interactive website making it easier to search for fresh foods by season.</p>
                <a href="https://snaped.fns.usda.gov/seasonal-produce-guide" target="_blank" class="btn btn-success">Explore</a>
              </div>
            </div>
          </div>
         <div class="col-md-4">
            <div class="card shadow" style="width: 30rem;">
                <div class="inner">
                    <img class="card-img-top" src="../Images/fight-bac.JPG" alt="Card image cap" style="width: 270px">
                </div>
              <div class="card-body">
                <h5 class="card-title">FIGHT BAC!</h5>
                <p class="card-text">Print out this flyer as a quick reference guide to food safety.</p>
                <a href="https://www.ctahr.hawaii.edu/new/foodsafety/forms/FIGHTBAC_saferFV.pdf" target="_blank" class="btn btn-success">Print</a>
              </div>
           </div>
         </div>
         <div class="col-md-4">
            <div class="card shadow" style="width: 30rem;">
                <div class="inner">
                    <img class="card-img-top" src="../Images/When-to-Buy-Fruits-and-Vegetables-A-Month-By-Month-Guide-Post-Insert.jpg" alt="Card image cap" style="width: 270px">
                </div>
              <div class="card-body">
                <h5 class="card-title">Food Guide Library</h5>
                <p class="card-text">Check out seasonalfoodguide.org for a comprehensive guide of freshly available food in your local area. Find fun facts and recipes for your favorite fruits and veggies.</p>
                <a href="https://www.seasonalfoodguide.org/" target="_blank" class="btn btn-success">Explore</a>
              </div>
            </div>
          </div>
      </div>
</div>
</asp:Content>
