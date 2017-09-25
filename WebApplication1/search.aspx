<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="WebApplication1.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search result</title>
    <link rel="icon" href="images/favicon.ico?" type="image/x-icon" />
    <link rel="shortcut icon" href="images/favicon.ico?" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MovieID", "content.aspx?id={0}") %>' Height="384px" Width="259px"/>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MovieContent] WHERE ([MovieName] LIKE '%' + @MovieName + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="MovieName" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
