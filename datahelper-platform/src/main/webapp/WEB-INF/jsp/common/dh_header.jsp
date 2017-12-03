<%--
  Created by IntelliJ IDEA.
  User: yzqn
  Date: 2017/12/3
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 顶部 -->
<div class="layui-header header">
    <div class="layui-main">
        <a href="#" class="logo">DataHelper</a>
        <!-- 搜索 -->
        <div class="layui-form component">
            <select name="modules" lay-verify="required" lay-search="">
                <option value="">直接选择或搜索选择</option>
                <option value="1">layer</option>
                <option value="2">form</option>
                <option value="3">layim</option>
                <option value="4">element</option>
                <option value="5">laytpl</option>
            </select>
            <i class="layui-icon">&#xe615;</i>
        </div>
        <!-- 天气信息 -->
        <div class="weather" pc>
            <div id="tp-weather-widget"></div>
            <script>(function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))</script>
            <script>tpwidget("init", {
                "flavor": "slim",
                "location": "WX4FBXXFKE4F",
                "geolocation": "enabled",
                "language": "zh-chs",
                "unit": "c",
                "theme": "chameleon",
                "container": "tp-weather-widget",
                "bubble": "disabled",
                "alarmType": "badge",
                "color": "#FFFFFF",
                "uid": "U9EC08A15F",
                "hash": "039da28f5581f4bcb5c799fb4cdfb673"
            });
            tpwidget("show");</script>
        </div>
        <!-- 顶部右侧菜单 -->
        <ul class="layui-nav top_menu">
            <li class="layui-nav-item showNotice" id="showNotice" pc>
                <a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>消息</cite></a>
            </li>
            <li class="layui-nav-item" mobile>
                <a href="javascript:;" class="mobileAddTab" data-url="page/user/changePwd.html"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>设置</cite></a>
            </li>
            <li class="layui-nav-item" mobile>
                <a href="page/login/login.html" class="signOut"><i class="iconfont icon-loginout"></i> 退出</a>
            </li>
            <li class="layui-nav-item" pc>
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/resources/images/张国荣.jpeg" class="layui-circle" width="35" height="35">
                    <cite>yzqn</cite>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" data-url="user/userInfo.html"><i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>
                    <dd><a href="javascript:;" data-url="page/user/changePwd.html"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>
                    <dd><a href="javascript:;" class="changeSkin"><i class="iconfont icon-huanfu"></i><cite>更换皮肤</cite></a></dd>
                    <dd><a href="page/login/login.html" class="signOut"><i class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>