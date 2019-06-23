<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>Info列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/allInfo.css" type="text/css">
</head>
<body>
<div style="margin:0 auto;width:100%;color:blue;text-align:center;font-size:15px;z-index:9999999;">
    <noscript><div style="padding:5px;background:#ffffa8;">您的浏览器不支持或者您禁止了Javascript脚本，部分功能将不可用！</div></noscript>
    <!--[if lt IE 10]><div style="padding:5px;background:#ffff88;">你的览器版本太旧，请升级浏览器获得更好的体验，推荐使用 Chrome FF Edge 等最新浏览器！</div><![endif]-->
    <!--[if lt IE 8]><div style="padding:5px;background-color:red;color:#fff;">你的浏览器版本太旧了，可能会出现严重的布局错位，脚本错误等问题！求你了，赶紧升级浏览器吧！</div><![endif]-->
</div>
<div class="allInfo">
    <div class="biaoti">
        <div class="logo">
            <h1>ES</h1>
            <h3>快递管理系统</h3>
        </div>
    </div>
    <div class="focus container">
        <div class="banner">
            <div class="swipebox">
                <div id="banner" class="swipe" style="visibility: visible;">
                    <div class="swipe-wrap" style="width: 837px;">
                        <div data-index="0" class="active" style="width: 837px; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
                            <a href="#"><img src="<%=request.getContextPath() %>/pic/nav.jpg"></a>
                        </div>
                    </div>
                    <div class="table-info">
                        <table class="table table-hover table-striped">
                            <thead>
                            <tr>
                                <th>单号</th>
                                <th>名字</th>
                                <th>电话</th>
                                <th>省份</th>
                                <th>城市</th>
                                <th>区域</th>
                                <th>更改</th>
                                <th>删除</th>
                                <th>生成二维码</th>
                                <th>
                                    <a href="<%=appPath%>/info/toAddInfo" class="button small blue">新增</a>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="info" items="${requestScope.get('list')}" varStatus="status">
                                <tr>
                                    <td>${info.eid}</td>
                                    <td>${info.name}</td>
                                    <td>${info.num}</td>
                                    <td>${info.province}</td>
                                    <td>${info.city}</td>
                                    <td>${info.area}</td>
                                    <td>
                                        <a href="<%=appPath%>/info/toUpdateInfo?eid=${info.eid}" style="color:orange">更改</a>
                                    </td>
                                    <td>
                                        <a href="<%=appPath%>/info/del/${info.eid}" style="color:red">删除</a>
                                    </td>
                                    <td>
                                        <a href="<%=appPath%>/info/toQRCode?eid=${info.eid}" style="color:green">生成二维码</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>