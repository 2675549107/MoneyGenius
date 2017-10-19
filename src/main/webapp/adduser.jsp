<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="homeAction_register" method="post">
		用户名称：<input name="user.userName">   <br>
		用户状态：<input name="user.status">  <br>
		用户电话：<input name="user.phone">  <br>
		用户信誉度：<input name="user.creditworthiness">  <br>
		用户密码：<input name="user.password">  <br>
		用户邮箱：<input name="user.email">  <br>
		用户Id:<input name="userGroup.userGroupId">
		
		<input type="submit" value="提交">  &nbsp;&nbsp;
		<input type="reset" value="重置">  <br>
	</form>
</body>
</html>