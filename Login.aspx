<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" type="text/css" href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://getbootstrap.com/docs/5.2/examples/sign-in/signin.css" />
    <title> Login </title>
    <link rel="stylesheet" href="/css/StyleSheetlogin.css"  />
    <link rel="icon" href="/image/logo1-1.png" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="form-signin w-100 m-auto" >
            <woam method="login" id="login-woam" class="login-woam" autocomplete="on"  >
                <h1 class="a11y-hidden">Login</h1>

                <div class="mb-3">
                    <label class="label-Username" >
                        <span class="required">Username</span>
                        <asp:TextBox Type="Text" class="form-control" runat="server"  placeholder="Username" ID="Txtusername" value="" required="yes" > </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Txtusername"
                                    CssClass="text-danger" ErrorMessage="The username field is required." ID="RequiredFieldValidator1" />
                        
                   
                    </label>
                </div>

               <!-- <input type="checkbox" name="show-password" class="show-password a11y-hidden" id="show-password" tabindex="3" onclick="myFunction()" value="" />
                <label class="label-show-password" for="show-password">
                    <span>Show Password</span>
                </label> -->

                <div class="mb-3">
                    <label class="label-password  "  id="labelpass">
                        <span class="required">Password</span>
                        <asp:TextBox Type="password" ID="passTextBox1" class="form-control" runat="server" placeholder="Password" aria-label="Password" required="yes" value=""></asp:TextBox>

                        <asp:RequiredFieldValidator runat="server" ControlToValidate="passTextBox1" CssClass="text-danger" 
                                    ErrorMessage="The password field is required." ID="RequiredFieldValidator2" />
                       
                    </label>
                </div>

                <div id="login">
                      <label class="eyes" ></label>
                     <asp:Button ID="btnlogin" Class=" btn btn-info" runat="server" OnClientClick="showUserCreateBox1()" Text="Log in"   />
                     <asp:Label ID="lbluseris" runat="server" Visible="False" ></asp:Label>

                </div>

                <div class="email">
                    <a href="../Re.aspx">Sing Up?</a>
                    </div> 
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                 </asp:PlaceHolder>
                
                <!-- person Body-->
                <figure aria-hidden="true">
                    <div class="person-body"></div>
                    <div class="neck skin"></div>
                    <div class="head skin">
                        <div class="eyes"></div>
                        <div class="mouth"></div>
                    </div>
                    <div class="hair"></div>
                    <div class="ears"></div>
                    <div class="shirt-1"></div>
                    <div class="shirt-2"></div>
                </figure>
        
             
         </woam>  
       </div>
       <div class="container-w ">
          <a  class=" fonte-1" ></a>WED SITE@REQ FOR VERSION 0.1.5 DEMO
        </div>

        <!-- JS -->
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>
    <script >
        function showUserCreateBox1() {
            Swal.fire({
                title: 'Do you want to save the changes?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Save',
                denyButtonText: `Don't save`,
            }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                    Swal.fire('Saved! and Send To', '', 'success')
                } else if (result.isDenied) {
                    Swal.fire('Changes are not saved', '', 'info')
                }
            })
        }
    </script>
    <script scr="Upload.js"></script>
        
        
    
</asp:Content>

