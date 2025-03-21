<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE;">

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> 个人中心 </p>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container">
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						                        						                                                						<div class="layui-form-item">
							<label class="layui-form-label">药品编号</label>
							<div class="layui-input-block">
								<select name="yaopinbianhao" id="yaopinbianhao">
									<option value="">请选择</option>
									<option v-for="(item,index) in yaopinbianhao" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">药品名称</label>
							<div class="layui-input-block">
								<input type="text" name="yaopinmingcheng" id="yaopinmingcheng" placeholder="药品名称" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                        						<div class="layui-form-item">
							<label class="layui-form-label">账号</label>
							<div class="layui-input-block">
								<select name="zhanghao" id="zhanghao">
									<option value="">请选择</option>
									<option v-for="(item,index) in zhanghao" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">姓名</label>
							<div class="layui-input-block">
								<input type="text" name="xingming" id="xingming" placeholder="姓名" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">手机</label>
							<div class="layui-input-block">
								<input type="text" name="shouji" id="shouji" placeholder="手机" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">下单时间</label>
							<div class="layui-input-block">
								<input type="text" name="xiadanshijian" id="xiadanshijian" placeholder="下单时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">预估收货时间</label>
							<div class="layui-input-block">
								<input type="text" name="yugushouhuoshijian" id="yugushouhuoshijian" placeholder="预估收货时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">收货地址</label>
							<div class="layui-input-block">
								<input type="text" name="shouhuodizhi" id="shouhuodizhi" placeholder="收货地址" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">订单状态</label>
							<div class="layui-input-block">
								<select name="dingdanzhuangtai" id="dingdanzhuangtai">
									<option value="">请选择</option>
									<option v-for="(item,index) in dingdanzhuangtai" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">经度</label>
							<div class="layui-input-block">
								<input type="text" name="longitude" id="longitude" placeholder="经度" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">纬度</label>
							<div class="layui-input-block">
								<input type="text" name="latitude" id="latitude" placeholder="纬度" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">地址</label>
							<div class="layui-input-block">
								<input type="text" name="fulladdress" id="fulladdress" placeholder="地址" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
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
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
																									yaopinbianhao: [],
																														zhanghao: [],
																																																																						dingdanzhuangtai: [],
																																													centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../recharge/recharge.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                																http.request(`option/yaopinxinxi/yaopinbianhao`,'get',{},(res)=>{
					vue.yaopinbianhao = res.data
				});
				form.on('select(yaopinbianhao)', (data) => {
					console.log(data.value);
					http.request('follow/yaopinxinxi/yaopinbianhao', 'get', {
						columnValue: data.value
					}, function(res) {
																																										jquery("#yaopinmingcheng").val(res.data.yaopinmingcheng)
																																				jquery("#xingming").val(res.data.xingming)
																								jquery("#shouji").val(res.data.shouji)
																																																																																																					})
				});
																								http.request(`option/yonghu/zhanghao`,'get',{},(res)=>{
					vue.zhanghao = res.data
				});
				form.on('select(zhanghao)', (data) => {
					console.log(data.value);
					http.request('follow/yonghu/zhanghao', 'get', {
						columnValue: data.value
					}, function(res) {
																																										jquery("#yaopinmingcheng").val(res.data.yaopinmingcheng)
																																				jquery("#xingming").val(res.data.xingming)
																								jquery("#shouji").val(res.data.shouji)
																																																																																																					})
				});
																																																								vue.dingdanzhuangtai = '配送中,已送达'.split(',')
																																				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
																																																																																																																																											});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
