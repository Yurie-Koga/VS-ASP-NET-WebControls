<%@ Page Language="C#" Inherits="VsAspNetWebControls.Default" %>
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
                <asp:BulletedList id="bulletedList1" runat="server" BulletStyle="LowerRoman" DisplayMode="HyperLink" Target="_blank">
                    <asp:ListItem Value="http://www.cohowinery.com">Coho Winery</asp:ListItem>
                    <asp:ListItem Value="http://www.contoso.com">Contoso, Ltd.</asp:ListItem>
                    <asp:ListItem Value="http://www.tailspintoys.com">Tailspin Toys</asp:ListItem>
                </asp:BulletedList>
            </p>
        </div>

        <div>
            <h3>Calendar</h3>
            <p><asp:Calendar id="calendar1" runat="server" OnSelectionChanged="calendar1SelectionChanged" /></p>
            <p><asp:Label id="labelCalendar1" runat="server" Text="Selected Date on Calendar will appear here." /></p>
        </div>

        <div>
            <h3>CheckBox CheckedChanged Example</h3>
            <p>Select whether to include tax in the subtotal.</p>

            <table border="1" cellpadding="5">
                <tr>
                    <th colspan="2">Shopping cart</th>
                </tr>

                <tr>
                    <td>Item 1</td>
                    <td>$1</td>
                </tr>

                <tr>
                    <td>Item 2</td>
                    <td>$2</td>
                </tr>

                <tr>
                    <td>Item 3</td>
                    <td>$3</td>
                </tr>

                <tr>
                    <td><b>Subtotal</b></td>
                    <td><asp:Label id="labelCheckbox1" runat="server"/></td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:CheckBox id="checkbox1" runat="server"
                            AutoPostBack="True"
                            Text="Include 8.6% sales tax"
                            TextAlign="Right"
                            OnCheckedChanged="Check_Clicked"/>
                    </td>
                </tr>
            </table>
        </div>

        <div>
            <h3>DropDownList</h3>
            <p>
                <asp:DropDownList id="dropDownList1" runat="server">
                    <asp:ListItem Selected="True" Value="White">White</asp:ListItem>
                    <asp:ListItem Value="Gray">Gray</asp:ListItem>
                    <asp:ListItem Value="Black">Black</asp:ListItem>
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                </asp:DropDownList>
                <asp:Button id="buttonColor" runat="server" Text="Change color" OnClick="buttonColorClicked" />
                <asp:Label id="labelDDList1" runat="server" Text="Selected Color"/>
            </p>
        </div>
	</form>
</body>
</html>
