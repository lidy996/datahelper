<%--
  Created by IntelliJ IDEA.
  User: yzqn
  Date: 2017/12/22
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<script>
    function createProject() {
        window.location.href = "${prc}/project/create"
    }
</script>