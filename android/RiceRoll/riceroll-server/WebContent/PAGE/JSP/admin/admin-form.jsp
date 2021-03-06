<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>编辑</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
	<%
		String name = (String) request.getParameter("name");
	%>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<strong>RiceRoll</strong> <small>后台管理系统</small>
	</div>

	<button
		class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
		data-am-collapse="{target: '#topbar-collapse'}">
		<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
	</button>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
			<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
					收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
			<li class="am-dropdown" data-am-dropdown><a
				class="am-dropdown-toggle" data-am-dropdown-toggle
				href="javascript:;"> <span class="am-icon-users"></span>  <%
 	if (name != null) {%>					
 					<%=name%>
					<%
						} else {
					%>管理员<%
						}
					%>  <span
					class="am-icon-caret-down"></span>
			</a>
				<ul class="am-dropdown-content">
					<li><a href="/RiceRoll/admins/info.action"><span class="am-icon-user"></span> 资料</a></li>
					<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
					<li><a href="/RiceRoll/admins/logout.action"><span class="am-icon-power-off"></span> 退出</a></li>
				</ul></li>
			<li><a href="javascript:;" id="admin-fullscreen"><span
					class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
		</ul>
	</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar">
			<ul class="am-list admin-sidebar-list">
				<li><a href="/RiceRoll/admins/index.action"><span
						class="am-icon-home"></span> 首页</a></li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav'}"><span
						class="am-icon-file"></span> 资源管理模块 <span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav">
						<li><a href="admin-cookbook-form.jsp" class="am-cf"><span
								class="am-icon-check"></span> 菜谱管理</a></li>
						<li><a href="admin-food-material-form.jsp"><span
								class="am-icon-puzzle-piece"></span> 食材管理</a></li>
						<li><a href="admin-condiment-form.jsp"><span
								class="am-icon-th"></span> 调料管理</a></li>
						<li><a href="admin-form.jsp"><span
								class="am-icon-calendar"></span> 每日推荐</a></li>
					</ul></li>
				<li><a href="/RiceRoll/admins/logout.action"><span
						class="am-icon-sign-out"></span> 注销</a></li>
			</ul>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-bookmark"></span> 公告
					</p>
					<p>均衡营养，平衡膳食。—— unknow</p>
				</div>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">

			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small>
				</div>
			</div>

			<div class="am-tabs am-margin" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">基本信息</a></li>
					<li><a href="#tab2">详细描述</a></li>
					<li><a href="#tab3">SEO 选项</a></li>
				</ul>

				<div class="am-tabs-bd">
					<div class="am-tab-panel am-fade am-in am-active" id="tab1">
						<div class="am-g am-margin-top">
							<div class="am-u-sm-2 am-text-right">所属类别</div>
							<div class="am-u-sm-10">
								<select>
									<option value="option1">选项一...</option>
									<option value="option2">选项二.....</option>
									<option value="option3">选项三........</option>
								</select>
							</div>
						</div>

						<div class="am-g am-margin-top">
							<div class="am-u-sm-2 am-text-right">显示状态</div>
							<div class="am-u-sm-10">
								<div class="am-btn-group" data-am-button>
									<label class="am-btn am-btn-default am-btn-xs"> <input
										type="radio" name="options" id="option1"> 正常
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="radio" name="options" id="option2"> 待审核
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="radio" name="options" id="option3"> 不显示
									</label>
								</div>
							</div>
						</div>

						<div class="am-g am-margin-top">
							<div class="am-u-sm-2 am-text-right">推荐类型</div>
							<div class="am-u-sm-10">
								<div class="am-btn-group" data-am-button>
									<label class="am-btn am-btn-default am-btn-xs"> <input
										type="checkbox"> 允许评论
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="checkbox"> 置顶
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="checkbox"> 推荐
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="checkbox"> 热门
									</label> <label class="am-btn am-btn-default am-btn-xs"> <input
										type="checkbox"> 轮播图
									</label>
								</div>
							</div>
						</div>

						<div class="am-g am-margin-top">
							<div class="am-u-sm-2 am-text-right">发布时间</div>
							<div class="am-u-sm-10">
								<form action="" class="am-form am-form-inline">
									<div class="am-form-group am-form-icon">
										<i class="am-icon-calendar"></i> <input type="text"
											class="am-form-field am-input-sm" placeholder="时间">
									</div>
								</form>
							</div>
						</div>

					</div>

					<div class="am-tab-panel am-fade" id="tab2">
						<form class="am-form">
							<div class="am-g am-margin-top">
								<div class="am-u-sm-2 am-text-right">文章标题</div>
								<div class="am-u-sm-4">
									<input type="text" class="am-input-sm">
								</div>
								<div class="am-u-sm-6">*必填，不可重复</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-2 am-text-right">文章作者</div>
								<div class="am-u-sm-4 col-end">
									<input type="text" class="am-input-sm">
								</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-2 am-text-right">信息来源</div>
								<div class="am-u-sm-4">
									<input type="text" class="am-input-sm">
								</div>
								<div class="am-u-sm-6">选填</div>
							</div>

							<div class="am-g am-margin-top">
								<div class="am-u-sm-2 am-text-right">内容摘要</div>
								<div class="am-u-sm-4">
									<input type="text" class="am-input-sm">
								</div>
								<div class="am-u-sm-6">不填写则自动截取内容前255字符</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">内容描述</div>
								<div class="am-u-sm-10">
									<textarea rows="10" placeholder="请使用富文本编辑插件"></textarea>
								</div>
							</div>

						</form>
					</div>

					<div class="am-tab-panel am-fade" id="tab3">
						<form class="am-form">
							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">SEO 标题</div>
								<div class="am-u-sm-4 am-u-end">
									<input type="text" class="am-input-sm">
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">SEO 关键字</div>
								<div class="am-u-sm-4 am-u-end">
									<input type="text" class="am-input-sm">
								</div>
							</div>

							<div class="am-g am-margin-top-sm">
								<div class="am-u-sm-2 am-text-right">SEO 描述</div>
								<div class="am-u-sm-4 am-u-end">
									<textarea rows="4"></textarea>
								</div>
							</div>
						</form>
					</div>

				</div>
			</div>

			<div class="am-margin">
				<button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
				<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
			</div>
		</div>
		<!-- content end -->

	</div>


	<footer>
	<hr>
	<p class="am-padding-left">
		© 2015 RiceRoll. <a
			href="http://localhost:8080/RiceRoll/PAGE/HTML/welcome.html">饭团首页</a>
	</p>
	</footer>

	<!--[if lt IE 9]>
<script src="js/jquery1.11.1.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/polyfill/rem.min.js"></script>
<script src="js/polyfill/respond.min.js"></script>
<script src="js/amazeui.legacy.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="js/jquery.min.js"></script>
	<script src="js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="js/app.js"></script>
</body>
</html>
