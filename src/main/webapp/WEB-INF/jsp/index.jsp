<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">

<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Document</title>
<link rel="stylesheet" type="text/css" href="images/mycjj/style.css" />
<script src="images/mycjj/move.js" type="text/javascript"></script>
<script src="images/mycjj/index.js" type="text/javascript"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
    href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
    integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
    crossorigin="anonymous">
<!-- BOOTSTRAP STYLES-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
    rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="images/mycjj/style1.css">
<link rel="stylesheet" type="text/css" href="images/mykevin/css/basic.css">
</head>

<body style="margin: 0;">
    <!-- 1. 顶部海报 -->
    <div
        style="background-color: #F8F8F8; width: 100%; height: 30px; margin-bottom: 35px; margin-top: 0px;margin-bottom: 60px;">
        <span
            style="font-size: 12px; float: right; margin-top: 4px; margin-right: 93px">客服热线
            : 18408248053</span> <img
            src="https://market.wukonglicai.com/pc/spread/images/phone.png"
            style="float: right; margin-top: 4px; margin-right: 10px;">
        <span
            style="cursor: pointer;font-size: 12px; float: right; margin-top: 4px; margin-right: 10px"
            onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openRegister';">免费注册</span>
        <span
            style="cursor: pointer; font-size: 12px; float: right; margin-top: 4px; margin-right: 10px"
            onclick="javascript:window.location.href='${pageContext.request.contextPath }/homeAction_openLogin';">登录</span>
        <img src="http://www.gomemyc.com/global/img/icon1home.png"
            style="font-size: 16px; float: left; margin-top: 7px; margin-left: 60px">
        <span
            style="font-size: 12px; float: left; margin-top: 4px; margin-left: 3px; color: black">国美金融</span>
        <div
            style="font-size: 12px; float: left; margin-top: 4px; margin-left: 5px">(市场有风险，投资需谨慎)</div>
    </div>
    <!-- 2. 首页导航 -->
    <div class="header">
        <div class="header_resize">
            <div class="logo">
                <h1>
                    <a href="index.html"><img
                        src="images/mycjj/logo.png"
                        style="width: 231px; height: 78px;"></a> <small
                        style="color: red; background-color: white">让你的钱聪明起来</small>
                </h1>
            </div>
            <div class="menu_nav">
                <ul>
                    <li class="active"><a
                        href="javascript:return false;">首页</a></li>
                    <li><a
                        href="${pageContext.request.contextPath }/homeAction_showGoods">我要投资</a></li>
                    <li><a
                        href="${pageContext.request.contextPath }/homeAction_openBailout">我要融资</a></li>
                    <li><a
                        href="${pageContext.request.contextPath }/homeAction_openBeginnersGuide">新手指南</a></li>
                    <li><a
                        href="${pageContext.request.contextPath }/homeAction_openAboutUs">关于我们</a></li>
                    <li><a href="${pageContext.request.contextPath }/userAction_openMembers">我的账户</a></li>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </div>
    <!--3. 图片轮播 -->
    <div id="pxs_container" class="pxs_container"
        style="border-width: 0px">
        <div class="pxs_bg">
            <div class="pxs_bg1"></div>
            <div class="pxs_bg2"></div>
            <div class="pxs_bg3"></div>
        </div>
        <div class="pxs_loading">Loading images...</div>
        <div class="pxs_slider_wrapper">
            <ul class="pxs_slider">
                <li><img src="images/mycjj/1.jpg" alt="First Image" /></li>
                <li><img src="images/mycjj/2.jpg"
                    alt="Second Image" /></li>
                <li><img src="images/mycjj/3.jpg" alt="Third Image" /></li>
                <li><img src="images/mycjj/4.jpg" alt="Forth Image" /></li>
                <li><img src="images/mycjj/5.jpg" alt="Fifth Image" /></li>
                <li><img src="images/mycjj/6.jpg" alt="Sixth Image" /></li>
            </ul>
            <div class="pxs_navigation">
                <span class="pxs_next"></span> <span class="pxs_prev"></span>
            </div>
            <ul class="pxs_thumbnails">
                <li><img src="images/mycjj/thumbs/1.jpg"
                    alt="First Image" /></li>
                <li><img src="images/mycjj/thumbs/2.jpg"
                    alt="Second Image" /></li>
                <li><img src="images/mycjj/thumbs/3.jpg"
                    alt="Third Image" /></li>
                <li><img src="images/mycjj/thumbs/4.jpg"
                    alt="Forth Image" /></li>
                <li><img src="images/mycjj/thumbs/5.jpg"
                    alt="Fifth Image" /></li>
                <li><img src="images/mycjj/thumbs/6.jpg"
                    alt="Sixth Image" /></li>
            </ul>
        </div>
    </div>
    <!--4. 投资推荐 -->
    <div id="wrapper">
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner" style="padding: 0">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin Dashboard</h2>
                        <h5>Welcome Jhon Deo , Love to see you
                            back.</h5>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="panel panel-back noti-box">
                            <span class="icon-box bg-color-red set-icon">
                                <i class="fa fa-envelope-o"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">成交量</p>
                                <p class="text-muted">97,659万元</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="panel panel-back noti-box">
                            <span
                                class="icon-box bg-color-green set-icon">
                                <i class="fa fa-bars"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">用户收益</p>
                                <p class="text-muted">5,212万元</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="panel panel-back noti-box">
                            <span
                                class="icon-box bg-color-blue set-icon">
                                <i class="fa fa-bell-o"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">交易频率</p>
                                <p class="text-muted">每分2单</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="panel panel-back noti-box">
                            <span
                                class="icon-box bg-color-brown set-icon">
                                <i class="fa fa-rocket"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">注册人数</p>
                                <p class="text-muted">500万</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="panel panel-back noti-box">
                            <span class="icon-box bg-color-blue">
                                <i class="fa fa-warning"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">多风险控制 多层审核机制</p>
                                <p class="text-muted">电子存证 合同数据保全</p>
                                <p class="text-muted">信息安全 系统安全监测</p>
                                <hr />
                                <p class="text-muted">
                                    <span
                                        class="text-muted color-bottom-txt"><i
                                        class="fa fa-edit"></i> 同样的金额
                                        不同的增值 让你的钱聪明起来 </span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel back-dash">
                            <i class="fa fa-dashboard fa-3x"></i><strong>
                                &nbsp; 精灵议事</strong>
                            <p class="text-muted" style="color: black">
                                <strong> &nbsp; 10月19日 星期四 阴<br></strong>
                                <b>聚焦19大</b><br> 一、中国特色社会主义进入了新时代<br>
                                二、我国社会主要矛盾已经转化<br>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12 ">
                        <div class="panel ">
                            <div class="main-temp-back">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <i class="fa fa-cloud fa-3x"></i>
                                            遵义
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="text-temp">
                                                20°</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-back noti-box">
                            <span
                                class="icon-box bg-color-green set-icon">
                                <i class="fa fa-desktop"></i>
                            </span>
                            <div class="text-box">
                                <p class="main-text">Display</p>
                                <p class="text-muted">Looking Good</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">年度收益</div>
                            <div class="panel-body"
                                style="width: 100%; height: 385px">
                                <canvas id="userCreateChartCanvas"
                                    height="100px"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div
                            class="panel panel-primary text-center no-boder bg-color-green">
                            <div class="panel-body">
                                <i class="fa fa-bar-chart-o fa-5x"></i>
                                <h3>我要投资</h3>
                            </div>
                            <div class="panel-footer back-footer-green">
                                海量标的，任由你选择！</div>
                        </div>
                        <div
                            class="panel panel-primary text-center no-boder bg-color-red">
                            <div class="panel-body">
                                <i class="fa fa-edit fa-5x"></i>
                                <h3>我要融资</h3>
                            </div>
                            <div class="panel-footer back-footer-red">
                                诚信服务，完美融资</div>
                        </div>
                    </div>
                </div>
                <div class="copyrights">
                    Collect from <a href="http://www.cssmoban.com/"
                        title="网站模板">网站模板</a>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div
                            class="panel panel-primary text-center no-boder bg-color-green">
                            <div class="panel-body">
                                <i class="fa fa-comments-o fa-5x"></i>
                                <h4>2万个财富专家</h4>
                                <h4>1对1的全新服务</h4>
                            </div>
                            <div class="panel-footer back-footer-green">
                                <i class="fa fa-rocket fa-5x"></i>
                                让你的财富，稳步增值
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">累计周投资排行榜</div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table
                                        class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>投资排行</th>
                                                <th>投资人</th>
                                                <th>投资金额</th>
                                                <th>投资时间</th>
                                                <th>投资方式</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                                <td>100090</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                                <td>100090</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                                <td>100090</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                                <td>100090</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                                <td>100090</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                                <td>100090</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div
                            class="chat-panel panel panel-default chat-boder chat-panel-head">
                            <div class="panel-heading">
                                <i class="fa fa-comments fa-fw"></i>
                                投资A计划
                                <div class="btn-group pull-right">
                                    <button type="button"
                                        class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown">
                                        <i class="fa fa-chevron-down"></i>
                                    </button>
                                    <ul class="dropdown-menu slidedown">
                                        <li><a href="#"> <i
                                                class="fa fa-refresh fa-fw"></i>Refresh
                                        </a></li>
                                        <li><a href="#"> <i
                                                class="fa fa-check-circle fa-fw"></i>Available
                                        </a></li>
                                        <li><a href="#"> <i
                                                class="fa fa-times fa-fw"></i>Busy
                                        </a></li>
                                        <li><a href="#"> <i
                                                class="fa fa-clock-o fa-fw"></i>Away
                                        </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#"> <i
                                                class="fa fa-sign-out fa-fw"></i>Sign
                                                Out
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="panel-body">
                                <ul class="chat-box">
                                    <li class="left clearfix"><span
                                        class="chat-img pull-left">
                                            <img src="assets/img/1.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body">
                                            <strong>Jack
                                                Sparrow</strong> <small
                                                class="pull-right text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>12
                                                mins ago
                                            </small>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                    <li class="right clearfix"><span
                                        class="chat-img pull-right">

                                            <img src="assets/img/2.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body clearfix">
                                            <small class=" text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>13
                                                mins ago
                                            </small> <strong class="pull-right">Jhonson
                                                Deed</strong>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                    <li class="left clearfix"><span
                                        class="chat-img pull-left">
                                            <img src="assets/img/3.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body clearfix">
                                            <strong>Jack
                                                Sparrow</strong> <small
                                                class="pull-right text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>14
                                                mins ago
                                            </small>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                    <li class="right clearfix"><span
                                        class="chat-img pull-right">
                                            <img src="assets/img/4.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body clearfix">
                                            <small class=" text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>15
                                                mins ago
                                            </small> <strong class="pull-right">Jhonson
                                                Deed</strong>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                    <li class="left clearfix"><span
                                        class="chat-img pull-left">
                                            <img src="assets/img/1.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body">
                                            <strong>Jack
                                                Sparrow</strong> <small
                                                class="pull-right text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>12
                                                mins ago
                                            </small>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                    <li class="right clearfix"><span
                                        class="chat-img pull-right">
                                            <img src="assets/img/2.png"
                                            alt="User"
                                            class="img-circle" />
                                    </span>
                                        <div class="chat-body clearfix">
                                            <small class=" text-muted">
                                                <i
                                                class="fa fa-clock-o fa-fw"></i>13
                                                mins ago
                                            </small> <strong class="pull-right">Jhonson
                                                Deed</strong>
                                            <p>Lorem ipsum dolor sit
                                                amet, consectetur
                                                adipiscing elit.
                                                Curabitur bibendum
                                                ornare dolor, quis
                                                ullamcorper ligula
                                                sodales.</p>
                                        </div></li>
                                </ul>
                            </div>
                            <div class="panel-footer">
                                <div class="input-group">
                                    <input id="btn-input" type="text"
                                        class="form-control input-sm"
                                        placeholder="建议留言" /> <span
                                        class="input-group-btn">
                                        <button
                                            class="btn btn-warning btn-sm"
                                            id="btn-chat">Send
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">投资陷阱提示</div>
                            <div class="panel-body">
                                <span class="label label-default">Default</span>
                                <span class="label label-primary">Primary</span>
                                <span class="label label-success">Success</span>
                                <span class="label label-info">Info</span>
                                <span class="label label-warning">Warning</span>
                                <span class="label label-danger">Danger</span>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">融资方式</div>
                            <div style="width: 60%; height: 413px;">
                                <canvas id="userGenderChartCanvas"
                                    style="margin-left: 117px; margin-top: -20px"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>

     <!--5. 页脚 -->
       <!--footer--> 
<div class="footer_box" style="margin-top: 641px;">
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
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
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
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>  
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/Chart.js/2.6.0/Chart.js"></script>
    <script type="text/javascript">
					// 用户性别统计参数（饼状图）
					var userGenderChartConfig = {
						type : 'pie',
						data : {
							datasets : [ {
								data : [ 6, 4, 5 ],
								backgroundColor : [ "#FF6384", "yellow",
										"#36A2EB" ]
							} ]
						},
						options : {
							title : {
								display : true,
							},
							responsive : true
						}
					};

					// 用户创建日期统计参数（折线图）
					var userCreateChartConfig = {
						type : 'line',
						data : {
							labels : [ "2011", "2012", "2013", "2014", "2015",
									"2016", "2017" ],
							datasets : [ {
								fill : false,
								data : [ 2, 5, 7, 6, 4, 6, 8 ]
							} ]
						},
						options : {
							title : {
								display : false,
							},
							responsive : true
						}
					};

					$(function() {
						// 生成用户性别统计图
						var userGenderChartCtx = document.getElementById(
								"userGenderChartCanvas").getContext("2d");
						var userGenderChartCanvas = new Chart(
								userGenderChartCtx, userGenderChartConfig);

						// 生成用户创建日期统计图            
						var userCreateChartCtx = document.getElementById(
								"userCreateChartCanvas").getContext("2d");
						var userCreateChartCanvas = new Chart(
								userCreateChartCtx, userCreateChartConfig);
					});
				</script>
</body>

</html>