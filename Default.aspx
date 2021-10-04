<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MIlestones._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
                <h3 class="text-center">FEATURED PRODUCTS</h3>
          <div class="row">
        <div class="col-md-4">
                          <asp:Image ID="ftProduct1"   Width="300px" Height="350px" runat="server" />

            <p>
              <asp:Button ID="Button1" runat="server" Text="Shop More &raquo;" OnClick="Button1_Click" Height="26px" Width="132px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small"/>
            </p>
        </div>
        <div class="col-md-4">
                          <asp:Image ID="ftProduct2"   Width="300px" Height="350px" runat="server"  />

            <p>
              <asp:Button ID="Button2" runat="server" Text="Shop More &raquo;" OnClick="Button2_Click" Height="27px" Width="132px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small"/>
        </div>
        <div class="col-md-4">
                           <asp:Image ID="ftProduct3"   Width="300px" Height="350px" runat="server" />

            <p>
              <asp:Button ID="Button3" runat="server" Text="Shop More &raquo;" OnClick="Button3_Click" Height="27px" Width="132px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" />
            </p>
        </div>
    </div>
    </div>

   

</asp:Content>
