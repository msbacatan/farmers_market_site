<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FMApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Go Farmers Market</h1>
        <p class="lead">e-Guide</p>
        <p><a href="https://msci3120-01.azurewebsites.net/Shoppers/Resources" class="btn btn-success btn-lg">Discover &raquo;</a></p>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <h2>Vendor Spotlight</h2>
                <p>
                    Meet the "Raw Chocolate Man"
                </p>
                <p>
                    <asp:Image ID="defaultImg2" runat="server" ImageUrl="~/Images/noah_loin_about_large.jpg" BorderStyle="Outset" Height="321px" Width="225px" />
                </p>
                <p>
                    <a class="btn btn-default" href="https://www.rawchocolateman.com/pages/about-us" target="_blank">Read Bio &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>News & Events</h2>
                <p>
                    Check out the lastest tweets from USDA
                </p>
                <p>
                    <asp:Image ID="defaultImg1" runat="server" ImageUrl="~/Images/the_market_logo.jpg" Height="228px" Width="226px" />
                </p>
                <p>
                    <a class="btn btn-default" href="https://twitter.com/search?q=%23USDAFarmersMkt&src=typd" target="_blank">#USDAFarmersMkt &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Featured Product</h2>
                <p>
                    Organic lotion from "Rare Bird Soap Shop"
                </p>
                <p>
                    <asp:Image ID="defaultImg3" runat="server" ImageUrl="~/Images/rarebirdsoapshop_handsalve.jpg" BorderStyle="Outset" Height="321px" Width="225px" />
                </p>
                <p>
                    <a class="btn btn-default" href="http://www.rarebirdsoapshop.com/" target="_blank">Learn More &raquo;</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
