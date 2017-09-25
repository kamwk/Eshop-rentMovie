<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="icon" href="images/favicon.ico?" type="image/x-icon" />
    <link rel="shortcut icon" href="images/favicon.ico?" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Member login</h1><br />
        <table class="auto-style1">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Login" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click" Text="Clear" />
                    <asp:Button ID="btnregist" runat="server" CausesValidation="False" OnClick="btnregist_Click" Text="Register" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
        <asp:Label ID="error" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
