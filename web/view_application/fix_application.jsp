<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
   <jsp:include page="../view/header.jsp"></jsp:include>

    <style>
        #appCard {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
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
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                </div>
                                <h4 class="page-title">车辆保养维修申请</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form>


                                                <div class="row">
                                                    <div class="mb-3 col-md-4">
                                                        <label for="user" class="form-label">责任人</label>
                                                        <input type="text" id="user" class="form-control">
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="time" class="form-label">申请时间</label>
                                                        <input type="date" id="time" class="form-control">
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="mb-3 col-md-4">
                                                        <label for="Carid" class="form-label">车辆号</label>
                                                        <input type="text" id="Carid" class="form-control">
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="Carid1" class="form-label">车牌号</label>
                                                        <input type="text" id="Carid1" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="mb-3 col-md-4">
                                                        <label for="fix_time" class="form-label">上次维修日期</label>
                                                        <input type="date" id="fix_time" class="form-control">
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="mileage" class="form-label">保养间隔里程数</label>
                                                        <input type="text" id="mileage" class="form-control">
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="fix_t" class="form-label">维修类型</label>
                                                        <select class="form-select" id="fix_t">
                                                            <option>正常维修</option>
                                                            <option>事故维修</option>
                                                            <option>保养</option>
                                                        </select>
                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="mb-3 col-md-12">
                                                        <label for="fix_d" class="form-label">维修地点</label>
                                                        <input type="text" id="fix_d" class="form-control">
                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="mb-3 col-md-12">
                                                        <label for="extra_t" class="form-label">情况说明</label>
                                                        <textarea class="form-control" id="extra_t" rows="5"></textarea>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="mb-3 col-md-5">

                                                    </div>
                                                    <div class="mb-3 col-md-2">
                                                    <input class="btn btn-primary text-center" type="submit" value="提交维修单">
                                                    </div>
                                                </div>

                                            </form>
                                        </div> <!-- end col -->

                                    </div>
                                    <!-- end row-->

                                </div> <!-- end card-body -->
                            </div> <!-- end card -->
                        </div><!-- end col -->
                    </div>


                </div> <!-- container -->

            </div>
            <!-- end page title -->

                <div class="row">

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
<script src="../assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

<!-- Init js-->
<script src="../assets/js/pages/form-wizard.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>


<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>