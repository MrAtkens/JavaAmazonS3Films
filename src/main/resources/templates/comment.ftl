<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Favicon -->
      <link rel="shortcut icon" href="../static/images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!--datatable CSS -->
      <link rel="stylesheet" href="css/dataTables.bootstrap4.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="css/responsive.css">
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
                          <li class="active active-menu"><a href="/" class="iq-waves-effect"><i class="las la-home iq-arrow-left"></i><span>Dashboard</span></a></li>
                          <li><a href="/users" class="iq-waves-effect"><i class="las la-user-friends"></i><span>Users</span></a></li>
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
         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between">
                           <div class="iq-header-title">
                              <h4 class="card-title">Comment Lists</h4>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <div class="table-responsive">
                              <table class="data-tables table movie_table" style="width:100%">
                                 <thead>
                                    <tr>
                                       <th style="width: 10%;">No</th>
                                       <th style="width: 20%;">Title</th>
                                       <th style="width: 10%;">Author</th>
                                       <th style="width: 25%;">Description</th>
                                       <th style="width: 15%;">Created Date</th>
                                       <th style="width: 10%;">Action</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>1</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Nick Allen</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          21 Jul, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>2</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Hans Olo</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          12 Jun, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>3</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Lynn Guini</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          01 Jan, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>4</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>aaronottix</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          19 Mar, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>5</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Marge Arita</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          21 Aug, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>6</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Bill Dabear</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          15 May, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
                                          </div>
                                       </td>
                                    </tr>                                 
                                    <tr>
                                       <td>7</td>
                                       <td>
                                          Lorem ipsum dolor
                                       </td>
                                       <td>Brock Lee</td>
                                       <td>
                                          <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus non elit a scelerisque. Etiam feugiat luctus est, vel commodo odio rhoncus sit amet</p>
                                       </td>
                                       <td>
                                          07 Jul, 2020
                                       </td>                                       
                                       <td>
                                          <div class="flex align-items-center list-user-action">
                                             <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="#"><i class="lar la-eye"></i></a>
                                             <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit" href="#"><i
                                                   class="ri-pencil-line"></i></a>
                                             <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete" href="#"><i
                                                   class="ri-delete-bin-line"></i></a>
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
      <!-- Wrapper END -->
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
      <script src="../static/js/jquery.min.js"></script>
      <script src="../static/js/popper.min.js"></script>
      <script src="../static/js/bootstrap.min.js"></script>
      <script src="../static/js/jquery.dataTables.min.js"></script>
      <script src="../static/js/dataTables.bootstrap4.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="../static/js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="../static/js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="../static/js/waypoints.min.js"></script>
      <script src="../static/js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="../static/js/wow.min.js"></script>
      <!-- Slick JavaScript -->
      <script src="../static/js/slick.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="../static/js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="../static/js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="../static/js/smooth-scrollbar.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="../static/js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="../static/js/custom.js"></script>
   </body>
</html>