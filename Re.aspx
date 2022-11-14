<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Re.aspx.vb" Inherits="Re" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <!-- Main CSS-->
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Register" runat="server"> <!-- ClassVB -->
                    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
                    <div class="wrapper wrapper--w680">
                        <div class="card card-4">
                            <div class="card-body">
                                <h2 class="title">Registration Form</h2>
                                  <formr method="POST" runat="server" >
                                    <div class="row row-space">
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Name</label>
                                                <asp:TextBox class="input--style-4" runat="server" ID="txtname" placeholder=" Name" value=""></asp:TextBox>                                               
                                            </div>
                                        </div>     
                                    </div>
                                    <div class="row row-space">
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Birthday</label>
                                                <div class="input-group-icon">
                                                    
                                                    <asp:TextBox class="input--style-4 js-datepicker" type="text" placeholder="DD/MM/YYYY" ID="txtbd" runat="server"></asp:TextBox>
                                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                                </div>
                                            </div>
                                        </div>
                                       
                                    </div>

                                    <div class="row row-space"> <!-- Email -->
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Email</label>
                                                <asp:TextBox  class="input--style-4" type="email" ID="Txtemail" runat="server" placeholder="Email" ></asp:TextBox>
                                                
                                            </div>
                                        </div>
                                        <div class="col-2">  <!-- Password -->
                                            <div class="input-group">
                                                <label class="label" >Password </label>
                                                
                                                <asp:TextBox  class="input--style-4" type="password" ID="Txtpassword" runat="server" placeholder="Password" ></asp:TextBox>
                                                <div class="input-group-append"></div>
                                                    <h7><a > ใช้ Password เดียวกันกับบริษัท</a></h7>
                                            </div>
                                        </div>

                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">UserName</label>
                                                
                                                <asp:TextBox  class="input--style-4" type="text" ID="txtusername" runat="server" placeholder="Username" value=""></asp:TextBox>
                                                <h7><a > กรอกคำว่า user </a></h7>
                                            </div>
                                        </div>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Role</label>
                                                
                                                <asp:TextBox  class="input--style-4" type="text" ID="Txtrole" runat="server" placeholder="Role" value="User"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Status</label>
                                                
                                                <asp:TextBox  class="input--style-4" type="text" ID="Txtsta" runat="server" placeholder="Status" value="Y"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                            
                                  <!-- Dropbox -->
                                    <div class="input-group">
                                        <label class="label">Dept</label>
                                        <div class="rs-select2 js-select-simple select--no-search" id="choose1">
                                            <asp:DropDownList ID="ddl1" runat="server">
                                               
                                            </asp:DropDownList>
                                           
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                    <div class="input-group">
                                        <label class="label">Builing</label>
                                        <div class="rs-select2 js-select-simple select--no-search" id="choose2">
                                            
                                            
                                            <asp:DropDownList ID="ddl2" runat="server">
                                               
                                            </asp:DropDownList>
                                            <div class="select-dropdown"></div>
                                        </div>
                                        
                                    </div>
                                    <div class="p-t-15" runat="server" id="Submit">

                                        
                                        <asp:Button class="btn btn--radius-2 btn--blue" type="submit"  ID="Button1" runat="server" value=""  Text="Submit" />
                                    </div>
                                    </formr>
                                </div>
                            </div>
                        </div>
                        </div>
        </div>
    
    
</asp:Content>

