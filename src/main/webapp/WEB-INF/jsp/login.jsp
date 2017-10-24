<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>register</title>
    <style type="text/css">
    body {
        background-color: #eee;
        text-align: center;
    }

    .form {
        padding: 10px;
        font-size: 16px;
        max-width: 330px;
        padding: 100px;
        margin: 0 auto;
    }

    .checkbox {
        margin: 10px;
        font-weight: normal;
    }

    .name,
    .password {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #a1a1a1;
        border-radius: 5px;
    }

    .name {
        margin-bottom: -1px;
    }

    .password {
        margin-bottom: 10px;
    }

    .button {
        width: 165px;
        padding: .7rem 1rem;
        font-size: 1.25rem;
        color: #fff;
        border: 1px solid #007bff;
        border-radius: 5px;
        background-color: #007bff;
    }
    </style>
</head>

<body>
	<div class="register">
        <form class="form" action="${pageContext.request.contextPath }/homeAction_login" method="post">
            <h2 class="h2">登录</h2>
            <h3><span style="display: inline; color:red;font-weight: bold;opacity: ${sequestered==null?0:sequestered};">您的账号已被查封，详细请联系管理员</span></h3>
            <%session.setAttribute("sequestered", 0); %>
            <input name="user.email" type="text" id="name" class="name" placeholder="用户名" required autofocus>  <span style="display: inline; color:red;font-weight: bold;opacity: ${noUser==null?0:noUser};">用户名不存在！</span>
            <%session.setAttribute("noUser", 0); %>
            <input name="user.password" type="password" id="password" class="password" placeholder="密码" required> <span style="display: inline; color:red;font-weight: bold;opacity: ${noPassword==null?0:noPassword};">密码错误！</span>
           <%session.setAttribute("noPassword", 0); %>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button type="submit" class="button">登录</button>
        </form>
    </div>
</body>
</html>