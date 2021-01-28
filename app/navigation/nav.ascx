
  <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
       <Items>
            <asp:MenuItem NavigateUrl="~/" Text="Home" ToolTip="Go Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AboutUs.aspx" Text="About Us" ToolTip="Go About Us" Value="New Item"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/app/content/list.aspx" Text="Bid" Value="Sell"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/app/login/Default.aspx" Text="Login" Value="Login">
            <asp:MenuItem NavigateUrl="~/app/login/RegistrationForm.aspx" Text="Sign up" ToolTip="Go to Register " Value="Register"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="Contact Us" Value="New Item"></asp:MenuItem>
        </Items>
  </asp:Menu>

  