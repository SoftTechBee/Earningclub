<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Wrequest.aspx.cs" Inherits="User_withdrraw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-body">
          <div class="box-body">
             
               <div class="alert alert-danger dark alert-dismissible fade show" role="alert" id="danger"  runat="server" visible="false">
         
          <p>  
              <asp:Label ID="lbdanger"  runat="server" Text="There is  some thing wrong........."  ></asp:Label> </p>
                    <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
          <div class="alert alert-info dark alert-dismissible fade show" role="alert" id="info"  runat="server"  visible="false">
         
          <p>  
              <asp:Label ID="lbinfo" runat="server" Text="There is  some thing wrong........."></asp:Label> </p>
                    <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
               <div class="alert alert-warning dark alert-dismissible fade show" role="alert" id="warning"  runat="server"  visible="false">
         
          <p>  
              <asp:Label ID="lbwarning" runat="server" Text="There is  some thing wrong........."></asp:Label> </p>
                    <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
             
              <div class="alert alert-success dark alert-dismissible fade show" id="sccess" runat="server"  visible="false">
          
                <p><i class="icon fa fa-check"></i> Alert!
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
                    </p>
                        <button type="button" class="btn-close" data-dismiss="alert" aria-hidden="true"></button>
              </div>
             
           
            </div>
      
        
    <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h3 class="page-title">Withdraw   </h3>
                    </div>
                   
                </div>
            </div>
          

    
     


             <div class="card " >
      
                                <div class="card-body">
                                    <h5 class="text-warning " style="text-align:right" runat="server" visible="false" id="lbenough">KYC Update!<a class="text-success" href="KYCDOC.aspx">Click</a></h5>
    
                                  <div class="form-horizontal">   
                 <!----form start---->
                                     
                            <div class="form-group row">
                                
                        
                                 <label class="control-label col-lg-3">Available Income  </label>
                          <div class="col-lg-9">
                             <h5>Rs <asp:Label CssClass="text text-success font-weight-bold" runat="server" ID="lbIncome"  Text="0"></asp:Label>
                       
                                 </h5>
                                 </div>
                          </div>
                           
     
                      <div class="form-group row">
                          <label class="control-label col-lg-3">Enter Withdaw Amount </label>
                          <div class="col-lg-9">
                         <asp:TextBox ID="txtAmt" required="" OnTextChanged="txtAmt_TextChanged"  AutoPostBack="true" runat="server" CssClass="form-control" ></asp:TextBox>
                         </div>
                          </div>
                       <div class="form-group row">
                                              
                         <label class="control-label col-lg-3 ">Admin Charge(5%) </label>     

                        <div class="col-lg-9">
                         <asp:TextBox ID="txtadmincharge" Text="" required="" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
         <%--                        <label class="control-label col-lg-3 ">TDS Charge(5%) </label>     

                        <div class="col-lg-3">
                         <asp:TextBox ID="txtTDS" Text="" required="" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>--%>
                                
                            </div>
                                         <div class="form-group row">
                           <label class="control-label col-lg-3 ">Payout Amount  </label>     

                        <div class="col-lg-9">
                         <asp:TextBox ID="txtTotal" Text="" required="" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                            
                          </div>
                        
                      
                                      <%-- <div class=" form-group row">
                           
                  <label class="control-label  col-lg-3">  Transaction Password<span  class="text text-danger ">*</span></label>
                             <div class="col-lg-9">
                   <asp:TextBox ID="txttransPassword" runat="server" required=""   class="form-control" placeholder="Enter  Transaction Password"></asp:TextBox>              
                </div>
                          
                </div>--%>
                     <div class="form-group row">
                             <div class="col-sm-offset-3 col-lg-4">
                                 </div>
                             <div class="col-sm-offset-3 col-lg-4">

   <asp:Button ID="btnaction" runat="server" Text="Withdraw"  OnClick="butsubmit_Click" CssClass="btn  btn-success btn-sm"/>
               

                  </div>  
                           <br />

                                <br />
                                <div class=" row">
                                    <label class="control-label text-success  col-lg-12">Terms & Condition.</label>
                                    <br />
                                     <label class="control-label text-danger col-lg-12">1)Your withdrawal amount will be credited to your bank account between 3 to 8 hours after the request is made.</label>
                                    <label class="control-label text-danger col-lg-12">2) Withdrawals are allowed Monday to Friday, between 10:00 AM and 6:00 PM.</label>
                                    <label class="control-label text-danger col-lg-12">2) Only 1 Transaction per day is permitted.</label>
                                    <label class="control-label text-danger col-lg-12">1)  Admin is not responsible if the provided bank details is wrong.</label>
                                </div>
       
            
          </div>
          <!-- /.box -->
                    
                      </div>

                  </div>
            
            </div>
          </div>
     

       

   
</asp:Content>

