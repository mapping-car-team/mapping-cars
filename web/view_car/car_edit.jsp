<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/19
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

    <jsp:include page="../view/nav_admin.jsp"></jsp:include>
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
                            <h4 class="page-title text-center">车辆具体信息</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">General</h5>
                                <div class="row">
                                    <div class="mb-3 col-4">
                                        <label for="car-id" class="form-label">查勘车号 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="car-id" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cph" class="form-label">车牌号 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="cph" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">所属部门 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="de" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="rt" class="form-label">入库时间 <span
                                                class="text-danger">*</span></label>
                                        <input type="date" id="rt" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cl" class="form-label">车龄 <span class="text-danger">*</span></label>
                                        <input type="text" id="cl" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="bs" class="form-label">变速箱类型 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="bs" class="form-control">
                                    </div>

                                    <div class="mb-3 col-8">
                                        <label for="xh" class="form-label">车辆型号 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="xh" class="form-control">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="xhd" class="form-label">车辆品牌 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="xhd" class="form-control">
                                    </div>
                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">维修记录</h5>
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>维修单号</th>
                                                    <th data-priority="1">责任人</th>
                                                    <th data-priority="3">送修时间</th>
                                                    <th data-priority="3">送修地址</th>
                                                    <th data-priority="3">维修金额</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <th>123</th>
                                                    <td>lee</td>
                                                    <td>2021-11-11 12:12PM</td>
                                                    <th>daxiu</th>
                                                    <td>1123</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->

                                    </div> <!-- end .table-rep-plugin-->
                                </div> <!-- end .responsive-table-plugin-->
                            </div> <!-- end card -->
                        </div> <!-- end col -->

                    <!-- end row -->
                    </div>
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">保养记录</h5>
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-2" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>保养单号</th>
                                                    <th data-priority="1">责任人</th>
                                                    <th data-priority="3">保养时间</th>
                                                    <th data-priority="3">保养前里程</th>
                                                    <th data-priority="3">保养金额</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <th>123</th>
                                                    <td>lee</td>
                                                    <td>2021-11-11 12:12PM</td>
                                                    <th>daxiu</th>
                                                    <td>1123</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->

                                    </div> <!-- end .table-rep-plugin-->
                                </div> <!-- end .responsive-table-plugin-->
                            </div> <!-- end card -->
                        </div> <!-- end col -->

                        <!-- end row -->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-3">
                                <button type="button" class="btn w-sm btn-light waves-effect">Cancel</button>
                                <button type="button" class="btn w-sm btn-success waves-effect waves-light">Save
                                </button>
                                <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete
                                </button>
                            </div>
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->


                    <!-- file preview template -->
                    <div class="d-none" id="uploadPreviewTemplate">
                        <div class="card mt-1 mb-0 shadow-none border">
                            <div class="p-2">
                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <img data-dz-thumbnail src="#" class="avatar-sm rounded bg-light" alt="">
                                    </div>
                                    <div class="col ps-0">
                                        <a href="javascript:void(0);" class="text-muted fw-bold" data-dz-name></a>
                                        <p class="mb-0" data-dz-size></p>
                                    </div>
                                    <div class="col-auto">
                                        <!-- Button -->
                                        <a href="" class="btn btn-link btn-lg text-muted" data-dz-remove>
                                            <i class="dripicons-cross"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
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