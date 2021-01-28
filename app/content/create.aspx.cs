using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class app_content_create : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Username.Text = Session["username"].ToString();
            //Userbidname.Text = Session["username"].ToString();
        }
        else {
           Response.Redirect("~/app/login");
        }
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        int numVal;
        if (Int32.TryParse(InitPrice.Text.ToString(), out numVal)){
            string query = "insert into auction (item, init_price, bid_price, username, bidusername) values ('" + Item.Text.ToString() + "', '" + InitPrice.Text.ToString() + "', NULL, '" + Username.Text.ToString() + "', NULL)";
            System.Diagnostics.Debug.WriteLine(query);
            SqlDataSource1.InsertCommand = query;


            SqlDataSource1.Insert();

            Item.Text = "";
            InitPrice.Text = "";
            lblMsg.Text = "Data Inserted success";
        }
        else {
            lblMsg.Text = "Error: the InitPrice has to be a number";
        }
    }

    protected void btnBack_Click(object sender, EventArgs e) {
        Response.Redirect("~/app/content/list.aspx");
    }
}