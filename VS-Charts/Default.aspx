<%@ Page Language="C#" Inherits="VSCharts.Default" %>
<!DOCTYPE html>


<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <p>AdRotator <br> Impressions: Color=10, Mono=50</p>
            <p><asp:AdRotator id="adrotator1" runat="server" AdvertisementFile="~/App_Data/adfile.xml" Target="_blank" /></p>
        </div>
	</form>
</body>
</html>
