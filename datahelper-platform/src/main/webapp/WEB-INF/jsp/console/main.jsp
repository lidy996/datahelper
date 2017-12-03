<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>首页--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
    <%@include file="/WEB-INF/jsp/common/dh_css.jsp"%>
    <%@include file="/WEB-INF/jsp/common/dh_js.jsp"%>
</head>
<body class="childrenBody">
	<div class="panel_box row">
		<div class="panel col">
			<a href="javascript:;" data-url="page/message/message.html">
				<div class="panel_icon">
					<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
				</div>
				<div class="panel_word newMessage">
					<span></span>
					<cite>新消息</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="page/user/allUsers.html">
				<div class="panel_icon" style="background-color:#FF5722;">
					<i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>新增人数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="page/user/allUsers.html">
				<div class="panel_icon" style="background-color:#009688;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>用户总数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="page/img/images.html">
				<div class="panel_icon" style="background-color:#5FB878;">
					<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
				</div>
				<div class="panel_word imgAll">
					<span></span>
					<cite>图片总数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="page/news/newsList.html">
				<div class="panel_icon" style="background-color:#F7B824;">
					<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
				</div>
				<div class="panel_word waitNews">
					<span></span>
					<cite>待审核</cite>
				</div>
			</a>
		</div>
		<div class="panel col max_panel">
			<a href="javascript:;" data-url="page/news/newsList.html">
				<div class="panel_icon" style="background-color:#2F4056;">
					<i class="iconfont icon-text" data-icon="icon-text"></i>
				</div>
				<div class="panel_word allNews">
					<span></span>
					<em>总数</em>
					<cite>列表</cite>
				</div>
			</a>
		</div>
	</div>
	<div class="row">
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">更新日志</blockquote>
			<div class="layui-elem-quote layui-quote-nm">
				<img src="${pageContext.request.contextPath}resources/images/张国荣.jpeg">
			</div>
		</div>
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
			<table class="layui-table">
				<colgroup>
					<col width="150">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<td>当前版本</td>
						<td class="version"></td>
					</tr>
					<tr>
						<td>开发作者</td>
						<td class="author"></td>
					</tr>
					<tr>
						<td>网站首页</td>
						<td class="homePage"></td>
					</tr>
					<tr>
						<td>服务器环境</td>
						<td class="server"></td>
					</tr>
					<tr>
						<td>数据库版本</td>
						<td class="dataBase"></td>
					</tr>
					<tr>
						<td>最大上传限制</td>
						<td class="maxUpload"></td>
					</tr>
					<tr>
						<td>当前用户权限</td>
						<td class="userRights"></td>
					</tr>
				</tbody>
			</table>
			<blockquote class="layui-elem-quote title">最近更新</blockquote>
			<table class="layui-table" lay-skin="line">
				<colgroup>
					<col>
					<col width="110">
				</colgroup>
				<tbody class="hot_news">
					<h1>
						${username}<br>
						${password}<br>
					</h1>
				</tbody>
			</table> 
		</div>
	</div>

</body>
</html>
