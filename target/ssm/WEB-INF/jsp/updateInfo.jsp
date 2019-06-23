<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/Info.css" type="text/css">
</head>
<body>
<div style="width: 400px;height: 100px;margin: 300px auto">
    <section>
        <h1 style="text-align: center">修改信息</h1>
        <form action="" name="userForm">
            <input type="hidden" name="eid" value="${info.eid}"/>
            <div class="form-group">
                <input type="text" name="Province" value="${info.province}" placeholder="省份">
            </div>
            <div class="form-group">
                <input type="text" name="City" value="${info.city}" placeholder="城市">
            </div>
            <div class="form-group">
                <input type="text" name="Area" value="${info.area}" placeholder="区域">
            </div>
            <div style="text-align: center">
            <input type="button" value="提交" onclick="updateInfo()"/>
            </div>
        </form>
    </section>
    <script type="text/javascript">
        function updateInfo() {
            var form = document.forms[0];
            form.action = "<%=basePath %>info/updateInfo";
            form.method = "post";
            form.submit();
        }
    </script>
</div>