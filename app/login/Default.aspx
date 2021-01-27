<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="content_Default" %>

<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:nav runat="server" ID="nav" />
    <br />
    <br />
    <asp:Table ID="Table1" runat="server" Height="343px" Width="681px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server" ColumnSpan="2">LOGIN</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Username</asp:TableCell>
            <asp:TableCell runat="server"><input type="text"value=""/></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Password</asp:TableCell>
            <asp:TableCell runat="server"><input type="password"value=""/></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server"></asp:TableCell>
            <asp:TableCell runat="server"><button>LOGIN</button></asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
</asp:Content>

