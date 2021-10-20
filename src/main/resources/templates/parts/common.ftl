<#macro page>

    <!doctype html>
    <html lang="en">
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
    <div id="loading">
        <div id="loading-center">
        </div>
    </div>
    <!-- loader END -->
    <!-- Wrapper Start -->
    <div class="wrapper">
        <!-- Sidebar-->
        <div class="iq-sidebar">
            <div class="iq-sidebar-logo d-flex justify-content-between">
                <a href="/" class="header-logo">
                    <img src="/MovieImages/logo.png" class="img-fluid rounded-normal" alt="">
                    <div class="logo-title">
                        <span class="text-primary text-uppercase">Streamit</span>
                    </div>
                </a>
                <div class="iq-menu-bt-sidebar">
                    <div class="iq-menu-bt align-self-center">
                        <div class="wrapper-menu">
                            <div class="main-circle"><i class="las la-bars"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sidebar-scrollbar">
                <nav class="iq-sidebar-menu">
                    <ul id="iq-sidebar-toggle" class="iq-menu">
                        <li class="active active-menu"><a href="/admin" class="iq-waves-effect"><i class="las la-home iq-arrow-left"></i><span>Dashboard</span></a></li>
                        <li>
                            <a href="#category" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-list-ul"></i><span>Category</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="category" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                                <li><a href="/add-category"><i class="las la-user-plus"></i>Add Category</a></li>
                                <li><a href="/category-list"><i class="las la-eye"></i>Category List</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#movie" class="iq-waves-effect collapsed" data-toggle="collapse" aria-expanded="false"><i class="las la-film"></i><span>Movie</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                            <ul id="movie" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle">
                                <li><a href="/add-movie"><i class="las la-user-plus"></i>Add Movie</a></li>
                                <li><a href="/movie-list"><i class="las la-eye"></i>Movie List</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    <#nested>
    </div>
    <!-- Footer -->
    <footer class="iq-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item"><a href="/privacy-policy">Privacy Policy</a></li>
                        <li class="list-inline-item"><a href="/terms-of-service">Terms of Use</a></li>
                    </ul>
                </div>
                <div class="col-lg-6 text-right">
                    Copyright 2020 <a href="#">Streamit</a> All Rights Reserved В не комерчекских целях.
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.dataTables.min.js"></script>
    <script src="/js/dataTables.bootstrap4.min.js"></script>
    <!-- Appear JavaScript -->
    <script src="/js/jquery.appear.js"></script>
    <!-- Countdown JavaScript -->
    <script src="/js/countdown.min.js"></script>
    <!-- Select2 JavaScript -->
    <script src="/js/select2.min.js"></script>
    <!-- Counterup JavaScript -->
    <script src="/js/waypoints.min.js"></script>
    <script src="/js/jquery.counterup.min.js"></script>
    <!-- Wow JavaScript -->
    <script src="/js/wow.min.js"></script>
    <!-- Slick JavaScript -->
    <script src="/js/slick.min.js"></script>
    <!-- Owl Carousel JavaScript -->
    <script src="/js/owl.carousel.min.js"></script>
    <!-- Magnific Popup JavaScript -->
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <!-- Smooth Scrollbar JavaScript -->
    <script src="/js/smooth-scrollbar.js"></script>
    <!-- apex Custom JavaScript -->
    <script src="/js/apexcharts.js"></script>
    <!-- Chart Custom JavaScript -->
    <script src="/js/chart-custom.js"></script>
    <!-- Flatpickr JavaScript -->
    <script src="/js/flatpickr.min.js"></script>
    <!-- Custom JavaScript -->
    <script src="/js/custom.js"></script>
    </body>
    </html>
</#macro>