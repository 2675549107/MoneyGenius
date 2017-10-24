<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户详情</title>
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
        <div class="itab">
            <ul>
                <li><a href="" class="selected">用户详情</a></li>
                <li><a href="">自定义</a></li>
            </ul>
        </div>
        <form action="${pageContext.request.contextPath }/adminAction_updateModifyUser">
        <div id="tab1" class="tabson">
            <ul class="forminfo">
                 <li><label>编号<b>*</b></label><input name=uesrId type="text" class="dfinput" placeholder="请填写用户姓名" value="${user.uesrId}" style="width:518px;"/></li>
                <li><label>姓名<b>*</b></label><input name="username" type="text" class="dfinput" placeholder="请填写用户姓名" value="${user.userName}" style="width:518px;"/></li>
                <li><label>信誉度<b>*</b></label>
                    <div class="vocation">
                        <select class="select1" name="userStatus">
                            <option value="0" <c:if test="${userStatus==0}">selected</c:if>>极好</option>
                            <option value="1" <c:if test="${userStatus==1}">selected</c:if>>良好</option>
                            <option value="2" <c:if test="${userStatus==2}">selected</c:if>>差</option>
                            <option value="3" <c:if test="${userStatus==3}">selected</c:if>>极差</option>
                        </select>
                    </div>
                </li>
                <li><label>邮箱<b>*</b></label><input name="email" type="email" class="dfinput"  style="width:518px;" value="${user.email}"/></li>
                <li><label>电话<b>*</b></label><input name="tel" type="tel" class="dfinput"  style="width:518px;" value="${user.phone}"/></li>
                                <li><label>状态<b>*</b></label>
                    <div class="vocation">
                        <select class="select1" name="userStatus1">
                            <option value="0" <c:if test="${userStatus1==0}">selected</c:if>>可用</option>
                            <option value="1" <c:if test="${userStatus1==1}">selected</c:if>>已查封</option>
                        </select>
                    </div>
                </li>
                <li><label>备注<b>*</b></label>
                    <textarea id="content7" name="content" style="width:700px;height:250px;visibility:hidden;"></textarea>
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