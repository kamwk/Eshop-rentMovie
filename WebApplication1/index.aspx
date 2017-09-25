<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>This Video</title>
    <link href="index.css" rel="stylesheet" type="text/css" />
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
                    <asp:TextBox ID="textBoxSearch" runat="server" OnTextChanged="textBoxSearch_TextChanged"></asp:TextBox>
                    <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click"/>
                    <br />
                    <br />
                    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" PostBackUrl="~/login.aspx" />
                    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" PostBackUrl="~/registration.aspx" Text="Register" />
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
            <div id="banner">
                <object width="1000" height="175" data="images/banner.swf"></object>
            </div>
            <div id="movie">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="6" RepeatDirection="Horizontal" Width="500px">
                    <ItemTemplate>
                        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MovieID", "content.aspx?id={0}") %>' Height="190px" Width="130px" />
                        <br />
                        &nbsp;<asp:Label ID="MovieNameLabel" runat="server" Text='<%# Eval("MovieName") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MovieID], [MovieName], [Image] FROM [MovieContent] WHERE ([MovieID] &lt; @MovieID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="6" Name="MovieID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div id="content">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.4185145306233!2d114.17359031439327!3d22.300006435323777!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340400eef0cbe903%3A0xf4ceb8f239442516!2z5bCW5rKZ5ZKA5ryG5ZK46YGT5Y2XNjctNzHomZ_lronlubTlpKflu4g!5e0!3m2!1szh-TW!2shk!4v1491785750572" width="200" height="250" frameborder="0" style="border: 0" allowfullscreen></iframe>
                <iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FThisVideo-Company-772276276272530%2F&amp;width=200&amp;height=590&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=true&amp;show_border=true" scrolling="no" frameborder="0" style="border-style: none; border-color: inherit; border-width: medium; overflow: hidden; width: 310px; height: 252px;" allowtransparency="true"></iframe>
                <iframe width="420" height="240" src="https://www.youtube.com/embed/yT4MOZMwbz8" frameborder="0" allowfullscreen></iframe>
            <ul>
                    <li><a href="/index.aspx">Home</a></li>
                    <li><a href="#news">Top10</a></li>
                    <li><a href="/contact.aspx">Contact</a></li>
                    <li><a href="https://www.facebook.com/ThisVideo-Company-772276276272530/?fref=hovercard" target="_blank">Facebook page</a></li>
            </ul>
            </div>
            
        </div>
    </form>
</body>
</html>
