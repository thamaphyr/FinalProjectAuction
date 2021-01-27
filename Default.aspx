<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/app/navigation/nav.ascx" TagPrefix="uc1" TagName="nav" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:nav runat="server" ID="nav" />
    <div class="nav-respect">
            HELLO WORLD
    </div>
</asp:Content>

