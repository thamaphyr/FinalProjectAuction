<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Contact.ascx.cs" Inherits="Contact" %>
<style type="text/css">
    .auto-style1 {
        width: 582px;
        height: 279px;
    }
    .auto-style2 {
        width: 359px;
    }
</style>


<table class="auto-style1">
    <tr>
        <td >Name:</td>
        <td >
            <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="411px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter your Name!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >Email:</td>
        <td >
            <asp:TextBox ID="TextBox1" runat="server" Width="409px" Height="22px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter an Email"  ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BorderColor="White" Display="Dynamic" ErrorMessage="Enter a valid Email"  Font-Overline="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"> Message </td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox2" runat="server" Height="107px" TextMode="MultiLine" Width="409px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Send Email" Width="150px"  />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Names="MV Boli"  ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

