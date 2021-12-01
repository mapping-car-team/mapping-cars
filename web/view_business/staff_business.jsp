<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/30
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <title>MAPPING CARS MANAGE INDEX</title>
  <jsp:include page="../view/header.jsp"/>
  <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
  <style type="text/css">
    #MAP {height: 580px; }
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
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">我的行程</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Portlet card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class=" pt-3 show">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <!-- assignee -->
                                                    <p class=" mb-1 text-muted font-20 ">业务状态</p>
                                                    <div class="d-flex align-items-start">
                                                        <div class="w-100">
                                                            <h5 class="mt-1 font-16 text-warning">
                                                                未到达在路上<input class="btn btn-success text-center font-16 ms-2" type="submit" value="我已到达事故地点">
                                                            </h5>
                                                        </div>
                                                    </div>
                                                    <!-- end assignee -->
                                                </div>
                                                <div class="col-md-4">
                                                    <!-- start due date -->
                                                    <p class="mt-2 mb-1 text-muted font-20">业务号</p>
                                                    <div class="d-flex align-items-start">
                                                        <div class="w-100">
                                                            <h5 class="mt-1 font-16">
                                                                yw-125
                                                            </h5>
                                                        </div>
                                                    </div>
                                                    <!-- end due date -->
                                                </div>
                                                <div class="col-md-4">
                                                    <!-- start due date -->
                                                    <p class="mt-2 mb-1 text-muted font-20">事故地点</p>
                                                    <div class="d-flex align-items-start">
                                                        <i class="mdi mdi-map-marker font-18 text-primary me-1"></i>
                                                        <div class="w-100">
                                                            <h5 class="mt-1 font-20">
                                                                浙江省杭州市西湖区留和路288号
                                                            </h5>
                                                        </div>
                                                    </div>
                                                    <!-- end due date -->
                                                </div>
                                                <div class="col-12 mt-1">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div id="MAP" class=" pt-3 show">
                                                            </div> <!-- end collapse-->
                                                        </div> <!-- end card-body-->
                                                    </div> <!-- end card-->
                                                </div> <!-- end col-->
                                                <!-- end row -->
                                                <div>
                                                    <input class="btn btn-primary text-center" type="submit" value="出车完毕" style="width: 500px; height: 40px; font-size: 20px;float: none;display: block;margin-left: auto;margin-right: auto;">
                                                </div>
                                            </div>
                                    </div>
                                </div>


                            </div>
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>

            </div>
            <!-- end row -->
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
<script type="text/javascript"
        src="https://webapi.amap.com/maps?v=1.4.15&key=b0af08c849bbffa3cab92acc26b93ebc&plugin=AMap.Driving"></script>
<script type="text/javascript">
    var map = new AMap.Map('MAP', {
        resizeEnable: true, //是否监控地图容器尺寸变化
        zoom:13, //初始化地图层级
        center: [120.041549,30.2251] //初始化地图中心点
    });
    var marker = new AMap.Marker({
        position:[120.041549,30.2251]//位置
    })
    map.add(marker);//添加到地图
    AMap.plugin('AMap.Driving', function() {
        var driving = new AMap.Driving({
            // 驾车路线规划策略，AMap.DrivingPolicy.LEAST_TIME是最快捷模式
            map:map,
            policy: AMap.DrivingPolicy.LEAST_TIME
        })

        var startLngLat = [120.041549,30.2251]
        var endLngLat = [120.165838,30.292783]

        driving.search(startLngLat, endLngLat, function (status, result) {
            // 未出错时，result即是对应的路线规划方案
            if (status === 'complete') {
                log.success('绘制驾车路线完成')
            } else {
                log.error('获取驾车数据失败：' + result)
            }
        })
    })

</script>

</body>
</html>

