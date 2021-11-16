<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProducts.aspx.cs" Inherits="MIlestones.AdminProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ProductID:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Product Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Product Category:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Prouct Price:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Description:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server">
            </asp:DataList>
            <br />
        </div>
    </form>
</body>
</html>
