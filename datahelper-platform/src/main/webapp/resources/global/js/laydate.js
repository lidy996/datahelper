/**var start = {
		    elem: '#start',
		    format: 'YYYY-MM-DD hh:mm:ss',
		    min: laydate.now(), //设定最小日期为当前日期
		    max: '2099-06-16 23:59:59', //最大日期
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		         end.min = datas; //开始日选好后，重置结束日的最小日期
		         end.start = datas //将结束日的初始值设定为开始日
		    }
		};
		var end = {
		    elem: '#end',
		    format: 'YYYY-MM-DD hh:mm:ss',
		    min: laydate.now(),
		    max: '2099-06-16 23:59:59',
		    istime: true,
		    istoday: false,
		    choose: function(datas){
		        start.max = datas; //结束日选好后，重置开始日的最大日期
		    }
		};
		laydate(start);
		laydate(end);
 * 
 */

/**
 * <input type="text" id="id" data-toggle="laydate" date-format="YYYY-MM-DD hh:mm:ss" data-min="now" data-showtime="true">其中id必须，其他属性可选
 */
$(document).ready(function() {
	$('[data-toggle="laydate"]').click(function() {
		var option = {
			elem : '#'+$(this).attr('id'),
			format : $(this).data('format'),
            theme: '#393D49'
		};
		var format = $(this).data('format');
		if(StringUtils.isBlank(format)) {
			$.extend(option, {format: 'YYYY-MM-DD'});
		} else {
			$.extend(option, {format: format});
		}
		var min = $(this).data("min");
		if(min === 'now') {
			$.extend(option, {min: laydate.now()});
		}
		var showtime = $(this).data("showtime");
		if(showtime === 'true') {
			$.extend(option, {istime: true});
		}
		laydate(option);
	});
});