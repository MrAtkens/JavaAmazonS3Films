<#import "parts/common.ftl" as common>

<@common.page>
      <!-- Page Content  -->
      <div id="content-page" class="content-page">
         <div class="container-fluid">
            <div class="row">
               <div class="col-sm-12">
                  <div class="iq-card">
                     <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                           <h4 class="card-title">Movie Lists</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                           <a href="/add-movie" class="btn btn-primary">Add movie</a>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="table-view">
                           <table class="data-tables table movie_table " style="width:100%">
                              <thead>
                                 <tr>
                                    <th>Movie</th>
                                    <th>Director</th>
                                     <th>Country</th>
                                    <th>Release Year</th>
                                    <th>Box office</th>
                                    <th style="width: 20%;">Description</th>
                                    <th>Action</th>
                                 </tr>
                              </thead>
                              <tbody>
                                <#list films as film>
                                    <tr>
                                    <td>
                                       <div class="media align-items-center">
                                          <div class="iq-movie">
                                             <a href="javascript:void(0);">
                                                 <img src="${film.getFilmImagePath()}" class="img-border-radius avatar-40 img-fluid" alt=""></a>
                                          </div>
                                          <div class="media-body text-white text-left ml-3">
                                             <p class="mb-0">${film.getName()}</p>
                                             <small>+${film.getRating()}</small><i class="ri-star-fill" style="color: gold"></i>
                                          </div>
                                       </div>
                                    </td>
                                    <td>${film.getDirector()}</td>
                                    <td>${film.getCountry()}</td>
                                    <td>${film.getPremiere()}</td>
                                    <td>${film.getBoxOfficeInDollar()}$</td>
                                    <td>
                                       <p>${film.getDescription()}</p>
                                    </td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                          <a class="iq-bg-warning" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="View" href="/movie-details/${film.getId()}"><i class="lar la-eye"></i></a>
                                          <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="Edit" href="/edit-movie/${film.getId()}"><i class="ri-pencil-line"></i></a>
                                          <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="Delete" href="/deleteMovie/${film.getId()}"><i
                                                class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
                                        <#else> No movies
                                 </tr>
                                </#list>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</@common.page>