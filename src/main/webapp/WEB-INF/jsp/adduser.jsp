<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="userAction_addUser" method="post">
		用户名称：<input name="userModel.name">   <br>
		用户年龄：<input name="userModel.age">  <br>
		
		<input type="submit" value="提交">  &nbsp;&nbsp;
		<input type="reset" value="重置">  <br>
	</form>
</body>
</html>