using System;
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
            //System.Diagnostics.Debug.WriteLine(idAuction);

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
                Username.Text = GridView1.Rows[0].Cells[9].Text;
                int bidPrice;
                if (Int32.TryParse(GridView1.Rows[0].Cells[8].Text.ToString(), out bidPrice)) {
                    OldBidPrice.Text = GridView1.Rows[0].Cells[8].Text;
                    //System.Diagnostics.Debug.WriteLine(this.bidPrice);
                }
            }
        }
    }
    protected void btnBid_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {

            Boolean flagUpdate = true;
            int numInitPrice, numBidPrice, numOldBidPrice;

            Int32.TryParse(OldBidPrice.Text.ToString(), out numOldBidPrice);

            if (Int32.TryParse(BidPrice.Text.ToString(), out numBidPrice))
            {
                if (!string.IsNullOrEmpty(InitPrice.Text.ToString()) && Int32.TryParse(InitPrice.Text.ToString(), out numInitPrice))
                {
                    if (numBidPrice <= numInitPrice)
                    {
                        lblMsg.Text = "Number Bid Price cannot be less or equal than Initial Price in the auction";
                        flagUpdate = false;
                    }else if (numBidPrice <= numOldBidPrice && numOldBidPrice != 0)
                    {
                        flagUpdate = false;
                        lblMsg.Text = "Number old Bid Price cannot be less or equal thanactual Bid Price";
                    }
                }

                if (flagUpdate)
                {
                    string query = "UPDATE auction SET bidusername='" + Session["username"].ToString() + "', bid_price='" + BidPrice.Text.ToString() + "' WHERE auction_id='" + Id.Text.ToString() + "'";
                    System.Diagnostics.Debug.WriteLine(query);
                    SqlDataSource1.UpdateCommand = query;
                    SqlDataSource1.Update();

                    lblMsg.Text = "Register updated";
                    Response.Redirect("~/app/content/list.aspx");
                }
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