<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery.js"></script>
    <script type="text/javascript">
    $(function() {
        //导航切换
        $(".menuson li").click(function() {
            $(".menuson li.active").removeClass("active")
            $(this).addClass("active");
        });

        $('.title').click(function() {
            var $ul = $(this).next('ul');
            $('dd').find('ul').slideUp();
            if ($ul.is(':visible')) {
                $(this).next('ul').slideUp();
            } else {
                $(this).next('ul').slideDown();
            }
        });
    })
    </script>
</head>

<body style="background:#f0f9fd;">
    <div class="lefttop"><span></span>管理权限</div>
    <dl class="leftmenu">
        <dd>
            <div class="title">
                <span><img src="images/leftico01.png" /></span>用户管理
            </div>
            <ul class="menuson">
                <li>
                    <cite></cite><a href="<%=request.getContextPath() %>/adminAction_getAllUser" target="rightFrame">用户列表</a><i></i></li>
        </dd>
        <dd>
            <div class="title">
                <span><img src="images/leftico02.png" /></span>产品管理
            </div>
            <ul class="menuson">
                <li>
                    <cite></cite><a href="<%=request.getContextPath() %>/adminAction_getAllGood" target="rightFrame">产品审批</a><i></i>
        </dd>
    </dl>
</body>

</html>