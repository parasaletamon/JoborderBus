<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FrmBuild.aspx.vb" Inherits="FrmBuild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>JOB_ORDER-Build </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="/css/req-icons.css" rel="stylesheet" />
    <link href="/css/req-svg.css" rel="stylesheet" />
    <!-- Bootstrap & font thai-->

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Thai+Looped:wght@300&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Thai+Looped:wght@300&display=swap" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="/css/req-svg.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/req-dashboard.css" />

    <link rel="icon" type="image/png" href="/image/logo1-1.png" />
    <script src="https://cdn.lordicon.com/qjzruarw.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="g-sidenav-show   bg-gray-100">
        <div class="min-height-300 bg-primary position-absolute w-100"></div>
        <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a class="navbar-brand m-0" href="Joborder.aspx" target="_blank">
                     <lord-icon
                        src="https://cdn.lordicon.com/zchxlapl.json"
                        trigger="hover"
                        status="hover"
                        style="width: 40px; height: 40px">
                    </lord-icon>
                    <%--<img src="/image/logo1-1.png" class="navbar-brand-img h-100" alt="main_logo" />--%>
                    <span class="ms-1 font-weight-bold">JOB ORDER</span>
                </a>
            </div>
            <hr class="horizontal dark mt-0" />
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link " href="Joborder.aspx">
                            <lord-icon
                                src="https://cdn.lordicon.com/zncllhmn.json"
                                trigger="hover"
                                colors="primary:#110a5c"
                                style="width: 47px; height: 45px">
                            </lord-icon>
                            <span class="nav-link-text ms-1">JOB ORDER</span>
                        </a>
                    </li>


                    <!--nav left -->
                    <li class="nav-item mt-3">
                        <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link " href="../Page/FrmProfile.aspx">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">Profile</span>
                        </a>
                    </li>

                    <!--<li class="nav-item">
                        <a class="nav-link  " href="../Page/FrmItreport.aspx">
                            <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
                            </div>
                            <span class="nav-link-text ms-1">IT-Report</span>
                        </a>
                    </li>-->

                    <li class="nav-item">
                        <a class="nav-link active" href="../FrmBuild.aspx">
                            <lord-icon
                                src="https://cdn.lordicon.com/qvbrkejx.json"
                                trigger="loop"
                                colors="primary:#121331"
                                state="loop"
                                style="width: 47px; height: 45px">
                            </lord-icon>
                            <span class="nav-link-text ms-1">BUILD</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  " href="../FrmUser.aspx">
                            <lord-icon
                                src="https://cdn.lordicon.com/hbvyhtse.json"
                                trigger="hover"
                                colors="primary:#121331"
                                state="hover"
                                style="width: 47px; height: 45px">
                            </lord-icon>
                            <span class="nav-link-text ms-1">USER</span>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="sidenav-footer mx-3 ">
                <div class="card card-plain shadow-none" id="sidenavCard">
                    <img class="w-50 mx-auto" src="../img/illustrations/icon-documentation.svg" alt="sidebar_illustration" />
                    <div class="card-body text-center p-3 w-100 pt-0">
                        <div class="docs-info">
                            <h6 class="mb-0">REQ</h6>
                            <p class="text-xs font-weight-bold mb-0">เข้าสู่เว็บไซต์</p>
                        </div>
                    </div>
                </div>

                <a class="btn btn-primary btn-sm mb-0 w-100" href="/Home/Default.aspx" type="button">Home</a>
            </div>
        </aside>
        <main class="main-content position-relative border-radius-lg ">

            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="./Joborder.aspx">Pages</a></li>
                            <li class="breadcrumb-item text-sm text-white active" aria-current="page">Build</li>
                        </ol>
                        <h6 class="font-weight-bolder text-white mb-0">Build</h6>
                    </nav>

                    <!-- SearcBox -->
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            <div class="input-group">
                                <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>

                                <asp:TextBox type="text" ID="TextBox1" class="form-control" runat="server" placeholder="Searc Here "></asp:TextBox>
                            </div>
                        </div>
                        <ul class="navbar-nav  justify-content-end">
                            <li class="nav-item d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                                    <i class="fa fa-user me-sm-1"></i>
                                    <span class="d-sm-inline d-none" value="mytable"></span>
                                    <asp:Label ID="lbluserids" runat="server"></asp:Label>
                                    <!-- Source Code -->
                                </a>
                            </li>
                            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                                    <div class="sidenav-toggler-inner">
                                        <i class="sidenav-toggler-line bg-white"></i>
                                        <i class="sidenav-toggler-line bg-white"></i>
                                        <i class="sidenav-toggler-line bg-white"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item px-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0">
                                    <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
                                </a>
                            </li>
                            <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-white p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-bell cursor-pointer"></i>
                                </a>

                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">JOB ORDER</h5>
                            <button type="button" class="btn close " data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <formt>
                                <!-- Select it-Bu -->
                                <!-- herf Ts-->
                                <div class="col-sm">
                                    <label for="MainContent_input_sq_request_bi" class="form-label">ID</label>
                                    <input name="ctl00$MainContent$tb_request_bi" type="text" readonly="readonly" id="MainContent_tb_request_bi" class="form-control">
                                    <span id="MainContent_tb_request_bi_m" class="text-danger"></span>
                                </div>
                                <div class="col-sm">
                                    <label for="MainContent_input_sq_request_bia" class="form-label">NameID</label>
                                    <input name="ctl00$MainContent$tb_request_bia" type="text" readonly="readonly" id="MainContent_tb_request_bia" class="form-control">
                                    <span id="MainContent_tb_request_bia_m" class="text-danger"></span>
                                </div>
                                <div class="col-sm">
                                    <label for="MainContent_input_sq_request_r" class="form-label">Email</label>
                                    <input name="ctl00$MainContent$tb_request_r" type="text" readonly="readonly" id="MainContent_tb_request_r" class="form-control">
                                    <span id="MainContent_tb_request_r_m" class="text-danger"></span>
                                </div>
                                <div class="col-sm">
                                    <label for="MainContent_dropdown_sq_ou" class="form-label">Status</label>
                                    <select name="ctl00$MainContent$dropdown_ty" onchange="javascript:setTimeout('__doPostBack(\'ctl00$MainContent$dropdown_ty\',\'\')', 0)" id="MainContent_dropdown_ou" class="form-select">
                                        <option selected="selected" value="493">Active</option>
                                        <option value="605">Unactive </option>


                                    </select>

                                    <span id="MainContent_dropdown_ou_m" class="text-danger"></span>
                                </div>

                                <div class="#mytable"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" value="">Close</button>
                            <button type="button" class="btn btn-primry" value="" onclick="showUserCreateBox1()">Save changes</button>
                        </div>


                    </div>

                </div>
            </div>
            <!--  Tbody -->

            <div class="container mt-12">
                <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModalCenter">
                    New
                </button>
                <div class="row">
                   
                                   
                              
                                <tbody id="mytable">
                                    <tr>
                                        <th scope="row" colspan="8">
                                            <asp:GridView ID="Gvbu" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" scope="row"  >
                                                <Columns>
                                                   
                                                        <asp:BoundField DataField="Job_id" HeaderText="JobID"  SortExpression="Job_id"></asp:BoundField>
                                                        <asp:BoundField DataField="Attach_file" HeaderText="File" SortExpression="Attach_file"></asp:BoundField>
                                                        
                                                        <asp:BoundField DataField="Create_Date" HeaderText="Create_Date" SortExpression="Create_Date" ></asp:BoundField>
                                                        <asp:BoundField DataField="Update_Date" HeaderText="Update_Date" SortExpression="Update_Date"></asp:BoundField>
                                                        
                                                        <asp:BoundField DataField="bu_name" HeaderText="Building" SortExpression="bu_name"></asp:BoundField>
                                                        <asp:BoundField DataField="typ_name" HeaderText="Types" SortExpression="typ_name"></asp:BoundField>
                                                        <asp:BoundField DataField="requestor"  HeaderText="Requestor" ReadOnly="True" SortExpression="requestor"></asp:BoundField>

                                                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TblIT_JoborderConn %>' SelectCommand="SELECT * FROM [joborder_v]"></asp:SqlDataSource>
                                        </th>
                                        
                                    </tr>
                                    
                                </tbody>
                        </div>
                
            </div>

            <!-----End Tbody ----------------->

        </main>
    </div>

    <!--   Core JS Files   -->
    <script src="/js/core/popper.min.js"></script>
    <script src="/js/core/bootstrap.min.js"></script>
    <script src="/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="/js/plugins/chartjs.min.js"></script>


    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>
    <script>
        $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
        })
    </script>


    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="/js/req-dashboard.min.js?v=2.0.4"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- Jq js -->
    <script src="/js/Upload.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.33/dist/sweetalert2.all.min.js"></script>
</asp:Content>

