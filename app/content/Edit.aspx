<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="app_content_Edit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <section class="nav-respect">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate></ContentTemplate>
        </asp:UpdatePanel>
            <asp:Table ID="Table1" runat="server" Width="417px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server" ColumnSpan="2">EDIT MY AUCTION</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Id</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Id" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
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
                    <asp:TableCell runat="server">Bid Price      $</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="BidPrice" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Bid Username</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="BidUsername" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label ID="lblMsg" runat="server" Text="" CssClass="MessageError"></asp:Label>
        </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [auction]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [auction] WHERE [auction_id] = @original_auction_id" InsertCommand="INSERT INTO [auction] ([item], [init_price], [bid_price], [user_id], [username], [bidusername]) VALUES (@item, @init_price, @bid_price, @user_id, @username, @bidusername)" UpdateCommand="UPDATE [auction] SET [item] = @item, [init_price] = @init_price, [bid_price] = @bid_price, [user_id] = @user_id, [username] = @username, [bidusername] = @bidusername WHERE [auction_id] = @original_auction_id">
            <DeleteParameters>
                <asp:Parameter Name="original_auction_id" Type="Int32" />
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
                <asp:Parameter Name="original_auction_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" Visible="False">
            <Columns>
                <asp:BoundField />
                <asp:BoundField />
                <asp:BoundField />
                <asp:BoundField />
                <asp:BoundField />
            </Columns>
        </asp:GridView>
    
</asp:Content>

