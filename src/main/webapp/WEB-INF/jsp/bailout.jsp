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
    <link rel="stylesheet" type="text/css" href="images/mycjj/style1.css">
</head>

<body style="margin: 0;">
    <!-- 1. 顶部海报 -->
    <div style="background-color: #F8F8F8;width: 100%;height: 30px;margin-bottom: 35px;margin-top: 0px">
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 93px">客服热线 : 18408248053</span>
        <img src="https://market.wukonglicai.com/pc/spread/images/phone.png" style="float: right;margin-top: 4px;margin-right: 10px;">
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px" onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openRegister';">免费注册</span>
        <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px" onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openLogin';">登录</span>
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
                    <li><a href="${pageContext.request.contextPath }/homeAction_home">首页</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_showGoods">我要投资</a></li>
                    <li class="active"><a href="javascript:return false;">我要融资</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_openBeginnersGuide">新手指南</a></li>
                    <li><a href="${pageContext.request.contextPath }/homeAction_openAboutUs">关于我们</a></li>
                    <li><a href="members.html">我的账户</a></li>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </div>
    </nav>

    <div>
        <img src="images/mycjj/load.png" width="100%">
    </div>

    <section id="topnav" class="row text-center placeholders" style="position: absolute;top: 388px;left: 234px">
        <div class="col-6 col-sm-3 placeholder">
            <p><a href="financing.html"><img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail"></a></p>
            <h4>赎楼贷</h4>
            <div class="text-muted">还清按揭 助力卖方</div>
        </div>
        <div class="col-6 col-sm-3 placeholder">
            <p><a href="financing.html"><img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail"></a></p>
            <h4>宅急贷</h4>
            <span class="text-muted">房屋置换 未售先贷</span>
        </div>
        <div class="col-6 col-sm-3 placeholder">
            <p><a href="financing.html"><img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail"></a></p>
            <h4>房抵贷</h4>
            <span class="text-muted">房产抵押 贷为急用</span>
        </div>
        <div class="col-6 col-sm-3 placeholder">
            <p><a href="financing.html"><img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail"></a></p>
            <h4>企易贷</h4>
            <span class="text-muted">资金周转 经营无忧</span>
        </div>
    </section>
    <section style="position: absolute;top: 820px;left: 547px">
      <div class="financ">
          <a type="submit" href="${pageContext.request.contextPath }/userAction_openSell">我要融资</a>
       </div>
    </section>
    
    <!--5. 页脚 -->
    <img src="images/mycjj/footer.jpg" style="width: 100%;position: absolute;top: 902px;">
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $('#topnav div').click(function() {
          $(this).addClass("color").siblings().removeClass("color");
        });
      });
    </script>
</body>

</html>