<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">


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

			<div class="data-add-container">

				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
                                                            <div class="layui-form-item" pane>
						<label class="layui-form-label">订单编号：</label>
						<div class="layui-input-block">
							<input v-model="detail.dingdanbianhao" type="text" name="dingdanbianhao" id="dingdanbianhao" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">药品编号</label>
                        <div class="layui-input-block">
                            <select name="yaopinbianhao" id="yaopinbianhao" lay-filter="yaopinbianhao">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in yaopinbianhao" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">药品名称：</label>
						<div class="layui-input-block">
							<input v-model="detail.yaopinmingcheng" type="text" name="yaopinmingcheng" id="yaopinmingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-block">
                            <select name="zhanghao" id="zhanghao" lay-filter="zhanghao">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in zhanghao" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">姓名：</label>
						<div class="layui-input-block">
							<input v-model="detail.xingming" type="text" name="xingming" id="xingming" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">手机：</label>
						<div class="layui-input-block">
							<input v-model="detail.shouji" type="text" name="shouji" id="shouji" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">下单时间：</label>
						<div class="layui-input-block">
							<input type="text" name="xiadanshijian" id="xiadanshijian" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">预估收货时间：</label>
						<div class="layui-input-block">
							<input type="text" name="yugushouhuoshijian" id="yugushouhuoshijian" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
						<label class="layui-form-label">收货地址：</label>
						<div class="layui-input-block">
							<input v-model="detail.shouhuodizhi" type="text" name="shouhuodizhi" id="shouhuodizhi" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                                                <div class="layui-form-item" pane>
                        <label class="layui-form-label">订单状态</label>
                        <div class="layui-input-block">
                            <select name="dingdanzhuangtai" id="dingdanzhuangtai" lay-filter="dingdanzhuangtai">
                                <option value="">请选择</option>
                                <option v-for="(item,index) in dingdanzhuangtai" v-bind:key="index" :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                                                            					                                        					                                        					<div class="layui-form-item" pane>
						<label class="layui-form-label">地址：</label>
						<div class="layui-input-block">
							<input type="text" name="fulladdress" id="fulladdress" autocomplete="off" class="layui-input">
						</div>
					</div>
                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
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
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					dataList: [],
                    detail: {
                                                                        dingdanbianhao: genTradeNo(),
                                                                                                yaopinbianhao: '',
                                                                                                yaopinmingcheng: '',
                                                                                                zhanghao: '',
                                                                                                xingming: '',
                                                                                                shouji: '',
                                                                                                xiadanshijian: '',
                                                                                                yugushouhuoshijian: '',
                                                                                                shouhuodizhi: '',
                                                                                                dingdanzhuangtai: '',
                                                                                                longitude: '',
                                                                                                latitude: '',
                                                                                                fulladdress: '',
                                                                    },
                    																				yaopinbianhao: [],
																														zhanghao: [],
																																																																						dingdanzhuangtai: [],
																																													centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

						// 初始化地图插件
			jquery(document).ready(function() {
				var p = jquery("#fulladdress").AMapPositionPicker();
				jquery("#fulladdress").on('click', function() {
					var position = p.AMapPositionPicker('position');
					jquery('#fulladdress').val(position.address)
				});
			});
			
			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
                var tinymce = layui.tinymce

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
                																												laydate.render({
					elem: '#xiadanshijian',
					type: 'datetime'
				});
                												laydate.render({
					elem: '#yugushouhuoshijian',
					type: 'datetime'
				});
                																				vue.dingdanzhuangtai = '配送中,已送达'.split(',')
																																				
                                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
						vue.detail[`${key}`] = data[`${key}`]
					}
				});
                
                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var key in obj){
						vue.detail[`${key}`] = obj[`${key}`]
					}
				}
				
                																																																																																																								
				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
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
                                                                                                                                            					                                                                                                                                            
					// 跨表计算
					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        					
                    // 比较大小
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                					
					// 提交数据
					http.requestJson('dingdanpeisong' + '/add', 'post', data, function(res) {
					 	layer.msg('提交成功', {
					 		time: 2000,
					 		icon: 6
					 	}, function() {
					 		back();
						});
					 });

					return false
				});

			});
		</script>
	</body>
</html>
