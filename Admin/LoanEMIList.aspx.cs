using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_Default : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    clsAMD objamd = new clsAMD();

    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Request.QueryString["username"].ToString();
            string LoanID = Request.QueryString["LoanID"].ToString();
            loadaccount(username, LoanID);
        }
    }
    //for account
    public void loadaccount(string username,string LoanID)
    {
        try
        {
             string   sql = "select * from loanList where username='" + username + "' and loanid='"+ LoanID + "' order by EMIdate asc";       
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                 
               
            }
            else
            { lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {

        }



    }







    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "PaidNow")
        {
           

            int id = Convert.ToInt32( e.CommandArgument.ToString());
            int a = objamd.LoanTransaction(Convert.ToInt32(id), "A");
            if (a > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Successclick(); ", true);

                danger.Visible = false;
                string username = Request.QueryString["username"].ToString();
                string LoanID = Request.QueryString["LoanID"].ToString();
                loadaccount(username, LoanID);

            }
             else if(a==-1)
                {
                    lbdanger.Text = "Already Paid";
                    danger.Visible = true;
                }
            else
            {
                lbdanger.Text = "Try Again?";
                danger.Visible = true;
            }
        }
    }
}