<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allproduct.aspx.cs" Inherits="WebApplication1.content" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatColumns="4">
            <ItemTemplate>
                MovieName:
                <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                <br />
                MovieRating:
                <asp:Label ID="MovieRatingLabel" runat="server" Text='<%# Eval("MovieRating") %>' />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="384px" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MovieID", "content.aspx?id={0}") %>' Width="259px" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MovieContent]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
