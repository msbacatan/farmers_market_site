<%@ Page Title="ADMIN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateDirectory.aspx.cs" Inherits="FMApp.UpdateDirectory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h2><%: Title %></h2>
        <h3>Manage Directory</h3>
        <h4>Update Market Information</h4>
    </div>
    <div class="container">
       <div class="row">
          <div class="col-md-6">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="LocationID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="1024px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="LocationID" HeaderText="Location ID" ReadOnly="True" SortExpression="LocationID" />
                    <asp:BoundField DataField="FMID" HeaderText="FM ID" SortExpression="FMID" />
                    <asp:BoundField DataField="MarketStreet" HeaderText="Market Street Address" SortExpression="MarketStreet" />
                    <asp:BoundField DataField="CityID" HeaderText="City ID" SortExpression="CityID" />
                    <asp:BoundField DataField="StateID" HeaderText="State ID" SortExpression="StateID" />
                    <asp:BoundField DataField="MarketZip" HeaderText="Market Zip" SortExpression="MarketZip" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3120ConnectionString %>" DeleteCommand="DELETE FROM [eb_tableLocations] WHERE [LocationID] = @original_LocationID" InsertCommand="INSERT INTO [eb_tableLocations] ([LocationID], [FMID], [MarketStreet], [CityID], [StateID], [MarketZip], [CountyID], [MktLongitude], [MktLatitude]) VALUES (@LocationID, @FMID, @MarketStreet, @CityID, @StateID, @MarketZip, @CountyID, @MktLongitude, @MktLatitude)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [eb_tableLocations] ORDER BY [StateID]" UpdateCommand="UPDATE [eb_tableLocations] SET [FMID] = @FMID, [MarketStreet] = @MarketStreet, [CityID] = @CityID, [StateID] = @StateID, [MarketZip] = @MarketZip, [CountyID] = @CountyID, [MktLongitude] = @MktLongitude, [MktLatitude] = @MktLatitude WHERE [LocationID] = @original_LocationID">
                <DeleteParameters>
                    <asp:Parameter Name="original_LocationID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LocationID" Type="Int32" />
                    <asp:Parameter Name="FMID" Type="Double" />
                    <asp:Parameter Name="MarketStreet" Type="String" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="StateID" Type="Int16" />
                    <asp:Parameter Name="MarketZip" Type="Double" />
                    <asp:Parameter Name="CountyID" Type="Int32" />
                    <asp:Parameter Name="MktLongitude" Type="Double" />
                    <asp:Parameter Name="MktLatitude" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FMID" Type="Double" />
                    <asp:Parameter Name="MarketStreet" Type="String" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="StateID" Type="Int16" />
                    <asp:Parameter Name="MarketZip" Type="Double" />
                    <asp:Parameter Name="CountyID" Type="Int32" />
                    <asp:Parameter Name="MktLongitude" Type="Double" />
                    <asp:Parameter Name="MktLatitude" Type="Double" />
                    <asp:Parameter Name="original_LocationID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          </div>
        </div>
        <br />
        <br />
        <div class="row">
           <div class="col-md-6">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="LocationID" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Horizontal">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="#333333" />
                <Fields>
                    <asp:BoundField DataField="LocationID" HeaderText="LocationID" ReadOnly="True" SortExpression="LocationID" />
                    <asp:BoundField DataField="FMID" HeaderText="FMID" SortExpression="FMID" />
                    <asp:BoundField DataField="MarketStreet" HeaderText="MarketStreet" SortExpression="MarketStreet" />
                    <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                    <asp:BoundField DataField="StateID" HeaderText="StateID" SortExpression="StateID" />
                    <asp:BoundField DataField="MarketZip" HeaderText="MarketZip" SortExpression="MarketZip" />
                    <asp:BoundField DataField="CountyID" HeaderText="CountyID" SortExpression="CountyID" />
                    <asp:BoundField DataField="MktLongitude" HeaderText="MktLongitude" SortExpression="MktLongitude" />
                    <asp:BoundField DataField="MktLatitude" HeaderText="MktLatitude" SortExpression="MktLatitude" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
          </div>
       </div>
    </div>
</asp:Content>