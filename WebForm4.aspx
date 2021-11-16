<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="MIlestones.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: rgba(255,255,255,0.9); padding-left: 8px; border-radius: 10px; padding-top: 1px; padding-bottom: 5px;">

            <div class="container">
                <h1 style="font-family: Martina;">Shopping Cart</h1>
                <p style="color: #333333">
                    Review your order before you pay!
                </p>
                <a href="Products.aspx">&lt; Back to Products</a>
                <br />
                <br />
                <br />



                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="293px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="697px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="S.No" />
                        <asp:ImageField DataImageUrlField="productimage" HeaderText="Item">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productid" HeaderText="Product ID" />
                        <asp:BoundField DataField="productname" HeaderText="Product Name" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField HeaderText="Total Price" />
                        <asp:CommandField DeleteText="Remove Item" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                        <br />
                ORDER #:
                <asp:TextBox ID="txtOrderID" runat="server"></asp:TextBox>
                <br />
                DATE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtOrderDate" runat="server"></asp:TextBox>
                <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" >ClearCart</asp:LinkButton>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
            </div>
        </div>
    </form>
</body>
</html>
