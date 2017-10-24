<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<body style="margin: 0;">
<div id="div_article-bg-right" class="div_content">
    <h3>账户设置</h3>
    <hr>
    <form action="${pageContext.request.contextPath }/userAction_midifyMy" method="post">
        <table class="info_list">
            <tr>
                <td colspan="2" style="height: 45px;color: red"></td>
            </tr>
            <input type="hidden" name="user.uesrId" value="${currentuser.uesrId }">
            <tr>
                <td><label for="userName">用户名</label></td>
                <td><input id="userName" name="user.userName" type="text" class="inputs" value="${currentuser.userName }"></td>
            </tr>
            <tr>
                <td><label for="phone">手机号</label></td>
                <td><input id="phone" name="user.phone" type="text" class="inputs" value="${currentuser.phone }"></td>
            </tr>
            <tr>
                <td><label for="eMail">电子邮箱</label></td>
                <td><input id="eMail" name="user.email" type="email" class="inputs" value="${currentuser.email }"></td>
            </tr>
            <tr>
                <td><label for="password">登录密码</label></td>
                <td><input id="password" name="user.password" type="text" class="inputs" value="${currentuser.password }"></td>
            </tr>
            <tr>
                <td><input type="reset" class="btn" value="取消"></td>
                <td><input type="submit" class="btn"  value="保存"></td>
            </tr>
        </table>
    </form>
</div>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
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