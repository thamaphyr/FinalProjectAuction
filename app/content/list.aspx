<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="app_content_list" %>

<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:nav runat="server" ID="nav" />
    <section class="nav-respect">

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [auction_id], [item], [init_price], [bid_price], [bidusername], [username] FROM [auction]"></asp:SqlDataSource>

    </section>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="auction_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="auction_id" HeaderText="auction_id" ReadOnly="True" SortExpression="auction_id" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="init_price" HeaderText="init_price" SortExpression="init_price" />
            <asp:BoundField DataField="bid_price" HeaderText="bid_price" SortExpression="bid_price" />
            <asp:BoundField DataField="bidusername" HeaderText="bidusername" SortExpression="bidusername" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        </Columns>
    </asp:GridView>
</asp:Content>

