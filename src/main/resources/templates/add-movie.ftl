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
                           <h4 class="card-title">Add Movie</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <form method="post" action="/addMovie" enctype="multipart/form-data">
                           <div class="row">
                              <div class="col-lg-7">
                                 <div class="row">
                                    <div class="col-12 form-group">
                                       <input type="text" class="form-control" name="name" placeholder="Movie name" required>
                                    </div>
                                     <div class="col-12 form-group">
                                         <input type="text" class="form-control" name="director" placeholder="Director" required>
                                     </div>
                                     <div class="col-12 form-group">
                                         <input type="text" class="form-control" name="scenarist" placeholder="Scenarist" required>
                                     </div>
                                     <div class="col-12 form-group">
                                         <input type="text" class="form-control" name="producer" placeholder="Producer" required>
                                     </div>
                                     <div class="col-12 form-group">
                                         <input type="text" class="form-control" name="country" placeholder="Country" required>
                                     </div>
                                    <div class="col-12 form_gallery form-group">
                                       <label id="gallery2" for="form_gallery-upload">Upload Image</label>
                                       <input name="image" data-name="#gallery2" id="form_gallery-upload" class="form_gallery-upload"
                                          type="file" accept=".png, .jpg, .jpeg" required>
                                    </div>
                                    <div class="col-md-6 form-group">
                                       <select name="category" class="form-control" id="exampleFormControlSelect1" required>
                                           <#list categories as category>
                                          <option>${category.getName()}</option>
                                           </#list>
                                       </select>
                                    </div>
                                     <div class="col-sm-6 form-group">
                                         <select name="rating" class="form-control" id="exampleFormControlSelect2" required>
                                             <option>5</option>
                                             <option>4.5</option>
                                             <option>4</option>
                                             <option>3.5</option>
                                             <option>3</option>
                                             <option>2.5</option>
                                             <option>2</option>
                                         </select>
                                     </div>
                                    <div class="col-12 form-group">
                                       <textarea id="text" name="description" rows="8" class="form-control"
                                          placeholder="Description" required></textarea>
                                    </div>
                                 </div>
                              </div>
                               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                               <div class="col-lg-5">
                                 <div class="d-block position-relative">
                                    <div class="form_video-upload">
                                       <input name="film" type="file" accept="video/mp4,video/x-matroska,video/*" multiple required>
                                       <p>Upload video</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-sm-6 form-group">
                                  <label for="exampleInputdate">Release date</label>
                                  <input type="text" name="premiere" class="form-control date-input basicFlatpickr" id="exampleInputdate" value="" required>
                              </div>
                               <div class="col-sm-6 form-group">
                                   <label for="exampleInputNumber1">Box office</label>
                                   <input type="number" name="boxOfficeInDollar" class="form-control" id="exampleInputNumber1" value="" required>
                               </div>
                               <div class="col-sm-12 form-group">
                                   <label for="exampleInputNumber1">Age rating</label>
                                   <input type="number" name="age" class="form-control" id="exampleInputNumber2" value="" required>
                               </div>
                              <div class="col-12 form-group ">
                                 <button type="submit" class="btn btn-primary">Submit</button>
                                 <button type="reset" class="btn btn-danger">Cancel</button>
                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</@common.page>