<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>理财精灵——我的账户</title>
    <link rel="icon" href="images/title/smallLogo.png" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="images/mycjj/style.css"/>
    <link type="text/css" rel="stylesheet" href="css/members.css">
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet"/>
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="images/mycjj/style1.css">
</head>
<body style="margin: 0;" >
<!-- 刷新内容区域 -->
<div id="div_article-bg-right" class="div_content">

    <table id="idData" class="tab_account-detail-list" style="margin-top: 50px">
        <tr>
            <th>来自</th>
            <th>金额</th>
            <th class="textLeftColumn">项目</th>
        </tr>
        <c:forEach items="${goods }" var="good" varStatus="status">
        	<tr>
            	<td>${currentuser.userName }</td>
            	<td>¥${uags.get(status.index).totalMoney }</td>
            	<td class="textLeftColumn">${good.goodName }</td>
        	</tr>
        </c:forEach>
    </table>

    <table class="tab_btn_list">
        <tr>
            <td colspan="3">
                <button class="btn">首页</button>
                <button class="btn">上一下</button>
                <span class="btn" style="background: #dddddd; color: orangered">1</span>
                <button class="btn">下一页</button>
                <button class="btn">尾页</button>
            </td>
        </tr>
    </table>
</div>
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js"
        integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
        integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/members.js"></script>
</body>
</html>