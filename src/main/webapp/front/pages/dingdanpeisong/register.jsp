<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 订单配送注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">药品名称：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="yaopinmingcheng" name="yaopinmingcheng" placeholder="请输入药品名称" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">姓名：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">手机：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shouji" name="shouji" placeholder="请输入手机" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">收货地址：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shouhuodizhi" name="shouhuodizhi" placeholder="请输入收货地址" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">经度：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="longitude" name="longitude" placeholder="请输入经度" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">纬度：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="latitude" name="latitude" placeholder="请输入纬度" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">地址：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="fulladdress" name="fulladdress" placeholder="请输入地址" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                            if(!isNumber(data.longitude)){
                        layer.msg('经度应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                                                            if(!isNumber(data.latitude)){
                        layer.msg('纬度应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                        					                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
