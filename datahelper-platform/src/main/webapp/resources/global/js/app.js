/**
 * 全局通用的js
 * 在这边初始化对插件的使用
 */
$(function() {
	if($('[data-toggle="validate"]').length > 0) {
		$('[data-toggle="validate"]').validate({
			errorElement: "em", //可以用其他标签，记住把样式也对应修改
            success: function(label) {
                //label指向上面那个错误提示信息标签em
                label.text(" ")        //清空错误提示消息
                    .addClass("success");  //加上自定义的success类
            }
        });
	}
});
function swalConfirm(title,confirmBtnText,cancelBtnText,callback){
    if(title==""){
        title="确认要删除吗？"
    }
    if(confirmBtnText==""){
        confirmBtnText="删除";
    }
    if(cancelBtnText==""){
        cancelBtnText="取消";
    }
    swal({
            title: title,
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: confirmBtnText,
        cancelButtonText:cancelBtnText,
            closeOnConfirm: false
        },
    	function(confirm){
            if(confirm){
                callback();
            }
        });
}

/**
 * text 为弹出的提示标题
 * time 为默认自动关闭时间1000即1秒
 * url 点击后跳转链接
 * type 类型 成功还是警告，成功即success 警告即warning
 * @param text
 * @param time
 * @param url
 * @param type
 */
function swalAlert(text,time,url,type){
    if(text==""){
        text="保存成功";
    };
    var img="";
    if(type=="warning"){
        img=basePath+"/resources/global/img/warning.png";
    }else{
        img=basePath+"/resources/global/img/success.png";
    }

    swal({
        title : '',
        text : text,
        confirmButtonColor:"#f08000",
        imageUrl : img,
        imageSize : "70x70",
        timer:time,
    },function(){
        if(url!=""){
            window.location.href=url;
        }

    });
}

/**
 * 敏感操作的警告框提示
 * @param Func 点击确认删除后执行的方法（点击取消退出弹框，不执行）
 * @param warningText 删除前的提示文本
 * @param btnText 确认按钮的文本
 */
function isDelete(Func,warningText,btnText) {
    swal({
        title : "",
        text : warningText,
        imageUrl : basePath+"/resources/global/img/warning.png",
        imageSize : "70x70",
        showCancelButton : true,
        confirmButtonColor : "#DD6B55",
        confirmButtonText : btnText,
        cancelButtonText : "取消",
        closeOnConfirm : false,
    }, function(isConfirm) {
        if (isConfirm) {
            Func();
        }
    });
}

/**
 * 后台传递的JSON分页对象，包含相关分页数据
 * 此方法作用为相关总页数，每页显示数参数的设置和页面展示
 * @param pageInfo
 */
function loadPageInfo(pageInfo){
    var firstPageStr="<li onclick='Page(1,10);'><a href='javascript:;'>首页</a></li>";
    var prePageStr="";
    if(pageInfo.prePage==0){
        prePageStr="<li class='disabled' onclick='Page("+pageInfo.prePage+",10);'><a href='javascript:;'>上一页</a></li>";
    }else{
        prePageStr="<li onclick='Page("+pageInfo.prePage+",10);'><a href='javascript:;'>上一页</a></li>";
    }
    var nextPageStr="";
    if(pageInfo.nextPage==0){
        nextPageStr="<li class='disabled' onclick='Page("+pageInfo.nextPage+",10);'><a href='javascript:;'>下一页</a></li>";
    }else{
        nextPageStr="<li onclick='Page("+pageInfo.nextPage+",10);'><a href='javascript:;'>下一页</a></li>";
    }
    var lastPageStr="<li onclick='Page("+pageInfo.lastPage+",10);'><a href='javascript:;'>末页</a></li>";
    var pageStr="";
    $(pageInfo.navigatepageNums).each(function(i,item){
        if(item==pageInfo.pageNum){
            pageStr=pageStr+"<li onclick='Page("+item+",10)' class='active'><a href='javascript:;'>"+item+"</a></li>";
        }else{
            pageStr=pageStr+"<li onclick='Page("+item+",10)'><a href='javascript:;'>"+item+"</a></li>";
        }
    });
    var totalPageStr=firstPageStr+prePageStr+pageStr+nextPageStr+lastPageStr;
    $(".pagination").empty();
    $(".pagination").append(totalPageStr);
}

/**
 * 为空判断函数
 * @param str1
 * @param str2
 * @returns {*}
 */
function ifNull(str1,str2){
	if(typeof str1 == 'number') {
		return str1;
	}
    if(str1==""||str1==null||typeof(str1)=="undefined"){
        return str2;
    }
    return str1;

}
function ifEqNull(str1,str2,str3){

    if(str1==""||str1==null||typeof(str1)=="undefined"){
        return str2;
    }
    return str3;
}


/**
 * 如果str1=str2，则输出str3
 * @param str1
 * @param str2
 */
function ifValue(str1,str2,str3){
    if(str1==str2){
        return str3;
    }
    return str1;

}

/**
 * 根据条件判断显示值
 * @param condition
 * @param val1
 * @param val2
 * @returns {*}
 */
function ifTrue(condition,val1,val2){
    if(condition){
        return val1;
    }
    return val2;
}
function timeExchange(time){
    if(time==""||typeof (time)=="undefined"){
        return time;
    }
    var data = new Date(time);
    var y = data.getFullYear();//年
    var m = data.getMonth() + 1;//月
    var d = data.getDate();//日
    return y+"-"+m+"-"+d;
}

/**
 * 提示插件
 * @param title
 * @returns
 */
function loading(title) {
    if(title==""){
        title="加载中...";
    }
    $('body').loading({
        loadingWidth:240,
        title:title,
        name:'bodyMsg',
        discription:'...',
        direction:'column',
        type:'origin',
        originBg:'#71EA71',
        originDivWidth:40,
        originDivHeight:40,
        originWidth:6,
        originHeight:6,
        smallLoading:false,
        loadingBg:'#389A81',
        loadingMaskBg:'rgba(123,122,222,0.2)'
    });
}

/**
 * 根据val选中相应select的option
 * @param id
 * @param val
 */
function autoSelect(id,val){
    $("#"+id).find("option").each(function(i,item){
        if($(this).val()==val){
            $(this).attr("selected",true);
        }
    })
}

/**
 * 根据ID禁用或启用相关表单输入选择框
 * @param id
 * @param bool true或false
 */
function changeForm(id,bool){
    $("#"+id).find("input").each(function(i,item){
        $(this).attr("disabled",bool);
    });
    $("#"+id).find("select").each(function(i,item){
        $(this).attr("disabled",bool);
    });
    $("#"+id).find("textarea").each(function(i,item){
        $(this).attr("disabled",bool);
    });

}
function getRoleListForSelect(id,selectVal){
    $.ajax({
        url:basePath+'/management/user/getRoleList',
        async:false,
        type:'POST',
        success:function (result) {
            if(result.success){
                $("#"+id).find("option").remove();
                var option="";
                option=option+"<option value=''>请选择角色</option>";
                $("#"+id).append(option);
                $(result.data).each(function (i,item) {
                    var option="";
                    if(item.id==selectVal){
                        option=option+"<option value='"+item.id+"'selected>"+item.name+"</option>";
                    }else{
                        option=option+"<option value='"+item.id+"'>"+item.name+"</option>";
                    }

                    $("#"+id).append(option);
                });
            }else{
                swal({
                    title : '',
                    text : "加载角色列表失败",
                    confirmButtonColor:"#f08000",
                    imageUrl : basePath+"/resources/global/img/warning.png",
                    imageSize : "70x70",
                    timer:1000,
                },function(){

                });
            }


        }
    });
}

function getSampleStatusListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"sample_status","请选择样本状态！");
}
function getUserTypeListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"user_type","请选择用户类型！");
}
function getKnowledgeTypeListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"knowledge_type","请选择知识类型！");
}
function getKnowledgeStatusListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"knowledge_status","请选择知识状态！");
}
function getDictioanryListForSelect(id,selectVal,type,text){
    $.ajax({
        url:basePath+'/dictionary/getDictionaryList',
        data:{
            "type":type
        },
        async:false,
        type:'POST',
        success:function (result) {
            if(result.success){
                $("#"+id).find("option").remove();
                var option="";
                option=option+"<option value=''>"+text+"</option>";
                $("#"+id).append(option);
                $(result.data).each(function (i,item) {
                    var option="";
                    if(item.id==selectVal){
                        option=option+"<option value='"+item.code+"'selected>"+item.codeDescription+"</option>";
                    }else{
                        option=option+"<option value='"+item.code+"'>"+item.codeDescription+"</option>";
                    }

                    $("#"+id).append(option);
                });
            }else{
                swal({
                    title : '',
                    text : "加载角色列表失败",
                    confirmButtonColor:"#f08000",
                    imageUrl : basePath+"/resources/global/img/warning.png",
                    imageSize : "70x70",
                    timer:1000,
                },function(){

                });
            }


        }
    });
}
/**
 * 用户类型下拉列表
 * @param id
 * @param selectVal
 */
function getUserTypeListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"user_type","请选择用户类型！");
}

/**
 * 调查项目状态下拉列表
 * @param id
 * @param selectVal
 */
function getSurveyStatusListForSelect(id,selectVal){
    getDictioanryListForSelect(id,selectVal,"survey_status","请选择项目状态！");
}

function getCadiSamplePropertyDicListForSelect(id,selectVal,surveyId){
    $.ajax({
        url:basePath+'/cadi/sample/getCadiSamplePropertyDicListForSelect',
        data:{
            "surveyId":surveyId
        },
        async:false,
        type:'POST',
        success:function (result) {
            if(result.success){
                $("#"+id).find("option").remove();
                var option="";
                option=option+"<option value=''>请选择属性列表</option>";
                $("#"+id).append(option);
                $(result.data).each(function (i,item) {
                    var option="";
                    if(item.id==selectVal){
                        option=option+"<option value='"+item.code+"'selected>"+item.name+"</option>";
                    }else{
                        option=option+"<option value='"+item.code+"'>"+item.name+"</option>";
                    }

                    $("#"+id).append(option);
                });
            }else{
                swal({
                    title : '',
                    text : "加载属性列表失败",
                    confirmButtonColor:"#f08000",
                    imageUrl : basePath+"/resources/global/img/warning.png",
                    imageSize : "70x70",
                    timer:1000,
                },function(){

                });
            }


        }
    });
}
