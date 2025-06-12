using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;

public partial class Member_Default : System.Web.UI.Page
{

    clsConnection objcon = new clsConnection();
    clsDashboard objdashboard = new clsDashboard();
    clsList objlist = new clsList();
    clsAMD objamd = new clsAMD();
    clsTimeZone objtime = new clsTimeZone();
    CoinPayments objcoin = new CoinPayments();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Newuser") != null)
        {
            try
            {


                // Coundown();
                string username = SessionData.Get<string>("Newuser");
                // lbsponserlinkright.Text = username;
                myInput.Value = "www.earningclub.live/register.aspx?Sponsor=" + username;
                lbreffsidLeft.Text = "www.earningclub.live/register.aspx?Sponsor=" + username;
                lbtotalincome.Text = objdashboard.TotalIncome(username);
                // lbtodayincome.Text = objdashboard.TodayIncome(username);

                lbbalance.Text = objdashboard.TotalBlance(username);
                lbdirectTeam.Text = objdashboard.TotalDirect(username);
                lbteam.Text = objdashboard.TotalTeam(username);
                totalactiveteam.Text = objdashboard.TotalActiveTeam(username);
                lbinactiveteam.Text = objdashboard.TotalInActiveTeam(username);
                lbteam.Text = objdashboard.TotalTeam(username);
                lbcurrentinvest.Text = objdashboard.SelfBusiness(username);
                lbdirectbusiness.Text = objdashboard.TotalDirectBusiness(username);
                lbsuccesswithdraw.Text = objdashboard.TotalWithdrawApprove(username);
                // lbwithdrawpending.Text = objdashboard.TotalWithdrawPending(username);

                lbInvestmentamt.Text = objdashboard.SelfBusiness(username);
                lbdeposit.Text = objdashboard.Deposit(username);
                lbAvailabledeposit.Text = objdashboard.TotalWallectBlance(username);

                //Incomes
                lbroiincome.Text = objdashboard.IncomeType(username, "ROI");
                lblevelincome.Text = objdashboard.IncomeType(username, "LEVEL");
                lbdirectincome.Text = objdashboard.IncomeType(username, "DIRECT");
                //lbRewardincome.Text = objdashboard.IncomeType(username, "REWARD");                 lblevelincome.Text = objdashboard.IncomeType(username, "LEVEL");


               
                lbteambuss.Text = objdashboard.TeamBusiness(username);
                //lbPowerteambuss.Text = objdashboard.TotalTeamBusnessleg(username, "P");
                //lbWeakerteambuss.Text = objdashboard.TotalTeamBusnessleg(username, "W");

              

                loadlist();
                loadDownLineBusniess();
             
                LoadAdsDetails();
            }
            catch (Exception ex)
            { }
        } 
        else
        {
            Response.Redirect("logout.aspx");
        }
    }

  
    private void LoadAdsDetails()
    {
        try
        {
            string UserCode = SessionData.Get<string>("Usercode");

            //lbtotalads.Text = objdashboard.Totalads();
            //lbtotalads.Text = objdashboard.UserAds(UserCode);
            //lbtotalleft.Text = objdashboard.TotalRemaingAds(UserCode);
            //lbtotalseen.Text = objdashboard.TotalSeenAds(UserCode);



        }
        catch (Exception ex)
        { }
    }
    private void loadDownLineBusniess()
    {
        try
        {
            string sql = "select reffid,status,reward,username,mobile,email,dateofjoin,fname,rankname,reward from register  where username='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {

                lbDOJ.Text = Convert.ToDateTime(dt.Rows[0]["dateofjoin"].ToString()).ToShortDateString();

                // lbreffid.Text = dt.Rows[0]["reffid"].ToString();
         
                //   lbemail.Text = dt.Rows[0]["email"].ToString();
                //lbmobile.Text = dt.Rows[0]["mobile"].ToString();

                lbstatus.Text = dt.Rows[0]["status"].ToString();
               // lbrankname.Text = dt.Rows[0]["RankName"].ToString();
               // lbRewardstaus.Text = dt.Rows[0]["rankname"].ToString();
                //lbrewardname.Text = dt.Rows[0]["reward"].ToString();


                // lbJoinamt.Text = dt.Rows[0]["joinamount"].ToString();
                //lbDOJ.Text = ; (Exception ex)
                lbpack.Text = objdashboard.ReturnLastPackName(SessionData.Get<string>("Newuser"));
                lbcurrentinvest.Text = objdashboard.ReturnLastPackAmt(SessionData.Get<string>("Newuser"));

            }
        }
        catch (Exception ex)
        { }
    }

    private void loadlist()
    {
        try
        {
            string sql = "select news,tittle from tblnews order by id desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            repnews.DataSource = dt;
            repnews.DataBind();
            //lbnews.Text = dt.Rows[0]["news"].ToString();
            // lbhead.Text = dt.Rows[0]["tittle"].ToString();

        }
        catch (Exception ex)
        { }
    }



}