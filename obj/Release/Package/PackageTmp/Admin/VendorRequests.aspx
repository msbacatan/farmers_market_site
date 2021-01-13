<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VendorRequests.aspx.cs" Inherits="FMApp.VendorRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>Review Vendor Requests</h1>
    </div>
    <div>
        <table class="table table-striped table-hover table sm text-center">
            <tr>
                <th>Business Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Zip</th>
                <th>County</th>
                <th>Media</th>
                <th>Email</th>
            </tr>
            <% foreach (var Vendor in FMApp.Models.VendorList.GetVendors().sList)
                { %>
            <tr>
                <td><%: Vendor.VendorName %></td>
                <td><%: Vendor.VendorStreet %></td>
                <td><%: Vendor.VendorCity %></td>
                <td><%: Vendor.VendorState %></td>
                <td><%: Vendor.VendorZip %></td>
                <td><%: Vendor.County %></td>
                <td><%: Vendor.VendorMedia %></td>
                <td><%: Vendor.Email %></td>
            </tr>
            <% } %>
        </table>
    </div>
</asp:Content>
