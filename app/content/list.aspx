<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="app_content_list" %>

<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:nav runat="server" ID="nav" />
    <section class="nav-respect">

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [auction_id], [item], [init_price], [bid_price], [bidusername], [username] FROM [auction]" DeleteCommand="DELETE FROM [auction] WHERE [auction_id] = @auction_id" InsertCommand="INSERT INTO [auction] ([item], [init_price], [bid_price], [bidusername], [username]) VALUES (@item, @init_price, @bid_price, @bidusername, @username)" UpdateCommand="UPDATE [auction] SET [item] = @item, [init_price] = @init_price, [bid_price] = @bid_price, [bidusername] = @bidusername, [username] = @username WHERE [auction_id] = @auction_id">
            <DeleteParameters>
                <asp:Parameter Name="auction_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="item" Type="String" />
                <asp:Parameter Name="init_price" Type="Int32" />
                <asp:Parameter Name="bid_price" Type="Int32" />
                <asp:Parameter Name="bidusername" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="item" Type="String" />
                <asp:Parameter Name="init_price" Type="Int32" />
                <asp:Parameter Name="bid_price" Type="Int32" />
                <asp:Parameter Name="bidusername" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="auction_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </section>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="auction_id" DataSourceID="SqlDataSource1" AllowSorting="True" OnRowDataBound="gridChangerequirement" >
        <Columns>
            <asp:BoundField DataField="auction_id" HeaderText="auction_id" ReadOnly="True" SortExpression="auction_id" InsertVisible="False" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="init_price" HeaderText="init_price" SortExpression="init_price" />
            <asp:BoundField DataField="bid_price" HeaderText="bid_price" SortExpression="bid_price" />
            <asp:BoundField DataField="bidusername" HeaderText="bidusername" SortExpression="bidusername" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField HeaderText="Bid" />
            <asp:BoundField HeaderText="Delete" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Create Auction" OnClick="Button1_Click" />
</asp:Content>


