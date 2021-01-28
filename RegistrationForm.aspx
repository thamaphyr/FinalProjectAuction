<%@ Page Title="" Language="C#" MasterPageFile="~/layouts/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
        <script>
        function checkPass(source, args)
        {
            var password = document.getElementById("<%=txtPassword1.ClientID%>");
            if (password.value.toString().length >= 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    </script>
        <div class="create_account_field">
            <asp:Label ID="Label2" runat="server" Text="Sign Up"></asp:Label>
            <table>
                <tr>
                    <td><asp:TextBox CssClass="input" ID="txtEmail1" placeholder="Email address" runat="server"></asp:TextBox></td>
                    <td class="validator">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter email" ControlToValidate="txtEmail1" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="txtEmail1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:TextBox CssClass="input" ID="txtEmail2" placeholder="Confirm email address" runat="server"></asp:TextBox></td>
                    <td class="validator">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Emails don't mutch" ControlToCompare="txtEmail1" ControlToValidate="txtEmail2" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:TextBox CssClass="input" ID="txtPassword1" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td class="validator">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="txtPassword1" Display="Dynamic"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Password must have at least 8 characters" ClientValidationFunction="checkPass" ControlToValidate="txtPassword1" Display="Dynamic"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:TextBox CssClass="input" ID="txtPassword2" placeholder="Confirm password" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td class="validator">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Passwords don't mutch" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
    
            <asp:Button class="button button_login" ID="btnLogin" runat="server" Text="Create" OnClick="btnLogin_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user]" >
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateColumns="False" DataKeyNames="user_id">
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                </Columns>
            </asp:GridView>
        </div>
    <asp:scriptmanager runat="server"></asp:scriptmanager>
    <asp:Timer ID="timer1" runat="server" Enabled="False" Interval="1500" OnTick="timer1_Tick"></asp:Timer>
    
    
</asp:Content>
