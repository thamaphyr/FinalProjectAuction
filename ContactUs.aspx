<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<%@ Register Src="~/Contact.ascx" TagPrefix="uc1" TagName="Contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="contact_container">
        <div class="contact_message">
                <h1 class="auto-style3"> <em>Contact Form</em></h1>
                <p class="auto-style3"> Email our support team with any questions on our mail azimaazimkhanova@edu.com or call 646-477-0095. We would be happy to answer your questions. You can use the form below to contact other users on the website as well with questions about items.
                    </p>
                
        </div>
    </div>
    <uc1:Contact runat="server" ID="Contact" />
</asp:Content>

