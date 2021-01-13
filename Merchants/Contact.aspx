<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FMApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <img src="../Images/banner.jpg" style="width: 842px; height: 215px; margin-bottom: 0px" />
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <h2><%: Title %></h2>
            <h3>Go Farmers Market</h3>
            <address>
                One Farmers Way<br />
                What Cheer, IA 50268<br />
                <abbr title="Phone">P:</abbr>
                641.555.0100
            </address>
            <br />
            <address>
                <strong>Support:</strong>   <a href="mailto:Support@gofarmersmarket.org">Support@gofarmersmarket.org</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@gofarmersmarket.org">Marketing@gofarmersmarket.org</a>
            </address>
        </div>
    </div>
</asp:Content>
