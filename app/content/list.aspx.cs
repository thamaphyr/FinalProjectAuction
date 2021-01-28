using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class app_content_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
            string id2delete = Request["deleteid"];
            if (!string.IsNullOrEmpty(id2delete)) {
                SqlDataSource1.DeleteCommand = "DELETE FROM auction WHERE auction_id='" + id2delete.ToString() + "'";
                SqlDataSource1.Delete();
                Response.Redirect("~/app/content/list.aspx");
            }
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/app/content/create.aspx");
    }


    protected void gridChangerequirement(object sender, GridViewRowEventArgs e)
    {
        if (Session["username"] != null)
        {
            if (e.Row.Cells[5].Text.ToString() == Session["username"].ToString())
            {
                LinkButton le = new LinkButton();
                le.ID = "lbBooks";
                le.Text = "Edit";
                le.PostBackUrl = "~/app/content/Edit.aspx?id=" + e.Row.Cells[0].Text.ToString();
                
                e.Row.Cells[0].Controls.Add(le);

                LinkButton ldel = new LinkButton();
                ldel.ID = "ldel";
                ldel.Text = "Delete";
                ldel.PostBackUrl = "~/app/content/list.aspx?deleteid=" + e.Row.Cells[0].Text.ToString();

                e.Row.Cells[7].Controls.Add(ldel);
            } else {
                LinkButton lb = new LinkButton();
                lb.ID = "lbBid";
                lb.Text = "BID";
                lb.PostBackUrl = "~/app/content/Bid.aspx?id=" + e.Row.Cells[0].Text.ToString();
                e.Row.Cells[6].Controls.Add(lb);
            }
        } else
        {
            Response.Redirect("~/app/login");
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/app/login/LogOut.aspx");
    }
}