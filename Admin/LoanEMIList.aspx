<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="LoanEMIList.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
  
     
        
            <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
    
      <div class="card ">
                            <div class="card-body">
                                <h5 class="card-title">EMI Report List </h5>
                                <div class="table-responsive">
            <!-- /.box-header -->
            <div class="box-body">
                
                <div style="overflow:auto;">
                <table id="example1" class="table table-bordered table-striped table-hover " style="cellspacing:0;width:100%">
                <thead>
                <tr>
                    <th >#</th>
                  <th>LoanID</th>
                  <th>UserName</th>
                  <th>EMIAmount</th>
                  <th>Outstanding</th>
                  <th>EMIDate</th>
                  <th>Status</th>
                 <th>Remarks</th>
                 <th>Paid</th>
                 
                  
                </tr>
                </thead>
                <tbody>
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
   
    <ItemTemplate>
        <tr>
            <td> <%# Container.ItemIndex+1 %></td>
             <td> <%#Eval("LoanId") %></td>
             <td> <%#Eval("username") %></td>
             <td> <%#Eval("EMIamount") %></td>
             <td> <%#Eval("outstanding") %></td>
            <td><%#DataBinder.Eval(Container.DataItem, "EMIdate", "{0:dd/MM/yyyy}")%></td>
               <td class="fw-bold text-primary"> <%#Eval("status") %></td>

             <td> <%#Eval("Remarks") %></td>
            <td> <asp:Button ID="Button2" runat="server" OnClientClick="return confirmAction();" Text="PaidNow" CssClass="btn  btn-sm  btn-info" CommandArgument='<%#Eval("ID") %>' CommandName="PaidNow" /> </td>
          
           
        </tr>
    </ItemTemplate>

</asp:Repeater>
         </tbody>
               
              </table>  
                
            </div>
               
            </div>
            <!-- /.box-body -->
          </div>
                                </div>
          </div>
         
       <script>
    
     function Processclick() {
         swal({
             title: "Processing.......!",
             text: "Note: Do Not press back or close the app? It will close in few seconds.",
             imageUrl: "../SoftImg/refresh.gif",
             timer: 2000000,
             showConfirmButton: false
         });
           }
           function Successclick() {
               swal("Succesfully", "EMI has been paid successfully", "success")
           }
          

    
     //function PrePackBuy() {
     //    swal("Oops...!", "you can't buy this packages! Please Buy previous packages SequenceWise", "error")
     //}
     //function NotActive() {
     //    swal("Oops...!", "Your Account Is Not-Active ...! Please Active Your Account(Buy JOIN PAKAGE)", "error")
     //}
       </script>
              <script>
                  // The function below will start the confirmation dialog
                  function confirmAction() {
                      let confirmAction = confirm("Are you sure to paid?");

                      if (confirmAction) {
                          //alert("Action Successfully executed");
                          Processclick();
                          return true;
                      }
                      else {
                         // alert("Action Canceled");
                          return false;
                      }
                  }
              </script>
            <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
</asp:Content>


