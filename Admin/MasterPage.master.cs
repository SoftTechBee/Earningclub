using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    clsDashboard objdashboard = new clsDashboard();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("UserType") != "Admin")
        {
            Response.Redirect("logout.aspx");
            return;
        }
        if (SessionData.Get<string>("Newuser") == null)
        {
            Response.Redirect("logout.aspx");
        }
    }

    private void PopupLoad()
    {
        try
        {
            if (SessionData.Get<string>("PopUp") != "Closed")
            {
                PopImg.Src = objdashboard.ReturnPopImg();
                btnClose.Visible = true;
            }
            else
            {
                popup1.Visible = false;
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        SessionData.Put("PopUp", "Closed");
        PopupLoad();
    }
}