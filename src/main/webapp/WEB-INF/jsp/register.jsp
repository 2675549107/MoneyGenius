<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>enroll</title>
    <style type="text/css">
    body {
        background-color: #eee;
        text-align: center;
    }

    .password,
    .phone,
    .name,
    .repeatPassword,
    .email,
    .profession {
        width: 300px;
        margin: 5px;
        padding: 10px 0;
    }

    .button {
        width: 100px;
        margin-top: 30px;
        padding: .7rem 1rem;
        color: #fff;
        border: 1px solid #007bff;
        border-radius: 5px;
        background-color: #007bff;
    }
    </style>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="images/mycjj/style.css" />
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="images/mycjj/style1.css">
    <link rel="stylesheet" type="text/css" href="images/mykevin/css/basic.css">
</head>

<body>
    <!-- 1. 顶部海报 -->
    <div style="background-color: #F8F8F8;width: 100%;height: 30px;margin-bottom: 35px;margin-top: 0px;margin-bottom: 60px;">
    <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 93px">客服热线 : 18408248053</span>
    <img src="https://market.wukonglicai.com/pc/spread/images/phone.png" style="float: right;margin-top: 4px;margin-right: 10px;">
        <span style="cursor: pointer;font-size: 12px;float: right;margin-top: 4px;margin-right: 10px" onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openRegister';">免费注册</span>
        <span style="cursor: pointer;font-size: 12px;float: right;margin-top: 4px;margin-right: 10px" onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openLogin';">登录</span>
        <img src="http://www.gomemyc.com/global/img/icon1home.png" style="font-size: 16px;float: left;margin-top: 7px;margin-left: 60px">
        <span style="font-size: 12px;float: left;margin-top: 4px;margin-left: 3px;color: black">国美金融</span>
        <div style="font-size: 12px;float: left;margin-top: 4px;margin-left: 5px">(市场有风险，投资需谨慎)</div>
    </div>
    <!-- 2. 首页导航 -->
    <div class="header">
        <div class="header_resize">
            <div class="logo">
                <h1><a href="index.html"><img src="images/mycjj/logo.png" style="width: 231px;height: 78px;"></a> <small style="color: red;background-color: white">让你的钱聪明起来</small></h1></div>
            <div class="menu_nav">
                <ul>
                    <li class="active"><a href="${pageContext.request.contextPath }/homeAction_home">首页</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_showGoods">我要投资</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_openBailout">我要融资</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_openBeginnersGuide">新手指南</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_openAboutUs">关于我们</a></li>
                    <li><a href="${pageContext.request.contextPath }/userAction_openMembers">我的账户</a></li>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </div>
 	<div style="margin-left: 127px;width: 400px;min-width: 400px;border-width: 2px;border-color: red">
        <header class="head">
            <h4>用户注册</h4>
        </header>
        <form name="form" onsubmit="return validate()" action="${pageContext.request.contextPath }/homeAction_register" method="post">
            <div>
                用户名称：
                <input type="text" class="name" name="user.userName" id="name" placeholder="请输入您的用户名！" required="" pattern="[a-z]{6-20}">
                <br>
            </div>
            <div>
                电子邮箱：
                <input type="email" class="email" name="user.email" placeholder="请输入您的邮箱！" required="" >
                <br>
            </div>
            <div>
                电&emsp;&emsp;话：
                <input type="tel" class="phone" name="user.phone" placeholder="请输入您的电话！" required="" pattern="[0-9]{11}">
                <br>
            </div>
            <div>
                登录密码：
                <input type="password" class="password" name="user.password" id="password" placeholder="请输入您的密码！" required="" pattern="[0-9]{6,20}">
                <br>
            </div>
            <div>
                重复密码：
                <input type="password" class="repeatPassword" id="repeatPassword" placeholder="请重新输入您的密码！" required="" pattern="[0-9]{6,20}">
                <br>
            </div>
            <div>
                用&emsp;户&emsp;组：
                <select class="profession" name="userGroup.userGroupId">
                    <option selected="selected">----请选择----</option>
                    <c:forEach items="${userGroupList }" var="ug">
                    	<option value="${ug.userGroupId }">${ug.userGroupName }</option>
                    </c:forEach>
                </select>
                <br>
            </div>
            <button type="submit" class="button">注册</button>
            <button type="reset" class="button">重置</button>
        </form>
    </div>
    <div>
        <img src="images/mycjj/login.png" style="position: absolute;top: 177px;left: 572px;width: 586px;height: 393px;">
    </div>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    <script src="images/mycjj/move.js" type="text/javascript"></script>
    <script src="images/mycjj/index.js" type="text/javascript"></script>
    <script>
    var oLoad = getByClass(document.body, 'pxs_loading')[0];
    var oImgBox = getByClass(document.body, 'pxs_slider_wrapper')[0];
    //var oEvent=ev||event;
    //var obj=oEvent.srcElement||oEvent.target;
    var imgs = document.getElementsByTagName('img');
    for (var i = 0; i < imgs.length; i++) {
        imgs[i].onload = function() {
            oLoad.style.display = 'none';
        }
        oImgBox.style.display = 'block';
    }
    </script>
</body>

</html>