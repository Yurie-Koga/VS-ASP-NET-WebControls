<%@ Page Language="C#" AutoEventWireup="true" Inherits="VsAspNetWebControls.Login" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Login</title>
</head>
<body>
	<form id="form1" runat="server">
        <div>
            <p>Log in status: <asp:Label id="statusLabel" runat="server" /></p>
        </div>
        <div>
            <p><asp:Label id="messageLabel" runat="server" /></p>            
        </div>
        <div>
            <p>
                <asp:Button id="loginButton" runat="server" OnClick="loginButtonClick" Text="Log in" />
                <asp:Button id="logoutButton" runat="server" OnClick="logoutButtonClick" Text="Log put" />
            </p>
        </div>
        <div>
            <a href="Page1.aspx">&raquo; Page1</a>
        </div>
	</form>
</body>
</html>
