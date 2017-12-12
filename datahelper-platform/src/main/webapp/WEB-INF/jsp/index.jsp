<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>datahelper</title>
    <%@include file="/WEB-INF/jsp/common/dh_css.jsp"%>
    <%@include file="/WEB-INF/jsp/common/dh_js.jsp"%>
</head>
<body>
    <!-- 布局容器 -->
    <div class="layui-layout layui-layout-admin">
        <!-- 头部 -->
        <div class="layui-header">
            <div class="layui-main">
				<div class="top-left">
					<!-- logo -->
					<a href="${prc}/" class="logo">datahelper</a>
					
					<a href="javascript:;" class="menu-flexible">
						<i class="layui-icon">&#xe635;</i> 
					</a>
				</div>
                <!-- 头部一级菜单 -->
                <ul class="layui-nav top-menu" lay-filter="top-menu">
                    <li class="layui-nav-item layui-this"><a href="${prc}/">控制面板</a></li>
                    <li class="layui-nav-item "><a href="javascript:;" onclick="createProject()">创建项目</a></li>
                </ul>
                <!-- 头部右侧操作 -->
                <ul class="layui-nav operate">
                    <li class="layui-nav-item">
                        <a href="javascript:;">进入前台</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;"><img src="${prc}/resources/img/张国荣.jpeg" style="width: 40px;height: 40px">yzqn</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="javascript:;">个人中心</a>
                            </dd>
                            <dd>
                            	<a href="javascript:;">修改密码</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">退出登录</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 左侧菜单 -->
        <div class="layui-side layui-bg-black left-menu-all">
            <div class="layui-side-scroll">
            	<ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:;" data-id="1">后台首页</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;" data-id="2">我的项目</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;" data-id="3">我的组织</a>
                    </li>
                    <li class="layui-nav-item ">
                        <a href="javascript:;" data-id="4">用户管理</a>
                    </li>
                </ul>
            </div>
        </div>
		
        <!-- 主体 -->
        <div class="layui-body">
            <!-- 顶部切换卡 -->
            <div class="layui-tab layui-tab-card" lay-filter="top-tab" lay-allowClose="true">
                <ul class="layui-tab-title"></ul>
                <div class="layui-tab-button">
                	<a href="javascript:;"><i class="layui-icon">&#x1002;</i></a>
                </div>
                <div class="layui-tab-content">

                </div>
            </div>
        </div>

        <!-- 底部 -->
        <div class="layui-footer">
             yzqn
        </div>
    </div>
</body>
<script>
    function createProject() {
        window.location.href = "${prc}/project/create"
    }
</script>
</html>