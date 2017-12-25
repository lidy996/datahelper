<%--
  Created by IntelliJ IDEA.
  User: yzqn
  Date: 2017/12/22
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 左侧菜单 -->
<div class="layui-side layui-bg-black left-menu-all">
    <div class="layui-side-scroll">
        <ul class="layui-nav layui-nav-tree left-menu" lay-filter="left-menu">
            <li class="layui-nav-item">
                <a href="${prc}/platform" data-id="1">控制台</a>
            </li>
            <li class="layui-nav-item active">
                <a href="${prc}/project" data-id="2">项目</a>
            </li>
            <li class="layui-nav-item">
                <a href="${prc}/organization" data-id="3">组织</a>
            </li>
            <li class="layui-nav-item ">
                <a href="${prc}/user" data-id="4">用户</a>
            </li>
            <li class="layui-nav-item ">
                <a href="${prc}/message" data-id="4">用户</a>
            </li>
        </ul>
    </div>
</div>