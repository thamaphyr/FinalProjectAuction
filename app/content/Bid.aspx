<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="Bid.aspx.cs" Inherits="app_content_Bid" %>

<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <uc1:nav runat="server" ID="nav" />
    <section class="nav-respect">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell>
                <asp:TableCell runat="server" ColumnSpan="2">BID AUCTION ITEM <asp:Label ID="Item" runat="server" Text=""></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Id</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="Id" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Init Price</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Label ID="InitPrice" runat="server" Text=""/>
                </asp:TableCell><asp:TableCell runat="server"></asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server">Bid Price</asp:TableCell><asp:TableCell runat="server">
                    <asp:TextBox ID="BidPrice" runat="server"></asp:TextBox>
                </asp:TableCell><asp:TableCell runat="server"></asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server">User Name</asp:TableCell><asp:TableCell runat="server">
                    <asp:Label ID="Username" runat="server" Text=""/>
                </asp:TableCell><asp:TableCell runat="server"></asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server"></asp:TableCell><asp:TableCell runat="server">
                    <asp:Button ID="btnBid" OnClick="btnBid_Click" runat="server" Text="BID" />
                </asp:TableCell><asp:TableCell runat="server">
                    <asp:Button ID="btnBack" OnClick="btnBack_Click" runat="server" Text="Back" />
                </asp:TableCell></asp:TableRow></asp:Table></section>
    
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [auction]"></asp:SqlDataSource>
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

