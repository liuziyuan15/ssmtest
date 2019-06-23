<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>扫我</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{ position:relative; background-color: #0e0e0e;}
        .box{ width:300px; height:300px; margin: auto; position: absolute; top: 0; left: 0; bottom: 0; right: 0;}
    </style>
</head>
<body>
    <div class="box">
        <img src="http://qr.liantu.com/api.php?text=${info.province}-${info.city}-${info.area}"/>
    </div>
</body>