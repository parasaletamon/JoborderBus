<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Frmuser.aspx.vb" Inherits="Frmuser" %>

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

    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href="Joborder.aspx " target="_blank">
                 <lord-icon
                        src="https://cdn.lordicon.com/zchxlapl.json"
                        trigger="hover"
                        status="hover"
                        style="width: 40px; height: 40px">
                    </lord-icon>
                <%--<img src="/image/logo1-1.png" class="navbar-brand-img h-100" alt="main_logo">--%>
                <span class="ms-1 font-weight-bold">JOB ORDER</span>
            </a>
        </div>
        <hr class="horizontal dark mt-0">
        <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link " href="Joborder.aspx">
                        <lord-icon
                                src="https://cdn.lordicon.com/zncllhmn.json"
                                trigger="Loop"
                                colors="primary:#110a5c"
                                style="width: 47px; height: 45px">
                            </lord-icon>
                        <span class="nav-link-text ms-1">JOB ORDER</span>
                    </a>
                </li>


                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="../FrmProfile.aspx">
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
                    <a class="nav-link " href="../FrmBuild.aspx">
                       <lord-icon
                                src="https://cdn.lordicon.com/qvbrkejx.json"
                                trigger="morph"
                                colors="primary:#121331"
                                state="morph"
                                style="width: 47px; height: 45px">
                            </lord-icon>
                        <span class="nav-link-text ms-1">BUILD</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active " href="../FrmUser.aspx">
                        <lord-icon
                            src="https://cdn.lordicon.com/hbvyhtse.json"
                            trigger="loop"
                            style="width: 47px; height: 45px">
                        </lord-icon>
                        <span class="nav-link-text ms-1">USER</span>
                    </a>
                </li>
            </ul>
        </div>

    </aside>
    <main class="main-content position-relative border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur" data-scroll="false">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Pages</a></li>
                        <li class="breadcrumb-item text-sm text-white active" aria-current="page">Tables</li>
                    </ol>
                    <h6 class="font-weight-bolder text-white mb-0">Tables</h6>
                </nav>
                <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                        <div class="input-group">
                            <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" placeholder="Type here...">
                        </div>
                    </div>
                    <ul class="navbar-nav  justify-content-end">
                        <li class="nav-item d-flex align-items-center">
                            <a href="javascript:;" class="nav-link text-white font-weight-bold px-0">
                                <i class="fa fa-user me-sm-1"></i>
                                <span class="d-sm-inline d-none"></span>
                                <asp:Label ID="lbluserid" runat="server"></asp:Label>
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
                            <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">

                                <li>
                                    <a class="dropdown-item border-radius-md" href="javascript:;">
                                        <div class="d-flex py-1">
                                            <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                                <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                                            <g transform="translate(1716.000000, 291.000000)">
                                                                <g transform="translate(453.000000, 454.000000)">
                                                                    <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                                                    <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>

                                        </div>
                                    </a>
                                </li>
                            </ul>
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
                            <!-- Select it-Em -->
                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_bi" class="form-label">ID</label>

                                <asp:TextBox ID="Txtuid" runat="server" Type="text" class="form-control" value=""></asp:TextBox>
                                <span id="MainContent_tb_request_bi_m" class="text-danger"></span>
                            </div>

                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_nu" class="form-label">Username</label>

                                <asp:TextBox ID="Txtusername" Type="text" class="form-control" value="" runat="server"></asp:TextBox>
                                <span id="MainContent_tb_request_nu_m" class="text-danger"></span>
                            </div>

                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_em" class="form-label">Email</label>

                                <asp:TextBox ID="Txtemail" Type="text" class="form-control" value="" runat="server"></asp:TextBox>
                                <span id="MainContent_tb_request_em_m" class="text-danger"></span>
                            </div>

                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_de" class="form-label">Dept</label>

                                <asp:TextBox ID="Txtdept" Type="text" class="form-control" value="" runat="server"></asp:TextBox>
                                <span id="MainContent_tb_request_de_m" class="text-danger"></span>
                            </div>

                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_ps" class="form-label">Password</label>

                                <asp:TextBox ID="Txtpass" Type="text" class="form-control" value="" runat="server"></asp:TextBox>
                                <span id="MainContent_tb_request_ps_m" class="text-danger"></span>
                            </div>

                            <div class="col-sm">
                                <label for="MainContent_input_sq_request_su" class="form-label">Supervisor </label>

                                <asp:TextBox ID="Txtsuper" Type="text" class="form-control" value="" runat="server"></asp:TextBox>
                                <span id="MainContent_tb_request_su_m" class="text-danger"></span>
                            </div>

                            <div class="#mytable"></div>
                    </div>
                    <div class="modal-footer">
                        <!-- Javascrip:;-->

                        <asp:Button ID="btnClose" runat="server" CssClass="btn btn-secondary" Text="Search" data-dismiss="modal" />
                        <!-- JavaScript -->
                        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primry" Text="Edit" valu="" />
                        <button type="button" class="btn btn-primry" id="btsave" value="" onclick="showUserCreateBox1()">Save changes</button>
                    </div>


                </div>

            </div>
        </div>

        <div class="container mt-12">
            <button type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModalCenter">
                New
            </button>
            <div class="row">
                <div class="col-12">
                    <div class="card mb-4">
                        <div class="card-header pb-0">
                            <h6>USER</h6>
                        </div>
                        <div class="card-body px-0 pt-0 pb-2">
                            <div class="table-responsive p-0">
                               <tb >
                                   <asp:GridView ID="GvEmp" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                       <Columns>
                                           <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Username" HeaderText="emp_Username" SortExpression="emp_Username"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Password" HeaderText="emp_Password" SortExpression="emp_Password"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Name" HeaderText="emp_Name" SortExpression="emp_Name"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Email" HeaderText="emp_Email" SortExpression="emp_Email"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Building" HeaderText="emp_Building" SortExpression="emp_Building"></asp:BoundField>
                                           <asp:BoundField DataField="emp_Dept" HeaderText="emp_Dept" SortExpression="emp_Dept"></asp:BoundField>
                                           <asp:BoundField DataField="emp_role" HeaderText="emp_role" SortExpression="emp_role"></asp:BoundField>
                                           <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                                       </Columns>
                                   </asp:GridView>
                                   <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TblIT_JoborderConn %>' SelectCommand="SELECT * FROM [Tbl_Employee]"></asp:SqlDataSource>
                               </tb>

                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </main>
    <!--  ค่อยเพิ่มฟีเจอ
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="fa fa-cog py-2"></i>
        </a>
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3 ">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">JOBORDER Configurator</h5>
                    <p>See our dashboard options.</p>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <!-- End Toggle Button 
            </div> 
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0 overflow-auto"> -->

    <!-- Sidebar Backgrounds ค่อยเพิ่มฟีเจอ 
                <div>
                    <h6 class="mb-0">Sidebar Colors</h6>
                </div>
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors my-2 text-start">
                        <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
                    </div>
                </a> -->

    <!-- Sidenav Type  ค่อยเพิ่มฟีเจอ
                <div class="mt-3">
                    <h6 class="mb-0">Sidenav Type</h6>
                    <p class="text-sm">Choose between 2 different sidenav types.</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default" onclick="sidebarType(this)">Dark</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p> -->

    <!-- Navbar Fixed ค่อยเพิ่มฟีเจอ
                <div class="d-flex my-3">
                    <h6 class="mb-0">Navbar Fixed</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-sm-4">
                <div class="mt-2 mb-5 d-flex">
                    <h6 class="mb-0">Light / Dark</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
                    </div>
                </div> 

            </div>
        </div> -->


    <!--   Core JS Files   -->
    <script src="/js/core/popper.min.js"></script>
    <script src="/js/core/bootstrap.min.js"></script>
    <script src="/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="/js/plugins/chartjs.min.js"></script>
    <script src="../file.ts"></script>
    <script> <!--Mobile apps-->
    var ctx1 = document.getElementById("chart-line").getContext("2d");

    var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
    gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
    gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
    new Chart(ctx1, {
        type: "line",
        data: {
            labels: [""],
            datasets: [{
                label: "Mobile apps",
                tension: 0.4,
                borderWidth: 0,
                pointRadius: 0,
                borderColor: "#5e72e4",
                backgroundColor: gradientStroke1,
                borderWidth: 3,
                fill: true,
                data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                maxBarThickness: 6

            }],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: false,
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
            scales: {
                y: {
                    grid: {
                        drawBorder: false,
                        display: true,
                        drawOnChartArea: true,
                        drawTicks: false,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        padding: 10,
                        color: '#fbfbfb',
                        font: {
                            size: 11,
                            family: "Open Sans",
                            style: 'normal',
                            lineHeight: 2
                        },
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        color: '#ccc',
                        padding: 20,
                        font: {
                            size: 11,
                            family: "Open Sans",
                            style: 'normal',
                            lineHeight: 2
                        },
                    }
                },
            },
        },
    });
    </script>
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

