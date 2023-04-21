<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowListControls.aspx.cs" Inherits="LabAss4.ShowListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div><h1>ListBox</h1>
<asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
</div>
<div><h1>DropDownList</h1>
 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:DropDownList>
 </div>
<div><h1>BulletedList</h1>
     <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:BulletedList>
</div>
<div><h1>CheckBoxList</h1>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:CheckBoxList>
</div>
<div><h1>RadioButtonList</h1>
    <asp:RadioButtonList ID="RadioButtonListl" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:RadioButtonList>
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SimpleDatabaseConnectionString %>" ProviderName="<%$ ConnectionStrings:SimpleDatabaseConnectionString.ProviderName %>" SelectCommand="SELECT [UserName], [Password] FROM [Logon]"></asp:SqlDataSource>
    </form>
</body>
</html>
