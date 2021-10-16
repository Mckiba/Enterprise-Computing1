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


                <asp:GridView runat="server" ID="GridView1" DataKeyNames="ProductId" AutoGenerateColumns="false" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" EmptyDataText="There is nothing in your shopping cart." GridLines="None" Width="100%" CellPadding="5" ShowFooter="true">

                    <Columns>
                        <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            <FooterTemplate>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="ProductId " ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />
                                <asp:LinkButton ID="btnRemove" runat="server" CausesValidation="false" CommandName="Remove" CommandArgument="<%# Container.DataItemIndex %>"
                                    Text="Remove" />

                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Total Price" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblToalPrice" runat="server" Font-Bold="true" Font-Size="Medium" Text="" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>

                            <FooterTemplate>
                                <asp:Label ID="lblGroupTotal" runat="server" Font-Bold="true" Font-Size="Medium" />
                            </FooterTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle HorizontalAlign="Left" BackColor="#74D6FF" ForeColor="#FFFFFF" />
                    <FooterStyle HorizontalAlign="Right" BackColor="#74D6FF" ForeColor="#FFFFFF" />
                    <AlternatingRowStyle BackColor="#f0f2f5" />
                </asp:GridView>

                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
