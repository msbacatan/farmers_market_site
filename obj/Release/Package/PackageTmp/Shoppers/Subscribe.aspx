<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subscribe.aspx.cs" Inherits="FMApp.Subscribe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
    <h1>Subscribe</h1>
    <p class="lead">Sign-up for exclusive membership access and special mailings!</p>
</div>
<div class="container">
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">First Name:</label>
            <div class="col-md-4"><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Missing" ControlToValidate="txtFirstName" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Last Name:</label>
            <div class="col-md-4"><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Missing" ControlToValidate="txtLastName" CssClass="alert-warning"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Address:</label>
            <div class="col-md-4"><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please provide mailing address" CssClass="alert-warning" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">City:</label>
            <div class="col-md-4"><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Enter City" CssClass="alert-warning" ControlToValidate="txtCity" EnableTheming="True"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">State:</label>
            <div class="col-md-4"><asp:DropDownList ID="ddlState" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" DataTextField="StateName" DataValueField="StateCode" AutoPostBack="True" Width="80px">
                    <asp:ListItem Selected="True" Text="" Value="null"></asp:ListItem>
                    <asp:ListItem Value="AL">AL</asp:ListItem>
                    <asp:ListItem Value="AK">AK</asp:ListItem>
                    <asp:ListItem Value="AZ">AZ</asp:ListItem>
                    <asp:ListItem Value="AR">AR</asp:ListItem>
                    <asp:ListItem Value="CA">CA</asp:ListItem>
                    <asp:ListItem Value="CO">CO</asp:ListItem>
                    <asp:ListItem Value="CT">CT</asp:ListItem>
                    <asp:ListItem Value="DE">DE</asp:ListItem>
                    <asp:ListItem Value="FL">FL</asp:ListItem>
                    <asp:ListItem Value="GA">GA</asp:ListItem>
                    <asp:ListItem Value="HI">HI</asp:ListItem>
                    <asp:ListItem Value="ID">ID</asp:ListItem>
                    <asp:ListItem Value="IL">IL</asp:ListItem>
                    <asp:ListItem Value="IN">IN</asp:ListItem>
                    <asp:ListItem Value="IA">IA</asp:ListItem>
                    <asp:ListItem Value="KS">KS</asp:ListItem>
                    <asp:ListItem Value="KY">KY</asp:ListItem>
                    <asp:ListItem Value="LA">LA</asp:ListItem>
                    <asp:ListItem Value="ME">ME</asp:ListItem>
                    <asp:ListItem Value="MD">MD</asp:ListItem>
                    <asp:ListItem Value="MA">MA</asp:ListItem>
                    <asp:ListItem Value="MI">MI</asp:ListItem>
                    <asp:ListItem Value="MN">MN</asp:ListItem>
                    <asp:ListItem Value="MS">MS</asp:ListItem>
                    <asp:ListItem Value="MO">MO</asp:ListItem>
                    <asp:ListItem Value="MT">MT</asp:ListItem>
                    <asp:ListItem Value="NE">NE</asp:ListItem>
                    <asp:ListItem Value="NV">NV</asp:ListItem>
                    <asp:ListItem Value="NH">NH</asp:ListItem>
                    <asp:ListItem Value="NJ">NJ</asp:ListItem>
                    <asp:ListItem Value="NM">NM</asp:ListItem>
                    <asp:ListItem Value="NY">NY</asp:ListItem>
                    <asp:ListItem Value="NC">NC</asp:ListItem>
                    <asp:ListItem Value="ND">ND</asp:ListItem>
                    <asp:ListItem Value="OH">OH</asp:ListItem>
                    <asp:ListItem Value="OK">OK</asp:ListItem>
                    <asp:ListItem Value="OR">OR</asp:ListItem>
                    <asp:ListItem Value="PA">PA</asp:ListItem>
                    <asp:ListItem Value="RI">RI</asp:ListItem>
                    <asp:ListItem Value="SC">SC</asp:ListItem>
                    <asp:ListItem Value="SD">SD</asp:ListItem>
                    <asp:ListItem Value="TN">TN</asp:ListItem>
                    <asp:ListItem Value="TX">TX</asp:ListItem>
                    <asp:ListItem Value="UT">UT</asp:ListItem>
                    <asp:ListItem Value="VT">VT</asp:ListItem>
                    <asp:ListItem Value="VA">VA</asp:ListItem>
                    <asp:ListItem Value="WA">WA</asp:ListItem>
                    <asp:ListItem Value="WV">WV</asp:ListItem>
                    <asp:ListItem Value="WI">WI</asp:ListItem>
                    <asp:ListItem Value="WY">WY</asp:ListItem>
                </asp:DropDownList></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Choose State" CssClass="alert-warning" Display="Dynamic" ControlToValidate="ddlState"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Zip code:</label>
            <div class="col-md-4"><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Enter Zip" CssClass="alert-warning" Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Email:</label>
            <div class="col-md-4"><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" CssClass="alert-warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator></div>
            <div class="col-md-4"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="#3366CC"></asp:RequiredFieldValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Confirm Email:</label>
            <div class="col-md-4"><asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox></div>
            <div class="col-md-4"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail1" CssClass="alert-warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
            <div class="col-md-4"><asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="alert-info" Display="Dynamic" ErrorMessage="Email addresses must match" ControlToCompare="txtEmail" ControlToValidate="txtEmail1"></asp:CompareValidator></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="control-label col-md-4">Twitter:</label>
            <div class="col-md-4"><asp:TextBox ID="txtTwitter" runat="server"></asp:TextBox></div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-4"><asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /></div>
            <div class="col-md-4"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></div>
        </div>
    </div>
    <div class="row">
              <div class="col-md-4"><asp:Label ID="lblOutput" runat="server" Text="Success! Thank you for subscribing!" Visible="False" CssClass="alert-success"></asp:Label></div>
    </div>
</div>
</asp:Content>
