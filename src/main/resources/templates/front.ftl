<#import "parts/frontCommon.ftl" as common>

<@common.front username="${username}">
   <!-- Slider Start -->
      <section id="home" class="iq-main-slider p-0">
         <div id="home-slider" class="slider m-0 p-0">
           <#list slideFilms as film>
            <div class="slide slick-bg s-bg-1" style="background-image: url('${film.getFilmImagePath()}');">
               <div class="container-fluid position-relative h-100">
                  <div class="slider-inner h-100">
                     <div class="row align-items-center  h-100">
                        <div class="col-xl-6 col-lg-12 col-md-12">
                           <a href="/movie-details/${film.getId()}">
                              <div class="channel-logo" data-animation-in="fadeInLeft" data-delay-in="0.5">
                                 <img src="/imagesFront/logo.png" class="c-logo" alt="streamit">
                              </div>
                           </a>
                           <h1 class="slider-text big-title title text-uppercase" data-animation-in="fadeInLeft"
                              data-delay-in="0.6">${film.getName()}</h1>
                           <div class="d-flex align-items-center" data-animation-in="fadeInUp" data-delay-in="1">
                              <span class="badge badge-secondary p-2">${film.getAge()}</span>
                              <span class="ml-3">${film.getCategory()}</span>
                           </div>
                           <p data-animation-in="fadeInUp" data-delay-in="1.2">
                               ${film.getDescription()}
                           </p>
                           <div class="d-flex align-items-center r-mb-23" data-animation-in="fadeInUp" data-delay-in="1.2">
                              <a href="/movie-details/${film.getId()}" class="btn btn-hover"><i class="fa fa-play mr-2"
                                 aria-hidden="true"></i>Play Now</a>
                              <a href="/movie-details/${film.getId()}" class="btn btn-link">More details</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
           </#list>
            <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="44px" height="44px" id="circle"
               fill="none" stroke="currentColor">
               <circle r="20" cy="22" cx="22" id="test"></circle>
            </symbol>
         </svg>
         </div>
      </section>
      <!-- Slider End -->
      <!-- MainContent -->
      <div class="main-content">
         <#list categories as category>
         <section id="iq-upcoming-movie">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-12 overflow-hidden">
                     <div class="iq-main-header d-flex align-items-center justify-content-between">
                        <h4 class="main-title">${category.getName()}</h4>
                     </div>
                     <div class="upcoming-contents">
                        <ul class="favorites-slider list-inline row p-0 mb-0">
                           <#list films as film>
                              <#if film.getCategory().getName() != category.getName()>
                                 <#continue>
                              </#if>
                              <li class="slide-item">
                                 <a href="/movie-details/${film.getId()}">
                                    <div class="block-images position-relative">
                                       <div class="img-box">
                                          <img src="${film.getFilmImagePath()}" class="img-fluid" alt="">
                                       </div>
                                       <div class="block-description">
                                          <h6>${film.getName()}</h6>
                                          <div class="movie-time d-flex align-items-center my-2">
                                             <div class="badge badge-secondary p-1 mr-2">+${film.getAge()}</div>
                                             <span class="text-white">${film.getRating()}</span><i class="ri-star-fill" style="color: gold"></i>
                                          </div>
                                          <div class="hover-buttons">
                                             <span class="btn btn-hover"><i class="fa fa-play mr-1" aria-hidden="true"></i>
                                             Play Now
                                             </span>
                                          </div>
                                       </div>
                                       <div class="block-social-info">
                                          <ul class="list-inline p-0 m-0 music-play-lists">
                                             <li><span><i class="ri-volume-mute-fill"></i></span></li>
                                             <li><span><i class="ri-heart-fill"></i></span></li>
                                             <li><span><i class="ri-add-line"></i></span></li>
                                          </ul>
                                       </div>
                                    </div>
                                 </a>
                              </li>
                           </#list>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </section>
        </#list>
      </div>
</@common.front>