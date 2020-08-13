<%@ Page Title="DashBoard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectReferralWizard.aspx.cs" Inherits="Project_refer.ProjectReferralWizard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .text-center th {
        text-align: center;
    }
</style>
                                        <form id="form1" runat="server">

         <!--Multi Step Wizard Start-->
   <div id="rms-wizard" class="rms-wizard">
   <!--Wizard Container-->
    <div class="rms-container">
       <!--Wizard Header-->
        <div class="rms-wizard-header">
            <h2 class="title">Project Referral</h2>
        </div>
        <!--Wizard Header Close--> 
        <div class="rms-form-wizard">
           <!--Wizard Step Navigation Start-->
            <div class="rms-step-section" data-step-counter="false" data-step-image="false">
                <ul class="rms-multistep-progressbar"> 
                    <li class="rms-step rms-current-step">
                        <span class="step-icon"><i class="fa fa-globe" aria-hidden="true"></i></span>
                        <span class="step-title">Location</span>
                        <span class="step-info">select Location </span>
                    </li> 
                    <li class="rms-step ">
                        <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                        <span class="step-title">Assign TO</span>
                        <span class="step-info">Information about project</span>
                    </li>
                    <li class="rms-step ">
                        <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                        <span class="step-title">Referral By</span>
                        <span class="step-info">Enter Information</span>
                    </li>
                    <li class="rms-step ">
                        <span class="step-icon"><i class="fa fa-paperclip" aria-hidden="true"></i></span>
                        <span class="step-title">Attachment</span>
                        <span class="step-info">Upload Images </span>
                    </li>
                    <li class="rms-step ">
                        <span class="step-icon"><i class="fa fa-file-text" aria-hidden="true"></i></span>
                        <span class="step-title">Finish</span>
                        <span class="step-info">Review Form</span>
                    </li>
                </ul>
            </div>
            <!--Wizard Navigation Close-->
            <!--Wizard Content Section Start-->
            <div class="rms-content-section">
                <div class="rms-content-box rms-current-section">
                    <div class="rms-content-area"> 
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-globe" aria-hidden="true"></i> Location</b> </div>
                            <div class="step-label">Step 1 - 5</div>
                        </div>
                        <div class="rms-content-body"> 
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Select Division</label>
                                            <div class="inpt-group">                                                  <asp:DropDownList ID="DropDownListDivision" class="form-control" runat="server" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Selected="True">Select Division</asp:ListItem>
                <asp:ListItem>Bannu Division</asp:ListItem>
                 <asp:ListItem>Dera Ismail Khan Division</asp:ListItem>
                 <asp:ListItem>Hazara Division</asp:ListItem>
                 <asp:ListItem>Kohat Division</asp:ListItem>
                 <asp:ListItem>Malakand Division</asp:ListItem>
                 <asp:ListItem>Peshawar Division</asp:ListItem>
                 <asp:ListItem>Mardan Division</asp:ListItem>
                   </asp:DropDownList>    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Select Distric</label>
                                            <div class="inpt-group">
                                                 <asp:DropDownList ID="DropDownListDistric" class="form-control" runat="server" >
                    <asp:ListItem Selected="True">Select Distric</asp:ListItem>
                   </asp:DropDownList>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Enter Tehsil</label>
                                            <div class="inpt-group">
                                                  <asp:TextBox ID="TextBoxTehsil" placeholder="Enter Tehsil"  class="form-control" runat="server" ></asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Select Department</label>
                                            <div class="inpt-group">
                                                <asp:DropDownList ID="DropDownListDepartment" class="form-control" runat="server">
                          <asp:ListItem Selected="True">Select Department</asp:ListItem>
                <asp:ListItem>Administration</asp:ListItem>
                 <asp:ListItem>Energy & Power</asp:ListItem>
                 <asp:ListItem>Housing</asp:ListItem>
                 <asp:ListItem>Minerals Development</asp:ListItem>
                 <asp:ListItem>Agriculture</asp:ListItem>
                 <asp:ListItem>Environment</asp:ListItem>
                 <asp:ListItem>Industries</asp:ListItem>
                 <asp:ListItem>Planning & Development</asp:ListItem>
                 <asp:ListItem>Auqaf</asp:ListItem>
                 <asp:ListItem>Excise & Taxation</asp:ListItem>
                 <asp:ListItem>Information</asp:ListItem>
                 <asp:ListItem>Communication & Works</asp:ListItem>
                 <asp:ListItem>Finance</asp:ListItem>
                 <asp:ListItem>Irrigation</asp:ListItem>
                 <asp:ListItem>Sports & Tourism</asp:ListItem>
                 <asp:ListItem>Elementary & Secondary Education</asp:ListItem>
                 <asp:ListItem>Food</asp:ListItem>
                 <asp:ListItem>Law</asp:ListItem>
                 <asp:ListItem>Transport</asp:ListItem>
                 <asp:ListItem>Health</asp:ListItem>
                 <asp:ListItem>Local Government</asp:ListItem>
                 <asp:ListItem>Zakat & Ushr</asp:ListItem>
                   </asp:DropDownList>    
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div> 
                            </div> 
                        </div> 
                    </div>
                </div>
                <div class="rms-content-box">
                     <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> Assign To</b></div>
                            <div class="step-label">Step 2 - 5</div> 
                        </div>
                         <div class="rms-content-body"> 
                             <div class="row">
                                 <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">AssignTo</label>
                                            <div class="inpt-group">
                           <asp:TextBox ID="TextBoxAssignTo" class="form-control" runat="server" ReadOnly="True">Example@yahoo.com</asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">ADPNO</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxadpno" class="form-control"   runat="server" ReadOnly="True" >112233</asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>  <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Project Code</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxProjCode" class="form-control"  runat="server" ReadOnly="True" >2468</asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>  <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Project Name</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxProjName" class="form-control"   runat="server" ReadOnly="True" >BRT Bus</asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>


                                </div> 
                             </div> 
                        </div> 
                    </div> 
                </div>
                <div class="rms-content-box">
                     <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-credit-card" aria-hidden="true"></i> Referral By</b></div>
                            <div class="step-label">Step 3 - 5</div>
                           
                        </div>
                        <div class="rms-content-body"> 
                            <div class="row">
                                <div class="col-md-8">
                               <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Name</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxName" class="form-control" placeholder="Enter Name"  runat="server"></asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Desgination</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxDesgination" class="form-control" placeholder="Enter Desgination"  runat="server"></asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Contact No</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxContactNo" class="form-control" placeholder="Enter Contact Number"  runat="server" ></asp:TextBox>  
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                                <label for="username">Apparent Issue</label>
                                            <div class="inpt-group">
                    <asp:TextBox ID="TextBoxApprentIssue"  runat="server" TextMode="MultiLine"  placeholder="Enter ..." style="width: 100%; Height:61px; "  ></asp:TextBox>
                                                                  </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                </div>
                <div class="rms-content-box">
                    <div class="rms-content-area">
                       <div class="rms-content-title">
                           <div class="leftside-title"><b> <i class="fa fa-paperclip" aria-hidden="true"></i> Attachment</b></div>
                           <div class="step-label">Step 4 - 5 </div>
                       </div>
                       <div class="rms-content-body"> 
                           <div class="row">
                               <div class="col-md-8">
                          <iframe id="uploadFrame" frameborder="0" scrolling="no" src="ImageUpload.aspx" style="width: 1050px; height: 138px"></iframe>
                               </div> 
                           </div> 
                       </div> 
                   </div> 
               </div>
                <div class="rms-content-box">
                    <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-file-text" aria-hidden="true"></i> Confirm</b> Details</div>
                            <div class="step-label">Step 5 - 5</div> 
                        </div>
                        <div class="rms-content-body"> 
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="desc-container">
                                                <div class="desc-table">
                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <td class="desc-label">Division</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelDivision" runat="server"  ></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Distric</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelDistric" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Tehsil</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelTehsil" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Department</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelDepartment" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">AssignTO</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelAssignTo" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">ADP No</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelADPNO" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">ProjectCode</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelProjectCode" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Project Name</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelProjectName" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Name</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelName" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Designation</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelDesignation" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Contact</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelContact" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="desc-label">Apparent Issue</td>
                                                                <td class="desc-val">
                                                                    <asp:Label ID="LabelApparentIssue" runat="server"  ></asp:Label>
                                                                </td>
                                                            </tr> 
                                                            <tr>
                                                                <td class="desc-label">Attachemnt</td>
                                                                <td class="desc-val">
                                                                   <div id="dvPreview">

                                                                   </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                </div>
            </div>
            <!--Wizard Content Section Close-->
            <!--Wizard Footer section Start-->
            <div class="rms-footer-section">
                <div class="button-section">
                    <span class="next">
                        <a href="javascript:void(0)" onclick="show()" id="summary"  class="btn">Next Step
                            <small>Your information</small>
                        </a>
                    </span>
                    <span class="prev">
                        <a href="javascript:void(0)"  class="btn" >Previous Step
                             <small>Your information</small>
                        </a>
                    </span>
                    <span class="submit">
                        <a href="javascript:void(0)" class="btn" onServerClick="btnsubmit_Click"  runat="server" >Submit
                             <small>Your information</small>
                        </a>
                    </span> 
                </div>
            </div>
            <!--Wizard Footer Close-->
        </div>
    </div>
    <!--Wizard Container Close-->
    </div>
    <!--Multi Step Wizard Close-->
                                            <br />
                                             <div class="panel panel-default">
                        <div class="panel-heading" style="color: white;
    background-color: #669933;
    border-color: #ddd;">
                            <asp:Label ID="Labelrecordno" runat="server" Text="No"></asp:Label> Record(s) Found
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6"> 
                                    <asp:GridView ID="GridViewReferral" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" HeaderStyle-CssClass="text-center" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="30px" CellPadding="10" Height="120px"  Width="1290px" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" HorizontalAlign="Center" >
                                        <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#C3D8F1" Font-Bold="True" ForeColor="#8B9FC8" Font-Size="15px" Height="40px"  HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                                        <PagerStyle BackColor="White" ForeColor="#000000" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:GridView>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
    </form>
   <script  type ="text/javascript" >
       var cnt=0;
        function show() {
            cnt = parseInt(cnt) + parseInt(1);
            console.log(cnt);
            if (cnt ==4) {
                var div = document.getElementById('<%=DropDownListDivision.ClientID%>').value;
                var dis = document.getElementById('<%=DropDownListDistric.ClientID%>').value;
                var teh = document.getElementById('<%=TextBoxTehsil.ClientID%>').value;
                var dep = document.getElementById('<%=DropDownListDepartment.ClientID%>').value;
                var ass = document.getElementById('<%=TextBoxAssignTo.ClientID%>').value;
                var adp = document.getElementById('<%=TextBoxadpno.ClientID%>').value;
                var projcode = document.getElementById('<%=TextBoxProjCode.ClientID%>').value;
                var projname = document.getElementById('<%=TextBoxProjName.ClientID%>').value;
                var name = document.getElementById('<%=TextBoxName.ClientID%>').value;
                var desg = document.getElementById('<%=TextBoxDesgination.ClientID%>').value;
                var con = document.getElementById('<%=TextBoxContactNo.ClientID%>').value;
                var ap = document.getElementById('<%=TextBoxApprentIssue.ClientID%>').value;

                document.getElementById('<%=LabelDivision.ClientID %>').innerHTML = div;
                document.getElementById('<%=LabelDistric.ClientID %>').innerHTML = dis;
                document.getElementById('<%=LabelTehsil.ClientID %>').innerHTML = teh;
                document.getElementById('<%=LabelDepartment.ClientID %>').innerHTML = dep;
                document.getElementById('<%=LabelAssignTo.ClientID %>').innerHTML = ass;
                document.getElementById('<%=LabelADPNO.ClientID %>').innerHTML = adp;
                document.getElementById('<%=LabelProjectCode.ClientID %>').innerHTML = projcode;
                document.getElementById('<%=LabelProjectName.ClientID %>').innerHTML = projname;
                document.getElementById('<%=LabelName.ClientID %>').innerHTML = name;
                document.getElementById('<%=LabelDesignation.ClientID %>').innerHTML = desg;
                document.getElementById('<%=LabelContact.ClientID %>').innerHTML = con;
                document.getElementById('<%=LabelApparentIssue.ClientID %>').innerHTML = ap;

                var dvPreview = document.getElementById("dvPreview");
                for (var i = 3; i < 6; i++) {
                    var img = document.createElement("IMG");
                    img.height = "100";
                    img.width = "100";
                    img.src = sessionStorage.getItem("ImgPath" + i);
                    dvPreview.appendChild(img);
                }

            }
       }

</script>
</asp:Content>


                                       