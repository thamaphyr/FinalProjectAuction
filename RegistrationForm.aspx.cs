using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {


        if (Page.IsValid)
        {

            string query = "select username from [user] where username='" + txtEmail1.Text.ToString() + "'";

            System.Diagnostics.Debug.WriteLine(query);
            SqlDataSource1.SelectCommand = query;

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

            if (GridView1.Rows.Count != 0)
            {
                Label1.Text = "User already exists";
            }
            else
            {
                SqlDataSource1.InsertCommand = "insert into [user](username, password) values ('" + txtEmail1.Text.ToString() + "','" + txtPassword1.Text.ToString() + "')";
                SqlDataSource1.Insert();
                txtEmail1.Text = "";
                txtEmail2.Text = "";
                Label1.Text = "User created";
                timer1.Enabled = true;
            }
        }
    }

    protected void timer1_Tick(object sender, EventArgs e)
    {
        timer1.Enabled = false;
        Response.Redirect("~/app/login/Default.aspx");
    }
}
