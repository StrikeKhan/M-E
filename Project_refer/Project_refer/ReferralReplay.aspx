<%@ Page Title="Referral Replay" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReferralReplay.aspx.cs" Inherits="Project_refer.ReferralReplay" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <form id="form1" runat="server">
    <div class="box box-default">
            <div class="panel-heading" style="color: white;
    background-color: #669933;
    border-color: #ddd;">
                          Replay to Referral
                        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                  <label>ADP NO</label>
                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Enter ..."  runat="server"></asp:TextBox>  
                    </div>                
              <!-- /.form-group -->
                <div class="form-group">
                  <label>project Code</label>
                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter ..."  runat="server"></asp:TextBox>  
                    </div>
              <!-- /.form-group -->
                 <div class="form-group">
                  <label>project Name</label>
                    <asp:TextBox ID="TextBox3" class="form-control" placeholder="Enter ..." style="width: 100%" runat="server"></asp:TextBox>  
                    </div>
            </div>
            <!-- /.col -->
            <div class="col-md-6">
               <div class="form-group">
                  <label>Replay By</label>
         
                      <asp:DropDownList ID="ReferTypeDropDownList" class="form-control" runat="server">
                <asp:ListItem>DMO1</asp:ListItem>
                 <asp:ListItem>DMO3</asp:ListItem>
                 <asp:ListItem>DMO4</asp:ListItem>
                 <asp:ListItem>DMO5</asp:ListItem>
                  <asp:ListItem>DMO6</asp:ListItem>
                 <asp:ListItem>DMO7</asp:ListItem>
                   </asp:DropDownList>
                </div>
              <!-- /.form-group -->
               <div class="form-group">
                  <label>Replay Details</label>
&nbsp;<textarea class="form-control" rows="3" placeholder="Enter ..." style="width: 100%"></textarea>
                </div>
              <!-- /.form-group -->
                 
               <div class="form-group">
                  <label>Attachment </label>
                      <asp:FileUpload ID="FileUpload1" runat="server" Width="529px"/>
                   </div>
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <asp:Button ID="btnsubmit" runat="server" BackColor="#3C8DBC" ForeColor="White" Height="36px" style="margin-top: 17" Text="Submit" Width="152px" OnClick="btnsubmit_Click" BorderStyle="None" />
        </div>
      </div>
    <div class="panel panel-default">
                        <div class="panel-heading" style="color: white;
    background-color: #669933;
    border-color: #ddd;">
                         No Record(s) Found
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6"> 
               
              
                 
                             
                                    <asp:GridView ID="GridViewReferralReplay" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="30px" CellPadding="10" DataSourceID="SqlDataSourceReferralReplay" Height="60px"  Width="1228px" AutoGenerateColumns="False" DataKeyNames="ReferralID">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" HeaderText="Select" >
                                            <ControlStyle BackColor="#3E85BE" BorderColor="White" BorderStyle="None" Height="30px" Width="80px" />
                                            <HeaderStyle Font-Names="Calibri" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="ProjectCode" HeaderText="ProjectCode" SortExpression="ProjectCode" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ReferralType" HeaderText="ReferralType" SortExpression="ReferralType" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ReferralID" HeaderText="ReferralID" InsertVisible="False" ReadOnly="True" SortExpression="ReferralID" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SendingDate" HeaderText="SendingDate" SortExpression="SendingDate" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ReferralDetails" HeaderText="ReferralDetails" SortExpression="ReferralDetails" >
                                            <HeaderStyle Font-Names="Calibri" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Decision" HeaderText="Decision" SortExpression="Decision" >
                                            <HeaderStyle Font-Names="Calibri" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DecisionDate" HeaderText="DecisionDate" SortExpression="DecisionDate" >
                                            <HeaderStyle Font-Names="Calibri" />
                                            </asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#c3d8f1" Font-Bold="True" ForeColor="#8b9fc8" />
                                        <PagerStyle BackColor="White" ForeColor="#000000" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourceReferralReplay" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblReferral] WHERE [ReferralID] = @ReferralID" InsertCommand="INSERT INTO [tblReferral] ([ProjectCode], [ReferralType], [purpose], [SendingDate], [Deadline], [ReferralDetails], [Decision], [DecisionDate]) VALUES (@ProjectCode, @ReferralType, @purpose, @SendingDate, @Deadline, @ReferralDetails, @Decision, @DecisionDate)" SelectCommand="SELECT [ProjectCode], [ReferralType], [ReferralID], [purpose], [SendingDate], [Deadline], [ReferralDetails], [Decision], [DecisionDate] FROM [tblReferral]" UpdateCommand="UPDATE [tblReferral] SET [ProjectCode] = @ProjectCode, [ReferralType] = @ReferralType, [purpose] = @purpose, [SendingDate] = @SendingDate, [Deadline] = @Deadline, [ReferralDetails] = @ReferralDetails, [Decision] = @Decision, [DecisionDate] = @DecisionDate WHERE [ReferralID] = @ReferralID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ReferralID" Type="Decimal" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ProjectCode" Type="Decimal" />
                                            <asp:Parameter Name="ReferralType" Type="String" />
                                            <asp:Parameter Name="purpose" Type="String" />
                                            <asp:Parameter Name="SendingDate" Type="DateTime" />
                                            <asp:Parameter Name="Deadline" Type="DateTime" />
                                            <asp:Parameter Name="ReferralDetails" Type="String" />
                                            <asp:Parameter Name="Decision" Type="String" />
                                            <asp:Parameter Name="DecisionDate" Type="DateTime" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ProjectCode" Type="Decimal" />
                                            <asp:Parameter Name="ReferralType" Type="String" />
                                            <asp:Parameter Name="purpose" Type="String" />
                                            <asp:Parameter Name="SendingDate" Type="DateTime" />
                                            <asp:Parameter Name="Deadline" Type="DateTime" />
                                            <asp:Parameter Name="ReferralDetails" Type="String" />
                                            <asp:Parameter Name="Decision" Type="String" />
                                            <asp:Parameter Name="DecisionDate" Type="DateTime" />
                                            <asp:Parameter Name="ReferralID" Type="Decimal" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
               
              
                 
                             
                                </div>
                               
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
           </form>
</asp:Content>
                                       