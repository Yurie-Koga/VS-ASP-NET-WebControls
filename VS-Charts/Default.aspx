<%@ Page Language="C#" Inherits="VSCharts.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
    <form action="Default.aspx" method="POST">
        <p>
            Input Name:
            <input type="text" name="myname">
            <input type="submit" value="OK">
        </p>

        <%
        if(!String.IsNullOrEmpty(Request["myname"])){
            Response.Write("Hello " + Request["myname"]);
        }
        %>
    </form>

    <form id="form1" runat="server">
        <p>
		    <asp:Button id="button1" runat="server" Text="Click me!" OnClick="button1Clicked" />
        </p>

        <p>
            <asp:TextBox id="textbox1" runat="server" Text="Input here"/>        
            <asp:Button id="button2" runat="server" Text="Change Label" OnClick="button2Clicked" />
        </p>
        <p>
            <asp:Label id="label1" runat="server" Text="Input will appear here"/>            
        </p>
	</form>

	
    
</body>
</html>
