<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="WebApplication1.content1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>This Video</title>
<link href="content.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="images/favicon.ico?" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico?" type="image/x-icon" />
</head>

<body>
<form id="form1" runat="server">
<div id="container">
	<div id="header" style="font-size: 20px; font-weight: bold; color: #0066CC;">
                <img src="images/logo.png" alt="Logo" style="width: 100px; height: 100px;" />
                The largest movie rental company in whole country online la.
                <div id="login">
                    <asp:TextBox ID="textBoxSearch1" runat="server"></asp:TextBox>
                    <asp:Button ID="btnsearch1" runat="server" Text="Search" OnClick="btnsearch_Click"/>
                    <br />
                    <br />
                    <asp:Button ID="btnlogin1" runat="server" Text="Login" OnClick="btnlogin_Click" PostBackUrl="~/login.aspx" />
                    <asp:Button ID="btnregister1" runat="server" OnClick="btnregister_Click" PostBackUrl="~/registration.aspx" Text="Register" />
                    <br />
                    <asp:Label ID="name" runat="server"></asp:Label>
                </div>
            </div>
    <div id="tool">
        <ul>
                    <li><a href="/index.aspx">Home</a></li>
                    <li><a href="/top10.aspx">Top10</a></li>
                    <li><a href="/contact.aspx">Contact</a></li>
                    <li><a href="https://www.facebook.com/ThisVideo-Company-772276276272530/?fref=hovercard" target="_blank">Facebook page</a></li>
        </ul>
    </div>
    <div id="movie">
        <div id="moviePhoto">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="345px" ImageUrl='<%# Eval("Image", "images/{0}") %>' Width="233px" />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MovieID], [Image] FROM [MovieContent] WHERE ([MovieID] = @MovieID2)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MovieID2" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div id="movieDetail">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="MovieID" DataSourceID="SqlDataSource2">
                <ItemTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MovieContent] WHERE ([MovieID] = @MovieID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MovieID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="btnRent" runat="server" Text="Rent this movie" OnClick="btnRent_Click" /></br ></br >
            <ul style="list-style: none;"><li><a href="/top10.aspx">Top 10</a></li></ul>
            <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
        </div>
        <div id="advertisement">
            <asp:Image ID="img" runat="server" />
        </div>
  </div>
    <div id="content"></div>
</div>
</form>
</body>
</html>

