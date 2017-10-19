<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${userList}" var="user">
		<form action="${pageContext.request.contextPath }/adminAction_deleteUser" method="post">
			用户id:<input type="text" name="user.uesrId" value="${user.uesrId}">  <br>
			用户名称:<input type="text" name="user.userName" value="${user.userName}"> <br>
			用户信誉:<input type="text" name="user.creditworthiness" value="${user.creditworthiness}"> <br>
			用户email:<input type="text" name="user.email" value="${user.email}"> <br>
			用户密码:<input type="text" name="user.password" value="${user.password}"> <br>
			用户电话:<input type="text" name="user.phone" value="${user.phone}"> <br>
			用户状态:<input type="text" name="user.status" value="${user.status}">  <br><br><br> 
			
			<input type="submit" value="删除">
		</form>
	</c:forEach>
</body>
</html>