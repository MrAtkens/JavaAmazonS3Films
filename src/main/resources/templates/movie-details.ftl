<#import "parts/frontCommon.ftl" as common>

<@common.front username="${username}">
   <!-- Banner Start -->
   <div class="video-container iq-main-slider">
      <video class="video d-block" poster="${film.getFilmImagePath()}" controls loop>
         <source src="${film.getFilmPath()}" type="video/mp4">
      </video>
   </div>
   <!-- Banner End -->
   <!-- MainContent -->
   <div class="main-content movie">
      <section class="movie-detail container-fluid">
         <div class="row">
            <div class="col-lg-12">
               <div class="trending-info g-border">
                  <h1 class="trending-text big-title text-uppercase mt-0">${film.getName()}</h1>
                  <ul class="p-0 list-inline d-flex align-items-center movie-content">
                     <li class="text-white">${film.getCategory().getName()}</li>
                  </ul>
                  <div class="d-flex align-items-center text-white text-detail">
                     <span class="badge badge-secondary p-3">+${film.getAge()}</span>
                     <span class="badge badge-secondary p-3">Director: ${film.getDirector()}</span>
                     <span class="badge badge-secondary p-3">${film.getPremiere()}</span>
                  </div>
                  <div class="d-flex align-items-center text-white text-detail">
                     <span class="badge badge-secondary p-3">Scenarist: ${film.getScenarist()}</span>
                     <span class="badge badge-secondary p-3">Producer: ${film.getProducer()}</span>
                  </div>
                  <div class="d-flex align-items-center text-white text-detail">
                     <span class="badge badge-secondary p-3">Country: ${film.getCountry()}</span>
                     <span class="badge badge-secondary p-3">Box office: ${film.getBoxOfficeInDollar()}$</span>
                  </div>
                  <p class="trending-dec w-100 mb-0">${film.getDescription()}</p>
                  <ul class="list-inline p-0 mt-4 share-icons music-play-lists">
                     <li><span><i class="ri-add-line"></i></span></li>
                     <li><span><i class="ri-heart-fill"></i></span></li>
                     <li class="share">
                        <span><i class="ri-share-fill"></i></span>
                        <div class="share-box">
                           <div class="d-flex align-items-center">
                              <a href="#" class="share-ico"><i class="ri-facebook-fill"></i></a>
                              <a href="#" class="share-ico"><i class="ri-twitter-fill"></i></a>
                              <a href="#" class="share-ico"><i class="ri-links-fill"></i></a>
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
   </div>
</@common.front>