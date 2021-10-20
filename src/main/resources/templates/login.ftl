<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<!doctype html>
<html lang="en-US">
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <!-- Favicon -->
   <link rel="shortcut icon" href="/images/favicon.ico" />
   <!-- Bootstrap CSS -->
   <link rel="stylesheet"  href="/css/bootstrap.min.css">
   <!--datatable CSS -->
   <link rel="stylesheet" href="/css/dataTables.bootstrap4.min.css">
   <!-- Typography CSS -->
   <link rel="stylesheet" href="/css/typography.css">
   <!-- Style CSS -->
   <link rel="stylesheet" href="/css/style.css">
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="/css/responsive.css">
   <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
</head>
<body>

<!-- loader Start -->
<!-- <div id="loading">
   <div id="loading-center">
   </div>
</div> -->
<!-- loader END -->
<!-- MainContent -->
<section class="sign-in-page">
   <div class="container">
      <div class="row justify-content-center align-items-center height-self-center">
         <div class="col-lg-5 col-md-12 align-self-center">
            <div class="sign-user_card ">                    
               <div class="sign-in-page-data">
                  <div class="sign-in-from w-100 m-auto">
                     <h3 class="mb-3 text-center">Sign in</h3>
                     <#if message??>
                        <h4 class="mb-3 text-center" style="{color: red}">
                           ${message}
                        </h4>
                     </#if>
                     <form class="mt-4" action="login" method="post">
                        <div class="form-group">                                 
                           <input type="text" name="username" class="form-control mb-0" id="exampleInputEmail1" placeholder="User name" autocomplete="off" required>
                        </div>
                        <div class="form-group">                                 
                           <input type="password" name="password" class="form-control mb-0" id="exampleInputPassword2" placeholder="Password" required>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                           <div class="sign-info">
                              <button type="submit" class="btn btn-hover" style="background-color: white">Sign in</button>
                              <div class="custom-control custom-checkbox d-inline-block">
                                 <input type="checkbox" class="custom-control-input" id="customCheck">
                                 <label class="custom-control-label" for="customCheck">Remember Me</label>
                              </div>                                
                           </div>
                     </form>
                  </div>
               </div>
               <div class="mt-3">
                  <div class="d-flex justify-content-center links">
                     Don't have an account? <a href="/registration" class="text-primary ml-2">Sign Up</a>
                  </div>
                  <div class="d-flex justify-content-center links">
                     <a href="/reset-password" class="f-link">Forgot your password?</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- MainContent End-->

<!-- back-to-top End -->
<!-- jQuery, Popper JS -->
<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="/js/bootstrap.min.js"></script>
<!-- Slick JS -->
<script src="/js/slick.min.js"></script>
<!-- owl carousel Js -->
<script src="/js/owl.carousel.min.js"></script>
<!-- select2 Js -->
<script src="/js/select2.min.js"></script>
<!-- Magnific Popup-->
<script src="/js/jquery.magnific-popup.min.js"></script>
<!-- Slick Animation-->
<script src="/js/slick-animation.min.js"></script>
<!-- Custom JS-->
<script src="/js/custom.js"></script>
</body>
</html>