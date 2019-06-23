<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>新增页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/Info.css" type="text/css">
</head>
<body>
<div style="width: 400px;height: 100px;margin: 300px auto">
    <section>
        <h1 style="text-align: center">填写信息</h1>
        <form action="" name="userForm">
            <div class="form-group">
                <input type="text" name="Name" placeholder="姓名">
            </div>
            <div class="form-group">
                <input type="text" name="Num" placeholder="联系电话">
            </div>
            <div class="form-group">
                <input type="text" name="Province" placeholder="省份">
            </div>
            <div class="form-group">
                <input type="text" name="City" placeholder="城市">
            </div>
            <div class="form-group">
                <input type="text" name="Area" placeholder="区域">
            </div>
            <div style="text-align: center">
            <input type="button" value="添加" onclick="addInfo()">
            </div>
        </form>
    </section>
</div>

<div class="container">
    <script type="text/javascript">
        function addInfo() {
            var form = document.forms[0];
            form.action = "<%=basePath %>info/addInfo";
            form.method = "post";
            form.submit();
        }
    </script>
</div>