using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_MasterPage : System.Web.UI.MasterPage
{
    clsDashboard objdashboard = new clsDashboard();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("UserType") != "User")
        {
            Response.Redirect("logout.aspx");
            return;
        }
        if (SessionData.Get<string>("Newuser") == null)
        {
            Response.Redirect("logout.aspx");
        }
        else
        {

            //PopupLoad();

            SessionData.Put("Currency", " <i class='fw-bold' style='font-size:10px'>INR</i>");
            SessionData.Put("User", " <i class='fw-bold' style='font-size:10px'>USERS</i>");


        }

    }
    //private void PopupLoad()
    //{
    //    try
    //    {
    //        if (SessionData.Get<string>("PopUp") != "Closed")
    //        {
    //            PopImg.Src = objdashboard.ReturnPopImg();
    //            btnClose.Visible = true;
    //        }
    //        else
    //        {
    //            popup1.Visible = false;
    //        }
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
    //protected void btnClose_Click(object sender, EventArgs e)
    //{
    //    SessionData.Put("PopUp", "Closed");
    //    PopupLoad();
    //}

}
