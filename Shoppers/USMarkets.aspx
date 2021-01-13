<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="USMarkets.aspx.cs" Inherits="FMApp.USMarkets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="page-header">
        <h2><%: Title %></h2>
        <h3>National Farmer's Market Directory</h3>
        <h4>Find A Local Market</h4>
    </div>
    <br />
 <div class="row">
    <div class="col-md-3">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="250px" DataKeyNames="StateID">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="StateID" HeaderText="State ID" SortExpression="StateID" />
                <asp:BoundField DataField="MarketState" HeaderText="State" SortExpression="MarketState" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableStates] ORDER BY [MarketState]"></asp:SqlDataSource>
    </div>
<div class="col-md-4">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="250px" DataKeyNames="CountyID">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CountyID" HeaderText="County ID" SortExpression="CountyID" />
            <asp:BoundField DataField="CountyName" HeaderText="County" SortExpression="CountyName" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableCounties] ORDER BY [CountyName]"></asp:SqlDataSource>
</div>
    <div class="col-md-5">
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal" Width="420px" DataKeyNames="CityID">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CityID" HeaderText="City ID" SortExpression="CityID" />
                <asp:BoundField DataField="MarketCity" HeaderText="City" SortExpression="MarketCity" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableCities] ORDER BY [MarketCity]"></asp:SqlDataSource>
    </div>
</div>
<br />
<div class="row">
    <div class="col-md-6">
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="LocationID" DataSourceID="SqlDataSource4" GridLines="Horizontal" Width="1024px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="LocationID" HeaderText="Location ID" ReadOnly="True" SortExpression="LocationID" />
                <asp:BoundField DataField="FMID" HeaderText="FM ID" SortExpression="FMID" />
                <asp:BoundField DataField="MarketStreet" HeaderText="Market Street Address" SortExpression="MarketStreet" />
                <asp:BoundField DataField="CityID" HeaderText="City ID" SortExpression="CityID" />
                <asp:BoundField DataField="StateID" HeaderText="State ID" SortExpression="StateID" />
                <asp:BoundField DataField="MarketZip" HeaderText="Zip" SortExpression="MarketZip" />
                <asp:BoundField DataField="CountyID" HeaderText="County ID" SortExpression="CountyID" />
                <asp:BoundField DataField="MktLongitude" HeaderText="Longitude" SortExpression="MktLongitude" />
                <asp:BoundField DataField="MktLatitude" HeaderText="Latitude" SortExpression="MktLatitude" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableLocations] WHERE (([StateID] = @StateID) AND ([CountyID] = @CountyID) AND ([CityID] = @CityID)) ORDER BY [MarketZip]">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="StateID" PropertyName="SelectedValue" Type="Int16" />
                <asp:ControlParameter ControlID="GridView2" Name="CountyID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="GridView3" Name="CityID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
<br />
<div class="row">
    <div class="col-md-3">
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="FMID" DataSourceID="SqlDataSource5" GridLines="Horizontal" Width="470px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FMID" HeaderText="FM ID" ReadOnly="True" SortExpression="FMID" />
                <asp:BoundField DataField="MarketName" HeaderText="Market Place Name" SortExpression="MarketName" />
                <asp:BoundField DataField="MediaID" HeaderText="Media ID" SortExpression="MediaID" />
                <asp:BoundField DataField="LocationID" HeaderText="Location ID" SortExpression="LocationID" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableMarkets] WHERE ([LocationID] = @LocationID) ORDER BY [MarketName]">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView4" Name="LocationID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource6" GridLines="Horizontal" Width="1024px">
            <Columns>
                <asp:BoundField DataField="MediaID" HeaderText="Media ID" SortExpression="MediaID" />
                <asp:BoundField DataField="FMID" HeaderText="FM ID" SortExpression="FMID" />
                <asp:BoundField DataField="MktWebsite" HeaderText="Website" SortExpression="MktWebsite" />
                <asp:BoundField DataField="MktFacebook" HeaderText="Facebook" SortExpression="MktFacebook" />
                <asp:BoundField DataField="MktTwitter" HeaderText="Twitter" SortExpression="MktTwitter" />
                <asp:BoundField DataField="MktYoutube" HeaderText="YouTube" SortExpression="MktYoutube" />
                <asp:BoundField DataField="MktOtherMedia" HeaderText="Other Media" SortExpression="MktOtherMedia" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" SelectCommand="SELECT * FROM [eb_tableMedias] WHERE ([FMID] = @FMID) ORDER BY [FMID]">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView5" Name="FMID" PropertyName="SelectedValue" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>
