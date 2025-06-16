using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;

public partial class User_withdrraw : System.Web.UI.Page
{
    clsfunction objfun = new clsfunction();
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsDashboard objDash = new clsDashboard();
    clsmail objmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Newuser") == null && SessionData.Get<string>("Newuser") == "")
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                if (SessionData.Get<string>("Newuser") == null)
                {
                    Response.Redirect("logout.aspx");
                }
               
                danger.Visible = false;
                lbIncome.Text = objDash.TotalBlance(SessionData.Get<string>("Newuser"));
                // int Direct  = Convert.ToInt32( objDash.TotalActiveDirect(SessionData.Get<string>("Newuser")));
                //string dayname = objtime.returnCurrentDay();
               
                //if (Direct >= 2)
                //{
                    int flag = checkrequest();
                    if (flag == 0)
                    {
                        warning.Visible = false;
                        sccess.Visible = false;
                        info.Visible = false;
                        lbdanger.Text = "Please wait you have already submit withdraw request";
                        danger.Visible = true;
                        txtAmt.ReadOnly = true;
                      


                    }
                   
                //}

                //else
                //{
                //    btnaction.Visible = false;
                //    warning.Visible = false;
                //    sccess.Visible = false;
                //    info.Visible = false;
                //    lbdanger.Text = "YOU ARE REQUIRED TO MAKE 2 DIRECT?";

                //    danger.Visible = true;
                //    txtAmt.ReadOnly = true;

                //}
               

            }
        
        }
    }
    public void loadclean()
    {
        txtAmt.Text = "";
      //  txtremark.Text = "";
        lbIncome.Text = "";
        txtTotal.Text = "";
        //txtfinal.Text = "";
       // txttds.Text = "";
       // txtadmincharge.Text = "";

    }
   
    public int checkrequest()
    {
        int status = 0;
        try
        {

            string sql = "select username from TblRWithdraw where  [status]= 'Pending' and username ='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                    status = 0;
                
               
            }
            else
            {
                status = 1;

            }


        }
        catch (Exception ex)
        { }
        return status;

    }

    protected void butsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string sql = "select transPassword from register where username ='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                //string TransPass = dt.Rows[0]["transPassword"].ToString();
                //if (TransPass == txttransPassword.Text)
                //{
                    decimal widamount = 0, modeno = 0, MAXAmount = 0;
                    string date = objtime.returnStringServerMachTime();

                    string id = SessionData.Get<string>("Newuser");
                    decimal finalamount = Convert.ToDecimal(lbIncome.Text.Trim());
                    widamount = Convert.ToDecimal(txtAmt.Text.Trim());
                    if (finalamount >= widamount && widamount >= 250)
                 
                    {
                        int a = objamd.WithdrawRequest(0, SessionData.Get<string>("Newuser"), widamount, "Withdarw Amount", "Main Wallet","", "P");
                        if (a > 0)
                        {
                            warning.Visible = false;
                            danger.Visible = false;
                            sccess.Visible = false;
                            info.Visible = false;
                            sccess.Visible = true;
                            lbsuccess.Text = "Request Sent To Admin";
                            loadclean();
                            lbIncome.Text = objDash.TotalBlance(SessionData.Get<string>("Newuser"));

                            string Email = objDash.ReturnEmail(SessionData.Get<string>("Newuser"));
                            //string Accno = objDash.ReturnBank(SessionData.Get<string>("Newuser"));
                            //objmail.WithdrawFund(SessionData.Get<string>("Newuser"), widamount.ToString(),txtadmincharge.Text + txtTDS.Text, Accno, Email);


                        }
                        else if (a == -1)
                        {
                            loadclean();
                            warning.Visible = false;
                            info.Visible = false;
                            sccess.Visible = false;
                            //danger.Visible = false;
                            danger.Visible = true;
                            lbdanger.Text = "Request Already Sent..?";

                        }
                        else
                        {
                            lbdanger.Text = "Something went to wrong ...... Try again";
                            //txttransPassword.Text = "";
                            //txttransPassword.Focus();

                            danger.Visible = true;

                        }
                    }
                    else
                    {

                        loadclean();
                        warning.Visible = false;
                        danger.Visible = false;
                        sccess.Visible = false;
                        info.Visible = false;
                        warning.Visible = true;
                        lbwarning.Text = "Balance is less then  withdraw  amount or  amount should be max of 250 INR";

                    }
                //}


                //else
                //{
                //    lbdanger.Text = "Invaild TransPassword ...... Try again";
                //    //txttransPassword.Text = "";
                //    //txttransPassword.Focus();

                //    danger.Visible = true;

                //}
            }
            else
            {
                lbdanger.Text = "Something went to wrong ...... Try again";
                // txttransPassword.Text = "";
                //txttransPassword.Focus();

                danger.Visible = true;

            }
        }


        catch (Exception ex)
        {
            warning.Visible = false;
            danger.Visible = false;
            sccess.Visible = false;
            info.Visible = false;
            lbwarning.Text = "Enter valid amount";
            warning.Visible = true;
            txtAmt.Text = "";
            txtAmt.Focus();
            //  Response.Redirect("error.aspx?error=" + ex);


        }

    }

    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    int Flag = objfun.GetTransPaswwordCheck(SessionData.Get<string>("Newuser"), txttransPassword.Text);
    //    if (Flag == 1)
    //    {
    //        danger.Visible = false;

    //    }
    //    else if (Flag == 0)
    //    {
    //        lbdanger.Text = "Invaild Password ...... Try again";
    //       // txttransPassword.Text = "";
    //        //txttransPassword.Focus();

    //        danger.Visible = true;

    //    }
    //}

    protected void txtAmt_TextChanged(object sender, EventArgs e)
    {
  
        try
        {
            string dayname = objtime.returnCurrentDay();
            int time = Convert.ToInt32(objtime.returnCurrentSurverTimeHH());
            decimal finalamount = Convert.ToDecimal(lbIncome.Text.Trim());
            decimal reqAmt = Convert.ToDecimal(txtAmt.Text);
            if ((dayname != "Saturday" && dayname != "Sunday") && time >= 10 && time <= 18)
            {
                if (reqAmt >= 250)
                {
                    decimal AdminCharge = (reqAmt * 5 / 100);
                   // decimal tds = (reqAmt * 5 / 100);
                    decimal amount = reqAmt - AdminCharge;
                    txtTotal.Text = amount.ToString();
                    txtadmincharge.Text = AdminCharge.ToString();
                    // txtTDS.Text = tds.ToString();
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    sccess.Visible = false;
                }
                else
                {
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    lbwarning.Text = "Minimum Withdrawal 250 INR";
                    warning.Visible = true;
                    txtAmt.Text = "";
                    txtAmt.Focus();

                }
            }

            else
            {
                btnaction.Visible = false;
                warning.Visible = false;
                sccess.Visible = false;
                info.Visible = false;
                lbdanger.Text = "You can applied Withdrawal Monday to Friday 10 AM TO 6:00 PM";

                danger.Visible = true;
                txtAmt.ReadOnly = true;

            }

        }
        catch (Exception ex)
        { }
    }


   


}