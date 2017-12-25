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
    <%@include file="/WEB-INF/jsp/common/dh_head.jsp"%>
    <%@include file="/WEB-INF/jsp/common/dh_left.jsp"%>
    <!-- 主体 -->
    <div class="layui-body">
        <div class="layui-tab-content">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>表单集合演示</legend>
            </fieldset>

            <form class="layui-form" id="projectForm" name="projectForm" action="${prc}/project/save" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">项目名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">项目描述</label>
                    <div class="layui-input-block">
                        <input type="text" name="description" lay-verify="required" placeholder="请输入描述说明" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">复选框</label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="like[write]" title="写作">
                        <input type="checkbox" name="like[read]" title="阅读" checked="">
                        <input type="checkbox" name="like[game]" title="游戏">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">是否公开</label>
                    <div class="layui-input-block">
                        <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">普通文本域</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="" lay-filter="demo1">创建</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- 底部 -->
    <%@include file="/WEB-INF/jsp/common/dh_foot.jsp"%>
</div>
</body>
<script>
    function createProject() {
        window.location.href = "${prc}/project/create"
    }

    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;


        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少5个字符';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });
    });

    //监听提交
    $("#projectForm").ajaxForm({
        success:function (data) {
            if(data.resultCode == 0){
                alert("success");

            }else{
                alert("warning");
            }
        },
        error:function(){
            alert("error");
        }
    });
</script>
</html>