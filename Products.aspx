<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MIlestones.Products1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Stylesheet1.css" rel="stylesheet" type="text/css" />


    <div class="row">
        <div class="col-md-4">
            <asp:Image ID="Image1" CssClass="img " class="img-responsive" Width="300px" Height="350px" runat="server" data-target="#product1Modal" data-toggle="modal" /><br />
            <asp:Label ID="Label1" runat="server" class="font-weight-bold" Font-Bold="true" Text="Name"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label4" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image2" CssClass="img" class="img-responsive" Width="300px" Height="350px" runat="server" data-target="#product2Modal" data-toggle="modal" /><br />
            <asp:Label ID="Label5" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label8" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image3" CssClass="img" class="img-responsive" Width="300px" Height="350px" data-target="#product3Modal" data-toggle="modal" runat="server" /><br />
            <asp:Label ID="Label9" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label><br />
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label11" runat="server" class="font-weight-bold" Text="Label" Font-Bold="true"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image4" CssClass="img" class="img-responsive " Width="300px" Height="350px" runat="server" /><br />
            <asp:Label ID="Label13" runat="server" class="font-weight-bold" Font-Bold="true" Text="Name"></asp:Label>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Category"></asp:Label>
            <br />
            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label16" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image5" CssClass="img" class="img-responsive " Width="300px" Height="350px" runat="server" /><br />
            <asp:Label ID="Label17" runat="server" class="font-weight-bold" Font-Bold="true" Text="Name"></asp:Label>
            <br />
            <asp:Label ID="Label18" runat="server" Text="Category"></asp:Label>
            <br />
            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label20" runat="server" Text="Label" class="font-weight-bold" Font-Bold="true"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Image ID="Image6" CssClass="img" class="img-responsive " Width="300px" Height="350px" runat="server" /><br />
            <asp:Label ID="Label21" runat="server" class="font-weight-bold" Font-Bold="true" Text="Name"></asp:Label>
            <br />
            <asp:Label ID="Label22" runat="server" Text="Category"></asp:Label>
            <br />
            <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            <br />
            $<asp:Label ID="Label24" runat="server" Text="Label" clas="font-weight-bold" Font-Bold="true"></asp:Label>
        </div>
    </div>

    <div class="modal fade modal-xl" tabindex="-1" id="product1Modal"
        data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>
                </div>
                <div class="modal-body">

                    <asp:Image ID="Image7" CssClass="img" class="img-responsive justify-content-center" Width="250px" Height="350px" runat="server" data-target="#loginModal" data-toggle="modal" />
                    <br />
                    $<asp:Label ID="Label25" runat="server" Text="quantity"></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="Q1TextChanged" AutoPostBack="true"></asp:TextBox>
                    <br />
                    Total:$
                    &nbsp;&nbsp&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    <div class="modal-footer">
                        <asp:Button ID="Button1" type="submit" class="" runat="server" OnClick="Button1_Click" Text="ADD TO CART" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade modal-xl" tabindex="-1" id="product2Modal"
        data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>
                </div>
                <div class="modal-body">

                    <asp:Image ID="Image8" CssClass="img" class="img-responsive justify-content-center" Width="250px" Height="350px" runat="server" data-target="#loginModal" data-toggle="modal" />
                    <br />
                    $<asp:Label ID="Label26" runat="server" Text="quantity"></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="Q2TextChanged" AutoPostBack="true"></asp:TextBox>
                    <br />
                    Total:$
                     &nbsp;&nbsp&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                    <div class="modal-footer">
                        <asp:Button ID="Button2" type="submit" class="" runat="server" OnClick="Button2_Click" Text="ADD TO CART" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade modal-xl" tabindex="-1" id="product3Modal"
        data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>
                </div>
                <div class="modal-body">

                    <asp:Image ID="Image9" CssClass="img" class="img-responsive justify-content-center" Width="250" Height="350px" runat="server" data-target="#loginModal" data-toggle="modal" />
                    <br />
                    $<asp:Label ID="Label27" runat="server" Text="quantity"></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="Q3TextChanged" AutoPostBack="true"></asp:TextBox>
                    <br />
                    Total:$
                     &nbsp;&nbsp&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                    <div class="modal-footer">
                        <asp:Button ID="Button3" type="submit" class="" runat="server" OnClick="Button3_Click" Text="ADD TO CART" />
                    </div>
                </div>
            </div>
        </div>
    </div>







</asp:Content>
