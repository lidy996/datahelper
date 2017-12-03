<%--
  Created by IntelliJ IDEA.
  User: yzqn
  Date: 2017/12/3
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 左侧导航 -->
<div class="layui-side layui-bg-black">
    <div class="user-photo">
        <a class="img" title="我的头像" ><img src="${pageContext.request.contextPath}/resources/images/张国荣.jpeg"></a>
        <p>你好！<span class="userName">yzqn</span>, 欢迎登录</p>
    </div>
    <div class="navBar layui-side-scroll">
        <!-- 左侧导航区域 -->
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li <c:if test="${menuFlag == 'console'}">class="layui-nav-itemed"</c:if> class="layui-nav-item"><a href="${prc}/">控制台</a></li>
            <li class="layui-nav-item" style="background-color: #009688">
                <a href="javascript:;">我的信息</a>
                <dl class="layui-nav-child">
                    <dd <c:if test="${menuFlag == 'info'}">class="layui-nav-itemed"</c:if> ><a href="${prc}/info">个人信息</a></dd>
                    <dd <c:if test="${menuFlag == 'modifyPassword'}">class="layui-nav-itemed"</c:if> ><a href="${prc}/info/modify/password">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">组织管理</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">项目管理</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">用户管理</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">支付接口</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="javascript:;">列表三</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">系统设置</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="javascript:;">列表三</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>