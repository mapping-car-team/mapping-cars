<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <jsp:include page="../view/header.jsp"></jsp:include>

</head>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->
<div id="wrapper">

    <jsp:include page="../view/nav.jsp"></jsp:include>
    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">我的派车申请</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <h4 class="text-center">当前申请</h4>
                <hr>
                <s:if test='#request.ongoingCA[0]!=null'>
                    <div class="row">
                        <s:iterator value="#request.ongoingCA" var="ap">
                            <div class="card d-block">
                                <div class="card-body">
                                    <div class="dropdown float-end">
                                        <a href="#" class="dropdown-toggle arrow-none text-muted" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="mdi mdi-dots-horizontal font-18"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-attachment me-1"></i>Attachment </a>
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-pencil-outline me-1"></i>Edit </a>
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-content-copy me-1"></i>Mark as Duplicate </a>
                                            <div class="dropdown-divider"></div>
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item text-danger"> <i class="mdi mdi-delete-outline me-1"></i>Delete </a>
                                        </div>
                                        <!-- end dropdown menu-->
                                    </div>
                                    <!-- end dropdown-->
                                    <!-- end form-check-->
                                    <div class="clearfix"></div>
                                    <s:if test='#ap.status=="审核中"'>
                                        <h4><button type="button" class="btn btn-warning me-2">审核中</button>申请单号：car-<s:property value="#onap.id"/></h4>
                                    </s:if>
                                    <s:elseif test='#ap.status=="已通过"'>
                                        <h4><button type="button" class="btn btn-success me-2">已通过</button>申请单号：car-<s:property value="#onap.id"/></h4>
                                    </s:elseif>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!-- assignee -->
                                            <p class="mt-2 mb-1 text-muted">用车人</p>
                                            <div class="d-flex align-items-start">
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        <s:property value="#ap.userName"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end assignee -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-md-4">
                                            <!-- start due date -->
                                            <p class="mt-2 mb-1 text-muted">勘察车号</p>
                                            <div class="d-flex align-items-start">
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        <s:property value="#ap.carID"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end due date -->
                                        </div>

                                        <div class="col-md-4">
                                            <!-- start due date -->
                                            <p class="mt-2 mb-1 text-muted">申请日期</p>
                                            <div class="d-flex align-items-start">
                                                <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        <s:property value="#ap.applicationDate"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end due date -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-md-4">
                                            <!-- assignee -->
                                            <p class="mt-2 mb-1 text-muted">审核员</p>
                                            <div class="d-flex align-items-start">
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        manage-<s:property value="#ap.handler"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end assignee -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-md-4">
                                            <!-- start due date -->
                                            <p class="mt-2 mb-1 text-muted">业务号</p>
                                            <div class="d-flex align-items-start">
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        yw-<s:property value="#ap.workID"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end due date -->
                                        </div>

                                        <div class="col-md-4">
                                            <!-- start due date -->
                                            <p class="mt-2 mb-1 text-muted">目的地</p>
                                            <div class="d-flex align-items-start">
                                                <i class="mdi mdi-map-marker font-18 text-primary me-1"></i>
                                                <div class="w-100">
                                                    <h5 class="mt-1 font-size-14">
                                                        <s:property value="#ap.destination"/>
                                                    </h5>
                                                </div>
                                            </div>
                                            <!-- end due date -->
                                        </div>
                                        <!-- end col -->

                                    </div>
                                    <!-- end row -->
                                    <div>
                                        <h5 class="mt-3">备注:</h5>

                                        <p class="text-muted mb-4">
                                            <s:property value="#ap.remarks"/>
                                        </p>
                                    </div>
                                </div>
                                <!-- end card-body-->
                            </div>
                        </s:iterator>
                    </div>
                </s:if>
                <s:else>
                    <h4 class="text-center mb-5 text-primary">当前好像没有申请哦!</h4>
                </s:else>
                <h4 class="mt-2 text-center" >历史申请</h4>
                <hr>
                <div class="row">
                    <s:iterator value="#request.finishedCA" var="ap">
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle arrow-none text-muted" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal font-18"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-attachment me-1"></i>Attachment </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-pencil-outline me-1"></i>Edit </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-content-copy me-1"></i>Mark as Duplicate </a>
                                    <div class="dropdown-divider"></div>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item text-danger"> <i class="mdi mdi-delete-outline me-1"></i>Delete </a>
                                </div>
                                <!-- end dropdown menu-->
                            </div>
                            <!-- end dropdown-->
                            <!-- end form-check-->
                            <div class="clearfix"></div>
                            <s:if test='#ap.status=="已完成"'>
                                <h4><button type="button" class="btn btn-info me-2">已完成</button>申请单号：fix-<s:property value="#ap.id"/></h4>
                            </s:if>
                            <s:elseif test='#ap.status=="未通过"'>
                                <h4><button type="button" class="btn btn-danger me-2">未通过</button>申请单号：fix-<s:property value="#ap.id"/></h4>
                            </s:elseif>
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- assignee -->
                                    <p class="mt-2 mb-1 text-muted">用车人</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#ap.userName"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end assignee -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">勘察车号</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#ap.carID"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">申请日期</p>
                                    <div class="d-flex align-items-start">
                                        <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#ap.applicationDate"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-4">
                                    <!-- assignee -->
                                    <p class="mt-2 mb-1 text-muted">审核员</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                manage-<s:property value="#ap.handler"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end assignee -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">业务号</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                yw-<s:property value="#ap.workID"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">目的地</p>
                                    <div class="d-flex align-items-start">
                                        <i class="mdi mdi-map-marker font-18 text-primary me-1"></i>
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#ap.destination"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>
                                <!-- end col -->

                            </div>
                            <!-- end row -->
                            <div>
                                <h5 class="mt-3">备注:</h5>

                                <p class="text-muted mb-4">
                                    <s:property value="#ap.remarks"/>
                                </p>
                            </div>

                        </div>
                        <!-- end card-body-->
                    </div>
                    </s:iterator>
                </div>


            </div> <!-- container -->

        </div> <!-- content -->

        <jsp:include page="../view/footer.jsp"></jsp:include>

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->


<!-- Vendor js -->
<script src="../assets/js/vendor.min.js"></script>

<!-- Plugins js-->
<script src="../assets/libs/flatpickr/flatpickr.min.js"></script>
<script src="../assets/libs/apexcharts/apexcharts.min.js"></script>

<script src="../assets/libs/selectize/js/standalone/selectize.min.js"></script>

<!-- Dashboar 1 init js-->
<script src="../assets/js/pages/dashboard-1.init.js"></script>

<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>