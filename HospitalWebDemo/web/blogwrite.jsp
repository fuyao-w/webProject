<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="gbk" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>专家咨询</title>
<!---css--->
<link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>css/dropzone.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.js"></script>
<script src="<%=basePath%>js/dropzone.js"></script>
<script src="<%=basePath%>js/blogwrite.js"></script>
<script src="<%=basePath%>js/index.js"></script>
	<script src="<%=basePath%>js/jquery.cookie.js" ></script>
	<script src="<%=basePath%>js/jquery.md5.js" ></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<!-- FlexSlider -->
	 <script src="<%=basePath%>js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
			<script>
			// Can also be used with $(document).ready()
				$(window).load(function() {
				$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
				});
				});
			</script>
			<!-- //FlexSlider-->
</head>
<body>

		<!---header--->
		<div class="header-section">
			<div class="container">
				<div class="head-top">

					<div id="topModel" class="email">
						<ul>

							<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
							<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal" data-target="#myModal1">注册</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<nav class="navbar navbar-default">
					<!---Brand and toggle get grouped for better mobile display--->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand">
							<h1><a href="index.jsp"><span>天津 </span>医院</a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="/hospital">首页 <span class="sr-only">(current)</span></a></li>

							<li><a href="services.jsp">服务</a></li>
							<li><a href="/pservice">患者服务</a></li>
							<li><a href="/visits">医生出诊信息</a></li>
							<li><a href="/blog">专家咨询</a></li>
							<li class="dropdown active">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">医药相关<span class="caret"></span></a>
								<ul class="dropdown-menu">

									<li><a target="_blank" href="/shoplist">药品咨询</a></li>
									<li><a  href="/mpolicy">医药公司政策资讯</a></li>
								</ul>
							</li>


						</ul>
						<div class="phone">
							<span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>1-999-4563-555</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</nav>
			</div>
		</div>
		<!---header--->
		<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h1>专家咨询</h1>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="faq-section">
				<div class="container">
					<div class="coment-form">
								<div class="container bg-info">
									<h3>咨询内容</h3>
									<form:form method="post">
									<form:label path="country">科室：</form:label>
									<form:select  id="con" path="country">
										<form:option value="NONE" label="请选择..." />
										<form:options items="${countryList}" />
									</form:select>
									</form:form>




										<input type="text" id="theme" value="主题 " style="margin-top: 15px" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '主题';}" required="">



											<div style="margin-top: 15px;margin-bottom: 15px;background:  #eeeeee;border: 0px; border-radius: 15px;" class="col-md-7 dropzoneimg">
      <h1 id="h1" class="text-center text-info ">点击或把图片拖拽带这里</h1>
      </div>
										<textarea style="margin-top: 15px" type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '内容';}" required="">内容</textarea>
									<button id="sub" style=" border: 0px;background: #0090CC;color: white;height: 40px;width: 120px;" class=" btn text-align-center hvr-shutter-out-horizontal">回复</button>

								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		<!---footer--->
			<div class="footer-section">
				<div class="container">
					<div class="footer-grids">
						<div class="col-md-4 footer-grid">
							<h4>友情链接</h4>
							<ul>
								<li><a href="http://www.nhfpc.gov.cn/">国家卫生计生委</a></li>
								<li><a href="http://www.cma.org.cn/">中华医学会</a></li>
								<li><a href="http://www.tstc.gov.cn/">天津市科委 </a></li>
								<li><a href="http://www.tjmec.gov.cn/"> 天津卫生局综合信息网</a></li>
								<li><a href="http://www.tjwenming.cn">天津文明网</a></li>
								
							</ul>
						</div>
						<div class="col-md-4 footer-grid">
							<h4>联系方式</h4>
							<p>（留医部）罗湖区东门北路1017号</p>
							<p>（一门诊）罗湖区深南东路3046号</p>
							<p>联系电话 : +1 234 567 890</p>
							<p>传真 : + 1 234 567 890</p>
							<p>邮箱 : <a href="mailto:example@mail.com"> example@mail.com</a></p>
						</div>
						<div class="col-md-4 footer-grid">
							<h4>法律责任</h4>
							<p> 除浙江省公安厅门户网注明之服务条款外，任何因使用本网站或与本网站连接的任何其他网站或网页而引致的意外、疏忽、合约毁坏、诽谤、感染电脑病毒、版权或其他知识产权纠纷及其造成的损失，天津医院官网概不负责，不承担任何法律责任。</p>
						</div>
						
						
						
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!---footer--->
			<!--copy-->
			<div class="copy-section">
				<div class="container">
					<p>Copyright &copy; 2018.页面版权所有天津医院</p>
				</div>
			</div>
		<!--copy-->
		<!-- login -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body real-spa">
						<div class="login-grids">
							<div class="login">

								<div class="login-right">

									<form>
										<h3>登录</h3>
										<div  id="logalert"  class="hidden alert alert-warning">
											<a href="#" onclick=""  class="close" data-dismiss="alert">
												&times;
											</a>
											<strong>警告！</strong>账号或者密码错误请重新登录
										</div>
										<input minlength="4" maxlength="8" id="log_name" type="text" placeholder="输入你的账号"  >
										<input minlength="6" maxlength="16" id="lpassword" type="password"  placeholder="输入你的密码">
										<h4><a href="#">忘记密码</a> / <a href="#">更改密码</a></h4>
										<div class="single-bottom">
											<input type="checkbox"  id="brand" value="">
											<label for="brand"><span></span>记住密码</label>
										</div>
										<span id="log"   style="width: 435px;height: 50px;" class="btn btn-info"><strong style="text-align:center;font-size:x-large ;">登录</strong></span>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //login -->
		<!-- Register -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content modal-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body real-spa">
						<div class="login-grids">
							<div class="login">
								<div class="login-right">
									<form >
										<h3>注册 </h3>
										<table class="table">


											<tr>
												<td width="400px"><input id="login_name" maxlength="16"  type="text" placeholder="请输入账号(4-10位数字、字母、下划线)"> </td> <td  style="vertical-align: middle;"   ><div  id="account1" style="visibility: hidden;"  class="glyphicon glyphicon-ok"></div></td>
											</tr>
											<tr>

												<td><input id="password" type="password" maxlength="20" placeholder="请输入密码(6-16位数字、字母、下划线)" ></td><td style="vertical-align: middle;" class=""><div id="pw1"  style="visibility: hidden;" class="glyphicon glyphicon-ok"></div></td>
											</tr>
											<tr>

												<td><input id="pwagain" type="password" maxlength="20" disabled="" placeholder="请再次输入密码">
													<div id="pwalert" class="	alert alert-warning">
														<a href="#" class="close" data-dismiss="alert">
															&times;
														</a>
														<strong>警告！</strong>两次输入密码不同。
													</div>
												</td><td style="vertical-align: middle;" class=""><div id="pwagain1" style="visibility: hidden;"  class="glyphicon glyphicon-ok"></div></td>
											</tr>
											<tr>
												<td><input id="pid" type="text" placeholder="请输入病人编号(可不输入)">	</td><td style="vertical-align: middle;" class=""><div id="pid1"  style="visibility: hidden;" class="glyphicon glyphicon-ok"></div></td>
											</tr>
										</table>
										<span id="reg" onclick="onval()"  style="width: 435px;height: 50px;" class="btn btn-info"><strong style="text-align:center;font-size:x-large ;">注册</strong></span>
										<script>
										</script>

									</form>
								</div>
								<div class="clearfix"></div>
							</div>
							<p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //Register -->
</body>
</html>