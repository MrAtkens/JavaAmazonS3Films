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
                           <h4 class="card-title">Add Category</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="row">
                           <div class="col-lg-12">
                              <form name="categoryDto" method="POST" action="/addCategory">
                                 <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Name">
                                 </div>
                                 <div class="form-group">
                                    <textarea id="text" name="description" rows="5" class="form-control"
                                    placeholder="Description"></textarea>
                                 </div>
                                 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                 <div class="form-group ">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="reset" class="btn btn-danger">Cancel</button>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</@common.page>
