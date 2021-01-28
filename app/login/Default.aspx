<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="content_Default" %>

<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:nav runat="server" ID="nav" />
    <section class="nav-respect">
        <asp:Table ID="Table1" runat="server" Height="343px" Width="681px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server" ColumnSpan="2">LOGIN</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Username</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="username" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Password</asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="password" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            </Columns>
        </asp:GridView>

</asp:Content>

