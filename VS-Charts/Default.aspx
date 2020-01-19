<%@ Page Language="C#" Inherits="VSCharts.Default" %>
<!DOCTYPE html>


<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Response.Write</h3>
            <div>
                <p>
                    Input Name:
                    <input type="text" name="myname">
                    <input type="submit" value="OK">
                </p>
            </div>
            <div>
                <%
                if(!String.IsNullOrEmpty(Request["myname"])){
                    Response.Write("Hello " + Request["myname"]);
                }
                %>
            </div>
        </div>

        <div>
            <h3>Event @ Server</h3>
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
        </div>

        <div>
            <h3>AdRotator</h3>
            <p>Impressions: Color=10, Mono=50</p>
            <p><asp:AdRotator id="adrotator1" runat="server" AdvertisementFile="~/App_Data/adfile.xml" Target="_blank" /></p>
        </div>

        <div>
            <h3>BulletedList</h3>
            <p>
                <asp:BulletedList id="bulletedList1" runat="server" BulletStyle="LowerRoman" DisplayMode="LinkButton">
                    <asp:ListItem Value="http://www.cohowinery.com">Coho Winery</asp:ListItem>
                    <asp:ListItem Value="http://www.contoso.com">Contoso, Ltd.</asp:ListItem>
                    <asp:ListItem Value="http://www.tailspintoys.com">Tailspin Toys</asp:ListItem>
                </asp:BulletedList>
            </p>
        </div>
	</form>
</body>
</html>
