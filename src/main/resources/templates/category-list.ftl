<#import "parts/common.ftl" as common>
<!-- Page Content  -->
<@common.page>
<div id="content-page" class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="iq-card">
                    <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                            <h4 class="card-title">Category Lists</h4>
                        </div>
                        <div class="iq-card-header-toolbar d-flex align-items-center">
                            <a href="/add-category" class="btn btn-primary">Add Category</a>
                        </div>
                    </div>
                    <div class="iq-card-body">
                        <div class="table-view">
                            <table class="data-tables table movie_table " style="width:100%">
                                <thead>
                                <tr>
                                    <th style="width:10%;">No</th>
                                    <th style="width:20%;">Name</th>
                                    <th style="width:40%;">Description</th>
                                    <th style="width:20%;">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list categories as category>
                                <tr>
                                    <td>${category.getId()}</td>
                                    <td>${category.getName()}</td>
                                    <td>
                                        <p>${category.getDescription()}</p>
                                    </td>
                                    <td>
                                        <div class="flex align-items-center list-user-action">
                                            <a class="iq-bg-success" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="Edit" href="/edit-category/${category.getId()}"><i class="ri-pencil-line"></i></a>
                                            <a class="iq-bg-primary" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="Delete" href="/deleteCategory/${category.getId()}"><i
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