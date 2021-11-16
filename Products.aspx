<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MIlestones.Products1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">

      
   
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="3px" CellPadding="20" DataKeyField="ProductID" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand"  RepeatDirection="Horizontal" Width="100%" CellSpacing="50" Height="100%" RepeatColumns="3">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td class="text-center" style="height: 214px">
                            <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl='<%# Eval("ProductImage") %>' Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 45px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 31px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductDescription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 44px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 40px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price", "{0:N}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 52px">&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" >
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 52px">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="height: 77px">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductID")%>' CommandName="addtocart" ImageUrl="~/Image/icons8-add-to-cart-64.png" />
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SeparatorStyle BorderColor="White" BorderStyle="None" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WeBCartConnectionString %>" SelectCommand="SELECT * FROM [ProductDetail]"></asp:SqlDataSource>

      
   
    </div>
    <link href="Stylesheet1.css" rel="stylesheet" type="text/css" />


    </asp:Content>
