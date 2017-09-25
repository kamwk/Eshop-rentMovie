<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top10.aspx.cs" Inherits="WebApplication1.top10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top 10 page</title>
    <link rel="icon" href="images/favicon.ico?" type="image/x-icon" />
    <link rel="shortcut icon" href="images/favicon.ico?" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #00D96D; height: 1000px;">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="384px" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MovieID", "content.aspx?id={0}") %>' Width="259px" />
                <br />
                MovieName:
                <asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                <br />
                MovieCast:
                <asp:Label ID="MovieCastLabel" runat="server" Text='<%# Eval("MovieCast") %>' />
                <br />
                MovieType:
                <asp:Label ID="MovieTypeLabel" runat="server" Text='<%# Eval("MovieType") %>' />
                <br />
                MovieLength:
                <asp:Label ID="MovieLengthLabel" runat="server" Text='<%# Eval("MovieLength") %>' />
                <br />
                MovieRating:
                <asp:Label ID="MovieRatingLabel" runat="server" Text='<%# Eval("MovieRating") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select top 10 * from MovieContent order by MovieRating DESC"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
