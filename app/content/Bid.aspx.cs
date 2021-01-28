﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class app_content_Bid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string idAuction = Request["id"];
            System.Diagnostics.Debug.WriteLine(idAuction);

            string query = "SELECT auction_id, item, init_price, bid_price, username, bidusername FROM auction WHERE auction_id='" + idAuction + "'";
            System.Diagnostics.Debug.WriteLine(query);
            SqlDataSource1.SelectCommand = query;

            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                Id.Text = idAuction.ToString();
                Item.Text = GridView1.Rows[0].Cells[6].Text;
                InitPrice.Text = GridView1.Rows[0].Cells[7].Text;
                BidPrice.Text = (GridView1.Rows[0].Cells[8].Text.ToString() == "&nbsp;") ? "" : GridView1.Rows[0].Cells[8].Text.ToString();
                Username.Text = GridView1.Rows[0].Cells[9].Text;
            }
        }
    }
    protected void btnBid_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            //System.Diagnostics.Debug.WriteLine("CLICK");
            int numVal;
            if (Int32.TryParse(BidPrice.Text.ToString(), out numVal))
            {
                string query = "UPDATE auction SET bidusername='" + Session["username"].ToString() + "', bid_price='" + BidPrice.Text.ToString() + "' WHERE auction_id='" + Id.Text.ToString() + "'";
                System.Diagnostics.Debug.WriteLine(query);
                SqlDataSource1.UpdateCommand = query;
                SqlDataSource1.Update();

                lblMsg.Text = "Register updated";
                Response.Redirect("~/app/content/list.aspx");
            }
            else
            {
                lblMsg.Text = "Error: Bid Price has to be a number";
            }
        }
        else {
            lblMsg.Text = "Error: Iyou must to login again";
            Response.Redirect("~/app/login");
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/app/content/list.aspx");

    }
}