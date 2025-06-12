<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Container starts -->
    <script type="text/javascript">

        function myFunction() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInput');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            alert("Copied the text: " + copyText.value);

        }

    </script>
    <input type="text" name="link" id="myInput" runat="server" value="" style="opacity: 0;">
    <div class="container-fluid">
        <!-- Row start -->
    
        <!-- Row start -->
        <div class="row">
            <div class="col-xl-6 col-md-6 col-sm-12 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Referral Link :<i class=" icon-link1"></i></h5>

                        <div class="d-flex justify-content-center ">
                            <div class=" align-items-center" style="width: 100%">
                                <asp:Label ID="lbreffsidLeft" runat="server"></asp:Label>
                                <span onclick="script: myFunction();" class="badge rounded-pill bg-info ms-2">Copy</span>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-md-6 col-sm-12 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                   
                    <div class="card-body">
                        <h5 class="card-title">Announcement: <i class=" icon-update"></i></h5>

                        <marquee onmouseover="this.stop()" onmouseout="this.start()">
                            <asp:Repeater runat="server" ID="repnews">
                                <ItemTemplate>
                                    <tr>
                                        <th>
                                            <h8 class=" fw-bold text-info">&nbsp&nbsp&nbsp&nbsp(<%# Container.ItemIndex+1 %>) <%#Eval("tittle")%>: </h8>
                                            <asp:Label ID="lbnews" runat="server" CssClass="text-white" Text='<%#Eval("news")%>'></asp:Label></th>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </marquee>

                    </div>
                </div>
            </div>

        </div>

        <!-- Row end -->
      


        <%--     	<div class="row">
			<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
								<div class="card" style="border: 2px solid skyblue;">
									<div class="card-header">
										<div class="card-title">Ads Details</div>
										&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="task.aspx" >View</a>


									</div>
										<div class="card-body  h-50" style="margin-top:-25px">
											<div class="chats-wrap media-list">
											<div class="chat-details mb-1 p-3">
												<h5 class="mb-0">
													<span class="h6 font-weight-normal text-red"><b>Today Total Ads</b></span>
													<span class="float-right p-1  btn btn-sm text-warning">
													<b><asp:Label ID="lbtotalads" CssClass="text-blue" runat="server" Text="0"></asp:Label></b></span>
												</h5>
											</div>
												<div class="chat-details mb-1 p-3">
												<h5 class="mb-0">
													<span class="h6 font-weight-normal text-red"><b>Remaining Ads</b></span>
													<span class="float-right p-1  btn btn-sm text-warning">
													<b><asp:Label ID="lbtotalleft" CssClass="text-blue" runat="server" Text="0"></asp:Label></b></span>
												</h5>
											</div>
												<div class="chat-details mb-1 p-3">
												<h5 class="mb-0">
													<span class="h6 font-weight-normal text-red"><b>Total Seen Ads</b></span>
													<span class="float-right p-1  btn btn-sm text-warning">
													<b><asp:Label ID="lbtotalseen" CssClass="text-blue" runat="server" Text="0"></asp:Label></b></span>
												</h5>
											</div>
										
												
										</div>
									</div>
								</div>
							</div>
	</div>--%>
       <%-- <div class="col-md-12">
            <div class="card bg-primary">
                <div class="card-body">
                    <div class="d-flex align-items-center" style="justify-content: center;">

                        <div class="ml-3 ">
                            <h5 class="text-white  font-weight-bold">1 FIC =
                                <asp:Label runat="server" ID="lbtoaken"></asp:Label>
                                USDT</h5>
                            <small class="mb-0 text-center">Coin Live Price</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="row">
            <div class="col-lg-4">
                <div class="card card-block p-card">
                    <div class="profile-box">
                        <div class="profile-card rounded">
                            <img src="../assets/images/user/1.jpg" alt="profile-bg"
                                class="avatar-100 rounded d-block mx-auto img-fluid mb-3">
                            <h3 class="font-600 text-white text-center mb-0"><%=SessionData.Get<string>("Name") %></h3>
                            <p class="text-white text-center mb-5"><%=SessionData.Get<string>("newuser") %></p>
                        </div>
                        <div class="pro-content rounded">
                            <div class="d-flex align-items-center mb-3">
                                <div class="p-icon mr-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" width="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5m-9-6h.008v.008H12v-.008ZM12 15h.008v.008H12V15Zm0 2.25h.008v.008H12v-.008ZM9.75 15h.008v.008H9.75V15Zm0 2.25h.008v.008H9.75v-.008ZM7.5 15h.008v.008H7.5V15Zm0 2.25h.008v.008H7.5v-.008Zm6.75-4.5h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V15Zm0 2.25h.008v.008h-.008v-.008Zm2.25-4.5h.008v.008H16.5v-.008Zm0 2.25h.008v.008H16.5V15Z" />
                                    </svg>

                                </div>
                                <p class="mb-0 eml">
                                    <asp:Label ID="lbDOJ" runat="server" Text="XX/XX/XXXX"></asp:Label></p>
                            </div>
                            <div class="d-flex align-items-center mb-3">
                                <div class="p-icon mr-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" width="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M20.25 6.375c0 2.278-3.694 4.125-8.25 4.125S3.75 8.653 3.75 6.375m16.5 0c0-2.278-3.694-4.125-8.25-4.125S3.75 4.097 3.75 6.375m16.5 0v11.25c0 2.278-3.694 4.125-8.25 4.125s-8.25-1.847-8.25-4.125V6.375m16.5 0v3.75m-16.5-3.75v3.75m16.5 0v3.75C20.25 16.153 16.556 18 12 18s-8.25-1.847-8.25-4.125v-3.75m16.5 0c0 2.278-3.694 4.125-8.25 4.125s-8.25-1.847-8.25-4.125" />
                                    </svg>

                                </div>
                                <p class="mb-0">Package:
                                    <asp:Label ID="lbpack" CssClass="text-success" runat="server" Text="NULL"></asp:Label></p>
                            </div>
                            <div class="d-flex align-items-center mb-3">
                                <div class="p-icon mr-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" width="20" viewBox="0 0 24 24" strokeWidth="{1.5}" stroke="currentColor" className="w-6 h-6">
                                        <path strokeLinecap="round" strokeLinejoin="round" d="M21 11.25v8.25a1.5 1.5 0 0 1-1.5 1.5H5.25a1.5 1.5 0 0 1-1.5-1.5v-8.25M12 4.875A2.625 2.625 0 1 0 9.375 7.5H12m0-2.625V7.5m0-2.625A2.625 2.625 0 1 1 14.625 7.5H12m0 0V21m-8.625-9.75h18c.621 0 1.125-.504 1.125-1.125v-1.5c0-.621-.504-1.125-1.125-1.125h-18c-.621 0-1.125.504-1.125 1.125v1.5c0 .621.504 1.125 1.125 1.125Z" />
                                    </svg>


                                </div>
                                <p class="mb-0">Status:
                                    <asp:Label ID="lbstatus" CssClass="text-success" runat="server" Text="NULL"></asp:Label></p>
                            </div>

                            <div class="d-flex justify-content-center">
                                <div class="social-ic d-inline-flex rounded">
                                    <asp:Label ID="lbcurrentinvest" CssClass="text-danger" runat="server" Text="0"></asp:Label>&nbsp <i class="  f-small text-success">INR</i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-8 col-md-12">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h5 class="card-title">Income Summary</h5>
                        </div>

                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-spacing mb-0">
                                <tbody>
                                
                                 
                                    <tr class="white-space-no-wrap">
                                        <td>
    <h6 class="mb-0 text-uppercase text-secondary">
        <i class="bi bi-cash-coin me-1"></i> Direct Income
    </h6>
</td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbdirectincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%> 
                                        </td>
                                        <td class="pl-0 py-3">
                                            <a href="rptDrectIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>
                                    </tr>       
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">ROI  Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbroiincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%> 
                                        </td>
                                        <td class="pl-0 py-3">
                                            <a href="rptRoiincome.aspx" class="  badge badge-primary ">View</a>
                                        </td>
                                    </tr>
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Level Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lblevelincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%> 
                                        </td>
                                        <td class="pl-0 py-3">
                                            <a href="rptLevelIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>
                                    </tr>
                               
                              
                                  
                                 <%-- 
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Magical Profit</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbRewardincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <a href="rptRewardIncome.aspx" class="  badge badge-primary ">View</a>
                                        </td>
                                    </tr>--%>
                                
                                    <tr class="white-space-no-wrap">
                                        <td>
                                            <h6 class="mb-0 text-uppercase text-secondary">Total Income</h6>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <asp:Label ID="lbtotalincome" CssClass="text-warning" runat="server" Text="0"></asp:Label>
                                            <%=SessionData.Get<string>("Currency")%>
                                        </td>
                                        <td class="pl-0 py-3">
                                            <a href="account.aspx" class="  badge badge-primary ">View</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Row start -->



        <!-- Row start -->
        <div class="row">
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Total Member</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h5 class="fw-bold">
                                <asp:Label ID="lbteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Direct Member</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h5 class="fw-bold">
                                <asp:Label ID="lbdirectTeam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Active Team</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h5 class="fw-bold">
                                <asp:Label ID="totalactiveteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Inactive Team</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h5 class="fw-bold">
                                <asp:Label ID="lbinactiveteam" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("User")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Fund Deposit</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="Wallet.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbdeposit" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Avaialable Fund</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="Wallet.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbAvailabledeposit" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Income Balance</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="account.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbbalance" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>
        



            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Direct Business</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="direct.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbdirectbusiness" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Team Business</h5>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="powerleg.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbteambuss" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>



            <div class="col-sm-3 col-12">
                <div class="card mb-4 shadow-lg" style="border: 2px solid #096f86;">
                    <div class="card-header">
                        <h5 class="card-title">Total Withdraw</h5>

                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <span><a href="WithdrawRequestlist.aspx" class=" badge badge-primary bg-primary">View</a></span>
                            <h5 class="fw-bold">
                                <asp:Label ID="lbsuccesswithdraw" runat="server" CssClass="text-warning" Text="0"></asp:Label>
                                <%=SessionData.Get<string>("Currency")%></h5>
                        </div>

                    </div>
                </div>
            </div>
              <div class="col-sm-3 col-12">
                <div class="card" style="border: 2px solid #096f86;">
                    <div class="card-body">
                        <span class="badge bg-success-subtle text-success float-end"><i class="ph-trend-up align-middle me-1"></i>Total</span>
                        <h5 class="mb-4">
                            <asp:Label ID="lbInvestmentamt" runat="server" Text="0"></asp:Label>
                            <%=SessionData.Get<string>("Currency")%></h5>

                        <p class="text-muted fw-medium text-uppercase mb-0">Investment</p>
                    </div>
                </div>
            </div>


        </div>

        <div class="row">
          
            <!--end col-->

<%--            <div class="col-sm-3 col-12">
                <div class="card border-bottom border-3 card-animate border-warning">
                    <div class="card-body">
                        <span class="badge bg-success-subtle text-success float-end"><i class="ph-trend-up align-middle me-1"></i>Total</span>
                        <h5 class="mb-4">
                            <asp:Label ID="lbCappingReturn" runat="server" Text="0"></asp:Label>
                            <%=SessionData.Get<string>("Currency")%></h5>

                        <p class="text-muted fw-medium text-uppercase mb-0">Capping Return</p>
                    </div>
                </div>
            </div>
        
            <div class="col-sm-3 col-12">
                <div class="card border-bottom border-3 card-animate border-success">
                    <div class="card-body">
                        <span class="badge bg-success-subtle text-success float-end"><i class="ph-trend-up align-middle me-1"></i>Total</span>
                        <h5 class="mb-4">
                            <asp:Label ID="lbWorkingIncome" runat="server" Text="0"></asp:Label>
                            <%=SessionData.Get<string>("Currency")%></h5>

                        <p class="text-muted fw-medium text-uppercase mb-0">Received Income</p>
                    </div>
                </div>
            </div>
         
            <div class="col-sm-3 col-12">
                <div class="card border-bottom border-3 card-animate border-danger">
                    <div class="card-body">
                        <span class="badge bg-danger-subtle text-danger float-end"><i class="ph-trend-down align-middle me-1"></i>Total</span>
                        <h5 class="mb-4">
                            <asp:Label ID="lbCappingRemaining" runat="server" Text="0"></asp:Label>
                            <%=SessionData.Get<string>("Currency")%></h5>

                        <p class="text-muted fw-medium text-uppercase mb-0">Capping Remaining </p>
                    </div>
                </div>
            </div>
    --%>
        </div>
        <!---end row-->
        <hr />
        <!-- Row end -->


    </div>
    <!-- Container ends -->
</asp:Content>

