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


    protected void gridChangerequirement(object sender, GridViewRowEventArgs e)
    {
       // if (Session["username"] != null)
        //{
            System.Diagnostics.Debug.WriteLine("EXECUTING");
            System.Diagnostics.Debug.WriteLine(e.Row.RowType);
            System.Diagnostics.Debug.WriteLine(e.Row.Cells[6].Text);

            HyperLink edit = ((HyperLink)e.Row.FindControl("LinkEdit"));
            
            if (e.Row.Cells[6].Text.ToString() == "PeterP")//Session["username"].ToString())
            {
            if (edit != null)
            {

            }
            else {
                System.Diagnostics.Debug.WriteLine(edit);
            }
              //  editButton.Visible = false;
            }
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine(e);

         Response.Redirect("~/app/content/list.aspx");
    }
}