using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class content_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "select * from [user] where username='" + username.Text.ToString() + "' AND password='" + password.Text.ToString() + "'";
        System.Diagnostics.Debug.WriteLine(query);
        SqlDataSource1.SelectCommand = query;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        Session["user_id"] = "1";
        Session["username"] = "PeterP";
        Session["name"] = "Peter";
        Response.Redirect("~/app/content/list.aspx");
    }
}