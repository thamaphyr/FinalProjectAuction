<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="app_content_create" %>
<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
    <section class="nav-respect">
        <br />
        <asp:Table ID="Table1" runat="server" Height="45px" Width="470px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server" ColumnSpan="2">CREATE AUCTION</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Item</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="Item" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Init Price</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="InitPrice" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Username</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="Username" runat="server" Enabled="False"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="btnCreate" runat="server" Text="Button" OnClick="btnCreate_Click" />
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Label ID="lblMsg" runat="server" Text="" CssClass="MessageError"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [auction] WHERE [auction_id] = @auction_id" InsertCommand="INSERT INTO [auction] ([item], [init_price], [bid_price], [user_id], [username], [bidusername]) VALUES (@item, @init_price, @bid_price, @user_id, @username, @bidusername)" SelectCommand="SELECT * FROM [auction]" UpdateCommand="UPDATE [auction] SET [item] = @item, [init_price] = @init_price, [bid_price] = @bid_price, [user_id] = @user_id, [username] = @username, [bidusername] = @bidusername WHERE [auction_id] = @auction_id">
            <DeleteParameters>
                <asp:Parameter Name="auction_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="item" Type="String" />
                <asp:Parameter Name="init_price" Type="Int32" />
                <asp:Parameter Name="bid_price" Type="Int32" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="bidusername" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="item" Type="String" />
                <asp:Parameter Name="init_price" Type="Int32" />
                <asp:Parameter Name="bid_price" Type="Int32" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="bidusername" Type="String" />
                <asp:Parameter Name="auction_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </section>
</asp:Content>


