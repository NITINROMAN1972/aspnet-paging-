<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridPaging.aspx.cs" Inherits="Paging_Project_GridPaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ShowHeaderWhenEmpty="true" ID="GridUser" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridUser_PageIndexChanging">
                <HeaderStyle CssClass="kt-shape-bg-color-3" />
                <Columns>
                    <asp:TemplateField ControlStyle-CssClass="col-xs-1" HeaderText="Sr.No">
                        <ItemTemplate>
                            <asp:HiddenField ID="id" runat="server" Value="id" />
                            <span>
                                <%#Container.DataItemIndex + 1%>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
                    <asp:BoundField DataField="AppType" HeaderText="App Type" SortExpression="AppType" />
                    <asp:BoundField DataField="AppNo" HeaderText="App No" SortExpression="AppNo" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
