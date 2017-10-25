<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
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
    <link rel="stylesheet" type="text/css" href="images/mykevin/css/basic.css">
</head>
<body style="margin: 0;">
<!-- 1. 顶部海报 -->
<div style="background-color: #F8F8F8;width: 100%;height: 30px;margin-bottom: 35px;margin-top: 0px;margin-bottom: 60px;">
    <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 93px">客服热线 : 18408248053</span>
    <img src="https://market.wukonglicai.com/pc/spread/images/phone.png"
         style="float: right;margin-top: 4px;margin-right: 10px;">
    <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px">免费注册</span>
    <span style="font-size: 12px;float: right;margin-top: 4px;margin-right: 10px">登录</span>
    <img src="http://www.gomemyc.com/global/img/icon1home.png"
         style="font-size: 16px;float: left;margin-top: 7px;margin-left: 60px">
    <span style="font-size: 12px;float: left;margin-top: 4px;margin-left: 3px;color: black">国美金融</span>
    <div style="font-size: 12px;float: left;margin-top: 4px;margin-left: 5px">(市场有风险，投资需谨慎)</div>
</div>
<!-- 2. 首页导航 -->
<div class="header">
    <div class="header_resize">
        <div class="logo">
            <h1><a href="index.html"><img src="images/mycjj/logo.png" style="width: 231px;height: 78px;"></a>
                <small style="color: red;background-color: white">让你的钱聪明起来</small>
            </h1>
        </div>
        <div class="menu_nav">
            <ul>
                <li><a href="${pageContext.request.contextPath }/homeAction_home">首页</a></li>
                <li><a href="${pageContext.request.contextPath }/homeAction_showGoods">我要投资</a></li>
                <li><a href="${pageContext.request.contextPath }/homeAction_openBailout">我要融资</a></li>
                <li><a href="${pageContext.request.contextPath }/homeAction_openBeginnersGuide">新手指南</a></li>
                <li><a href="${pageContext.request.contextPath }/homeAction_openAboutUs">关于我们</a></li>
                <li class="active"><a href="javascript:return false;">我的账户</a></li>
            </ul>
        </div>
        <div class="clr"></div>
    </div>
</div>
<!-- 我的账户内容区域 -->
<article>
    <!-- 左上 -->
    <div id="div_article-bg-left-upper" class="div_article-bg">
        <img class="img_portrait" src="images/members/portrait1.jpg" alt="头像">
        <table class="tab_user_info">
            <tr>
                <td class="firstRow">账&nbsp&nbsp&nbsp&nbsp户:</td>
                <td>${currentuser.userName }</td>
            </tr>
            <tr>
                <td class="firstRow">邮&nbsp&nbsp&nbsp&nbsp箱:</td>
                <td>${currentuser.email }</td>
            </tr>
            <tr>
                <td class="firstRow">手机号:</td>
                <td>${currentuser.phone }</td>
            </tr>
        </table>
    </div>
    <!-- 右 -->
    <div id="div_article-bg-right" class="loadArea">
    </div>
    <!-- 左下 -->
    <div id="div_article-bg-left-under" class="div_article-bg">
        <ul class="account-list">
            <li data-id="fund">我的资产</li>
            <li data-id="setting">账户设置</li>
        </ul>
    </div>
</article>
<!-- 页脚 -->
<div class="footer_box" style="margin-top: 20px;">
<div class="footer_fnav">
<div class="main">
<div class="footer_about left">
<ul>
<li><h2><a target="_blank">关于我们</a></h2><p><a target="_blank">团队介绍</a></p><p><a target="_blank">发展历程</a></p><p><a target="_blank">资质荣誉</a></p><p><a target="_blank">合作机构</a></p></li>
<li><h2><a target="_blank">帮助中心</a></h2><p><a target="_blank">新手指引</a></p><p><a target="_blank">问题答疑</a></p><p><a target="_blank">投资攻略</a></p><p><a target="_blank">意见反馈</a></p></li>
<li><h2><a target="_blank">信息中心</a></h2><p><a target="_blank">平台公告</a></p><p><a target="_blank">媒体报道</a></p><p><a target="_blank">理财点滴</a></p><p><a target="_blank">社 区</a></p></li>
<li><h2>产品体系</h2><p><a target="_blank">VIP特权</a></p><p><a target="_blank">积品汇</a></p><p><a>抽奖</a></p></li>
</ul>
</div>
<div class="footer_contact left">
<h2>网贷有风险    投资需谨慎</h2>
<h3><span><i class="AllIcon"></i>18408248053</span></h3>
<p>周一至周五9:00 - 18:30</p>
<p class="gray">官方QQ群：729165621</p>
<div class="con_pic">
<ul>
<li class="fb01"><a><i class="AllIcon icon01"></i></a>
<ul class="weix_box"><b></b><li><img src="images/mykevin/images/khd.png" width="100"><h4>关注服务号</h4></li><li><img src="images/mykevin/images/wx.png" width="100"><h4>关注订阅号</h4></li><li><img src="images/mykevin/images/xl.png" width="100"><h4>微信客服-小侯</h4></li></ul>
</li>
<li class="fb02"><a title="在线咨询" target="_blank"><i class="AllIcon icon02"></i></a>
<ul class="weix_box qq_box">
<li><b></b><img src="images/mykevin/images/qq.png" width="120"><h4>QQ号：729165621</h4></li>
</ul></li>
<li class="fb03"><a title="微博"><i class="AllIcon icon03"></i></a></li>
</ul>
</div>
</div>
<div class="footer_app right">
  <img src="images/mykevin/images/khd.png" width="122" class="bimg"><h2>下载手机客户端<i class="AllIcon icon01"></i> <i class="AllIcon icon02"></i></h2> </div>
<div class="black10"></div>
</div>
</div><!--end-->
<div class="clear"></div>
<div class="footer_pic">
<ul>
<li><a target="_blank" title="深圳市市场监督管理局企业主体身份公示"><i class="icon01"></i></a></li>
<li><a target="_blank" title="理财精灵是中国采用VeriSign 256位SSL加密的融资理财平台。您的隐私及个人资料安全已受最高级别的保护。"><i class="icon03"></i></a></li>
<li><a target="_blank" title="中国信用企业"><i class="icon02"></i></a></li>
<li><a target="_blank" title="诚信网站"><i class="icon04"></i></a></li>
<li><a title="腾讯云安全认证"><i class="icon05"></i></a></li>
<li><a target="_blank" title="安全联盟认证网站"><i class="icon06"></i></a></li>
</ul>
</div>
<div class="clear"></div>
<div class="footer_font main"><p> <a target="_blank">隐私保护申明</a> 　|　 <a target="_blank">服务协议</a>　 |　 贵ICP备66666666号</p>Copyright Xinrong.com All Rights Reserved   理财精灵投资管理有限公司</div>

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