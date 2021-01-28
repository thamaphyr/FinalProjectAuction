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

        string query = "select [user_id], [username], [password], [name] from [user] where username='" + username.Text.ToString() + "' AND password='" + password.Text.ToString() + "'";

       
        System.Diagnostics.Debug.WriteLine(query);
        SqlDataSource1.SelectCommand = query;

        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

        Label1.Text = "";
        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "Incorrect email/password";
        } else
        {
            Session["user_id"] = GridView1.Rows[0].Cells[0].Text;
            Session["username"] = GridView1.Rows[0].Cells[1].Text;
            Session["name"] = GridView1.Rows[0].Cells[3].Text;
            Response.Redirect("~/app/content/list.aspx");
        }
     }


}

