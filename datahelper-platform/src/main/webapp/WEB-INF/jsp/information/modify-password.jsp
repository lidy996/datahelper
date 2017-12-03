<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>数据助手DataHelper——一个专业的数据统计系统</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="icon" href="favicon.ico">
    <%@include file="/WEB-INF/jsp/common/dh_css.jsp"%>
    <%@include file="/WEB-INF/jsp/common/dh_js.jsp"%>
	<%--<c:set var="menuFlag" value="modifyPassword">--%>
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<%@include file="/WEB-INF/jsp/common/dh_header.jsp"%>
		<%@include file="/WEB-INF/jsp/common/dh_left.jsp"%>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab-content clildFrame">
				<div class="layui-tab-item layui-show">
					修改密码
				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/jsp/common/dh_foot.jsp"%>
	</div>
</body>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</html>
