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
                           <h4 class="card-title">User Lists</h4>
                        </div>
                     </div>
                     <div class="iq-card-body">
                        <div class="table-view">
                           <table class="data-tables table movie_table " style="width:100%">
                              <thead>
                              <tr>
                                 <th style="width:10%;">No</th>
                                 <th style="width:20%;">Name</th>
                                 <th style="width:20%;">Register Date</th>
                              </tr>
                              </thead>
                              <tbody>
                              <#list categories as category>
                                 <tr>
                                    <td>${category.getId()}</td>
                                    <td>${category.getUsername()}</td>
                                    <td>${category.getCreatedDate()}</td>
                                    <td>
                                       <div class="flex align-items-center list-user-action">
                                          <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                             data-original-title="Delete" href="/deleteUser/${category.getId()}"><i
                                                     class="ri-delete-bin-line"></i></a>
                                       </div>
                                    </td>
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