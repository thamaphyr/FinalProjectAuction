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
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/app/content/create.aspx");
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("DELETING");
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
                le.PostBackUrl = "~/app/content/Delete.aspx?id=" + e.Row.Cells[0].Text.ToString();
                
                e.Row.Cells[0].Controls.Add(le);

                Button ldel = new Button();
                ldel.ID = "ldel";
                ldel.Text = "Delete";
                
                //ldel.PostBackUrl = "~/app/content/delete.aspx?id=" + e.Row.Cells[0].Text.ToString();

                e.Row.Cells[7].Controls.Add(ldel);
            }
            else {
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