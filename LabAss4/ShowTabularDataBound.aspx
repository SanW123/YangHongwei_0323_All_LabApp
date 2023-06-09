﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTabularDataBound.aspx.cs" Inherits="LabAss4.ShowTabularDataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
<div>
<h1>Gridview</h1>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
    </asp:GridView>
</div>
<div>
<h1>DataList</h1>
<asp:DataList ID="DataList1" runat="server" DataKeyField="UserName" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        UserName:
        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
        <br />
        Password:
        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
</div>
<div>
<h1>DetailsView</h1>
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
    <Fields>
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Fields>
    </asp:DetailsView>
</div>
<div>
<h1>FormView</h1>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="UserName" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        UserName:
        <asp:Label ID="UserNameLabel1" runat="server" Text='<%# Eval("UserName") %>' />
        <br />
        Password:
        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        UserName:
        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
        <br />
        Password:
        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        UserName:
        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
        <br />
        Password:
        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
        <br />

    </ItemTemplate>
    </asp:FormView>
</div>
<div>
<h1>Repeater</h1>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

<ItemTemplate>
<%#Eval("Username")%>
<i>-->y</i>
<%#Eval("password")%>
</ItemTemplate>

</asp:Repeater>
</div>
<div>
<h1>ListView</h1>
<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

<ItemTemplate>
<%#Eval("Username")%>
<i>-->y</i>
<%#Eval("password")%>
</ItemTemplate>

</asp:ListView>
</div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SimpleDatabaseConnectionString %>" SelectCommand="SELECT [UserName], [Password] FROM [Logon]"></asp:SqlDataSource>

    </form>
</body>
</html>
