<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>产品详情</title>
    <link href="admin/zwtp_2_gi/css/style.css" rel="stylesheet" type="text/css" />
    <link href="admin/zwtp_2_gi/css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="admin/zwtp_2_gi/js/jquery.js"></script>
    <script type="text/javascript" src="admin/zwtp_2_gi/js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="admin/zwtp_2_gi/js/select-ui.min.js"></script>
    <script type="text/javascript" src="admin/zwtp_2_gi/editor/kindeditor.js"></script>

    <script type="text/javascript">
        KE.show({
            id : 'content7',
            cssPath : './index.css'
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            $(".select1").uedSelect({
                width : 345
            });
            $(".select2").uedSelect({
                width : 167
            });
            $(".select3").uedSelect({
                width : 100
            });
        });
    </script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="">用户列表</a></li>
        <li><a href="">用户详情</a></li>
    </ul>
</div>
<div class="formbody">
    <div id="usual1" class="usual">
        <form action="${pageContext.request.contextPath }/adminAction_updateModifyGood">
        <div id="tab1" class="tabson">
            <ul class="forminfo">
                <li><label>产品编号<b>*</b></label><input name="uesrId" type="text" class="dfinput" placeholder="请填写产品编号" value="${good.goodId}" style="width:518px;"/></li>
                <li><label>产品名<b>*</b></label><input name="username" type="text" class="dfinput" placeholder="请填写产品名" value="${good.goodName}" style="width:518px;"/></li>
                <li><label>产品类型<b>*</b></label>
                    <div class="vocation">
                        <select class="select1" name="userStatus">
                            <option value="1" <c:if test="${userStatus==1}">selected</c:if>>赎楼贷</option>
                            <option value="2" <c:if test="${userStatus==2}">selected</c:if>>宅级贷</option>
                            <option value="3" <c:if test="${userStatus==3}">selected</c:if>>房抵贷</option>
                            <option value="4" <c:if test="${userStatus==4}">selected</c:if>>企易贷</option>
                        </select>
                    </div>
                </li>
                <li><label>价格<b>*</b></label><input name="email" type="text" class="dfinput"  style="width:518px;" value="${good.price}"/></li>
                <li><label>数量<b>*</b></label><input name="tel" type="tel" class="dfinput"  style="width:518px;" value="${good.goodNum}"/></li>
                                <li><label>状态<b>*</b></label>
                    <div class="vocation">
                        <select class="select1" name="userStatus1">
                            <option value="0" <c:if test="${userStatus1==0}">selected</c:if>>审核</option>
                            <option value="1" <c:if test="${userStatus1==1}">selected</c:if>>未审核</option>
                        </select>
                    </div>
                </li>
                <li><label>产品描述<b>*</b></label>
                    <textarea id="content7" name="description" style="width:700px;height:250px;visibility:hidden;">${good.description}</textarea>
                </li>
                <li><label>&nbsp;</label><input type="submit" class="btn" value="保存"/></li>
            </ul>
        </div>
        </form>
    </div>
    <script type="text/javascript">
        $("#usual1 ul").idTabs();
    </script>
    <script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</div>
</body>
</html>