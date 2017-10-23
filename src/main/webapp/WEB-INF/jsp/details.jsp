<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
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
    <link href="${pageContext.request.contextPath }/images/mycjj/style1.css" rel="stylesheet" type="text/css" />
</head>

<body style="margin: 0;">
    <!-- 1. 顶部海报 -->
    <div style="background-color: #F8F8F8;width: 100%;height: 30px;margin-bottom: 35px;margin-top: 0px">
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 93px">客服热线 : 18408248053</span>
        <img src="https://market.wukonglicai.com/pc/spread/images/phone.png" style="float: right;margin-top: 4px;margin-right: 10px;">
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px">免费注册</span>
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px">登录</span>
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
                    <li><a href="index.html">首页</a></li>
                    <li class="active"><a href="investment.html">我要投资</a></li>
                    <li><a href="bailout.html">我要融资</a></li>
                    <li><a href="BeginnersGuide.html">新手指南</a></li>
                    <li><a href="Aboutus.html">关于我们</a></li>
                    <li><a href="Members.html">我的账户</a></li>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </div>
    </nav>
    <div class="classify">
        <ul>
            <li><a href="investment.html">全部</a></li>
            <li><a href="investment.html">赎楼贷</a></li>
            <li><a href="investment.html">宅急贷</a></li>
            <li><a href="investment.html">房抵贷</a></li>
            <li><a href="investment.html">企易贷</a></li>
        </ul>
    </div>
    <div class="center">
    	<form action="${pageContext.request.contextPath }/userAction_buyGoods" method="post">
    		<div><img src="admin/zwtp_2_gi/images/img01.png" /></div>
	        <h2>产品名称</h2>
	        <p><input name="good.goodName" type="text" value="${good.goodName }" readonly="readonly"></p>
	        <h2>产品介绍</h2>
	        <p><textarea style="width: 300px;" name="good.description">${good.description }</textarea></p>
	        <h2>融资价格</h2>
	        <p><input name="good.price" type="text" value="${good.price }" readonly="readonly"></p>
	        <h2>融资数量</h2>
	        <p><input onclick="subtract()" style="width: 20px;" type="button" value="-"> <input id="num" name="num" type="text" value="0" readonly="readonly"> <input onclick="add()" style="width: 20px;" type="button" value="+">
	        <h2>产品组名</h2>
	        <p><input name="goodGroup.goodGroupName" type="text" value="${goodGroup.goodGroupName }" readonly="readonly"></p>
	        <div><button type="submit">购买</button></div>
    	</form>
    </div>
    <img src="images/mycjj/footer.jpg" style="width: 100%;/*position: absolute*/;top: 2496px;">
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

	<script type="text/javascript">
		function add() {
 			var num = parseInt($("#num").val())+1;
 			 $("#num").val(num); 
		}
		
		function subtract() {
			var num = parseInt($("#num").val())-1;
			if(num<=0) {
				num=0;
			}
			$("#num").val(num);
		}
	</script>
</body>

</html>