<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="LoanCompletedUser.aspx.cs" Inherits="Admin_rptlevelIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
    <h4><i class="icon fa fa-ban"></i>Alert!</h4>
    <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
</div>

<div class="card">
    <div class="form-horizontal">
        <div class="card-body">
            <div class=" form-group row">
                <div class=" col-lg-8">
                    <h4 class="card-title">Completed Loan User</h4>
                </div>

             

                <div class="col-lg-2">
                    <asp:Button ID="btnExportToExcel" CssClass="btn btn-block  btn-dark" Text="Export To Excel" OnClick="btnExportToExcel_Click" runat="server" />
                </div>
            </div>
            <div class="form-group row align-items-center">
                <div class="col-lg-4 col-md-4 col-xs-6">
                    <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="UserName/LoanID"></asp:TextBox>
                </div>

                <label class="control-label col-lg-1 col-md-1 col-xs-6">From</label>
                <div class="col-lg-2 col-md-2 col-xs-6 ">
                    <div class='input-group date' id='datetimepicker6'>
                        <asp:TextBox ID="txtfromdate" class="form-control" type="date" runat="server" placeholder="Select Form  Date "></asp:TextBox>
                      
                    </div>
                </div>

                <label class="control-label col-lg-1 col-md-1 col-xs-6">To</label>
                <div class="col-lg-2 col-md-2 col-xs-6 ">
                    <div class='input-group date' id='datetimepicker7'>
                        <asp:TextBox ID="txttodate" class="form-control" type="date" runat="server" placeholder="Select TO  Date "></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-md-2 col-xs-2 col-lg-2">
                    <asp:Button ID="btnSeach" runat="server" Text="Search"  CssClass="btn btn-sm btn-success" OnClick="btnsearch_Click" />
                </div>
            </div>


            <div class="form-group">
                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">
                    <table id="example1" class="table table-bordered table-striped table-hover ">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <thead>
                                    <tr>
                                      <th>#</th>
                                            <th>Status</th>

                                            <th>UserName</th>

                                            <th>LoanID</th>
                                            <th>ViewEMI</th>

                                            <th>LoanTypeName</th>
                                            <th>Amount</th>
                                            <th>Interest</th>
                                            <th>EMIAmount</th>
                                            <th>Outstanding</th>
                                            <th>DOA</th>
                                            <%--<th>Remark</th>--%>
                                            <th>PackageName</th>
                                            <th>Months</th>
                                            <th>Start Date</th>
                                            <th>End Date</th>

                                    </tr>
                                </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tbody>
                                    <tr>
                                        <td><%# Container.ItemIndex + 1 %></td>
                        <td class=" fw-bold text-info"><%# remark(Eval("status")) %></td>

                        <td><%# Eval("UserName") %></td>
                        <td><%# Eval("LoanID") %></td>
                                        <td>
                                            <a href="LoanEMIList.aspx?LoanID=<%#Eval("LoanID") %>&username=<%#Eval("UserName") %>" text="View" class="btn  btn-sm  btn-warning">View</a>
                                        </td>
                        <td><%# Eval("Loan") %></td>
                        <td><%# Eval("Amount") %></td>
                        <td><%# Eval("Interest") %></td>
                        <td><%# Eval("EMIAmount") %></td>
                        <td><%# Eval("OutstandingAmount") %></td>
                        <td><%# Eval("DOA", "{0:dd/MM/yyyy}") %></td>
                        <%--<td><%# Eval("Remark") %></td>--%>
                        <td><%# Eval("Package") %></td>
                        <td><%# Eval("Term") %></td>
                        <td><%# Eval("StartDate", "{0:dd/MM/yyyy}") %></td>
                        <td><%# Eval("EndDate", "{0:dd/MM/yyyy}") %></td>
                                        
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                        </asp:Repeater>
                       <%-- <tfoot>
                            <tr>
                                <th>#</th>
                                <th></th>
                                <th>Total</th>
                                <th></th>
                                <th>
                                    <asp:Label ID="lbtotal" runat="server" Text=""></asp:Label>
                                </th>
                                <th></th>
                            </tr>
                        </tfoot>--%>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

