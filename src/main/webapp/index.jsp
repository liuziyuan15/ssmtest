<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<div class="card">
    <div class="text">
        <h1>
            快递分拣
        </h1>
        <span>
            <a href="${path}/info/allInfo">点击进入管理页面</a>
        </span>
        <!--阶梯-->
        <div class="bg-transparent left"></div>
        <div class="bg-transparent center"></div>
        <div class="bg-transparent right"></div>
    </div>
</div>
</body>
</html>