<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication1.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This Video Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
    <link rel="icon" href="images/favicon.ico?" type="image/x-icon" />
    <link rel="shortcut icon" href="images/favicon.ico?" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Member registration</h1><br />
        <table class="auto-style1">
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valeName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email address:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="valePassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Length of password must be between 6 and 10 letters" SetFocusOnError="True" ValidationExpression="\w{6,10}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm password:</td>
                <td>
                    <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="valcPassword2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" ErrorMessage="Password does not match" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" PostBackUrl="~/Output.aspx" Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click" Text="Clear" />
                </td>
            </tr>
        </table>
    
        <br />
        <asp:ValidationSummary ID="vals" runat="server" />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
