<%@ page import="java.util.List" %>
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="gbk" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
<title>医生出诊信息</title>
<!---css--->
<link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
    <script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.js"></script>
	<script src="<%=basePath%>js/jquery.md5.js" ></script>
	<script src="<%=basePath%>js/jquery.cookie.js" ></script>
	<script type="text/javascript" src="<%=basePath%>js/index.js"></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<!-- FlexSlider -->
	 <script src="<%=basePath%>js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="<%=basePath%>css/flexslider.css" type="text/css" media="screen" />
			<script>
			// Can also be used with $(document).ready()
				$(window).load(function() {
				$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
				});
				});
			</script>

	<script>
$(document).ready(function () {
    console.dir(JSON.stringify(${jsonStr}))
        var visitMes = ${jsonStr}



var j=0;
console.dir(visitMes[1].length)
for (a=0;a<visitMes[1].length;a++) {
    for (i = 0; i < visitMes[1][a].deparCount; i++) {

        console.dir(a)
        if (i == 0) {
            $("thead").append('<tr >\n' +
                '\t\t\t\t<td style="vertical-align: middle;"  rowspan="' + visitMes[1][a].deparCount + '">\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].doctor.department + '</span><span></span></span> \n' +
                '\t\t\t\t\t</p>\n' +
                '\t\t\t\t</td>\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].doctor.doc_name + '</span><span></span></span>\n' +
                '\t\t\t\t\t</p>\n' +
                '\t\t\t\t</td>\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].doctor.levels + '</span><span></span></span> \n' +
                '\t\t\t\t\t</p>\n' +
                '\t\t\t\t</td>\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].t_visit + '</span><span></span></span> \n' +
                '\t\t\t\t\t</p>\n' +

                '\t\t\t\t</td>\n' +
                '\t\t\t</tr>');
        } else {
            $("thead").append('<tr >\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].doctor.doc_name + '</span><span></span></span>\n' +
                '\t\t\t\t\t</p>\n' +
                '\t\t\t\t</td>\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].doctor.levels + '</span><span></span></span> \n' +
                '\t\t\t\t\t</p>\n' +
                '\t\t\t\t</td>\n' +
                '\t\t\t\t<td>\n' +
                '\t\t\t\t\t<p style="text-align:center;" class="MsoNormal" align="center">\n' +
                '\t\t\t\t\t\t<span style=";font-size:12pt;"><span style=";font-size:16px;">' + visitMes[0][j].t_visit + '</span><span></span></span> \n' +
                '\t\t\t\t\t</p>\n' +

                '\t\t\t\t</td>\n' +
                '\t\t\t</tr>');

        }
        j++
    }
}
    })




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
				<h1>医生出诊时间</h1>
			</div>
		</div>
		<!---banner--->
		<div class="content "  >
			<div class="prices-section">
				<div class="container">
						<h3 id="h3" >医生出诊时间表</h3>
	<div class="col-md-12 " >
		<div class="table-responsive">
	<table class="table table-bordered ">
		
		
		<tbody>
		<thead id="thead">
			<tr >
				<td >
					<p style="text-align:center;" class="MsoNormal" align="center">
						<span style=";font-size:12pt;"><span style=";font-size:16px;">科室</span><span></span></span> 
					</p>
				</td>
				<td>
					<p style="text-align:center;" class="MsoNormal" align="center">
						<span style=";font-size:12pt;"><span style=";font-size:16px;">姓名</span><span></span></span> 
					</p>
				</td>
				<td>
					<p style="text-align:center;" class="MsoNormal" align="center">
						<span style=";font-size:12pt;"><span style=";font-size:16px;">职称</span><span></span></span> 
					</p>
				</td>
				<td>
					<p style="text-align:center;" class="MsoNormal" align="center">
						<span style=";font-size:12pt;"><span style=";font-size:16px;">出诊时间</span><span></span></span> 
					</p>
				</td>
			</tr>
	</thead>
			<%--<tr>--%>
				<%--<td rowspan="33">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">创伤骨科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">${}</span><span></span></span>--%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周三上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马宝通</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张建国</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">袁天祥</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">陈</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">新</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">魏万富</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">捷</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">吴英华</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王裕民</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">万春友</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">梁</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曾宪铁</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">舒衡生</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">肖</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">湘</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">石忠琪</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">辛景义</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">庞桂根</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李宝和</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">叶伟胜</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张亚非</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张金利</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨建华</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">欣</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">鲁</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">杰</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">涛</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">尹双波</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">付慕勇</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">金</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">硕</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午、周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">东靖明</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">黄海晶</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曹</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">清</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王敬博</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曹</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">文</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="21">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">脊柱外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵合元</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周五上午、</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">徐宝山</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午、周四上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">邓树才</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">吉</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">宁</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、二上午、周三全天、周四下午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">郝永宏</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午、周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张晓林</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">朱洪文</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨强</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">毅</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">白剑强</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午、周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">贾占华</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">孙桂明</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">栋</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张继东</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午、周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨海云</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午、周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李建光</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">刘</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">欣</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">涛</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">苗</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">姜洪峰</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五、六全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">韩岳</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="8">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">手外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">阚世廉</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">陆</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">芸</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">陈克俊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">宫可同</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">津</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">戚</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">伟</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张建兵</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">韩</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">力</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="15">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">关节外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">高志国</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张福江</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午、周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">任凯晶</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二、周六上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵秀祥</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">于建华</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">刘军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王磊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">肖喻</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">郑得志</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曹沛宏</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">苗</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">兵</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">卜延民</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二、周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">冯贵喜</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午、周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李晓辉</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午、周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">毕晓阳</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">骨关节病</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">徐士玺</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="8">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">关节镜科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">力</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、周三上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周六上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">黄竟敏</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一全天、周四下午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">陈德生</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p align="center">--%>
						<%--<span style="font-size:16px;">周一下午&nbsp; 周二上午</span>--%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">唐建军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵金岩</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">黄</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">韧</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周日上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曹健刚</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span>周一上午 周二上午</span></span>--%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">骨肿瘤</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">胡永成</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="3">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">骨儿科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨建平</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">曾</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">裴</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王春会</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="2">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">风湿骨病</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李德达</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">白人骁</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三、周五上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="2">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">骨质疏松</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">莉</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一全天、周二、三、</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">四、五上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">晁爱军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午、周六上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">针灸科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">高伯谦</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三、五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="9">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">普内科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">谭效峰</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二、四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨晓巍</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张瑞红</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">孟</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">进</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周二、四全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">齐宝庆</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">邵维维</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">燕</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张丽红</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="7">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">心内科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">高</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">波</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张振萍</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李振海</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张小妹</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">颉迎新</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杨春娟</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">健</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p class="MsoNormal" align="left">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">消化内科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张瑞红</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">肾内科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">静</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="3">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">内分泌</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">宋淑萍</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二、五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李金娥</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">罗惠辛</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">干部保健</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">郑</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">欣</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">（和平院区）</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="5">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">神经科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">翟博智</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王少明</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">陈丽</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵菁</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">米国强</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="10">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">外</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">刘胜利</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">田永生</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午、周四下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">肖元廷</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王立军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马慧发</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">吴福宁</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">媛</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">费伟大</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">焦秋明</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">（和平院区）</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">赵建平</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">（和平院区）</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p class="MsoNormal" align="left">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">整形外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">顾俊平</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午、周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="4">--%>
					<%--<p class="MsoNormal" align="left">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">心胸外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王冬滨</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">么景满</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">朱德清</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三下午、周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">谈</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">健</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
				<%--<td>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="5">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">耳鼻喉科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">劲</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周三下午、</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周日全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">文</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">茹</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">谢</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">钢</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;&nbsp;&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">任海棠</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">孙胜兰</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="3">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">泌尿科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马际春</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span style=";font-size:16px;">&nbsp;&nbsp;&nbsp;</span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">宋</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">昕</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">任仲为</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">新生儿</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马立明</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="4">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">妇产科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">尚玉敏</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午、周四上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">康国锋</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">高</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">楠</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">马静姝</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="2">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">眼</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">郭玉峰</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">吴淑蓉</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二、五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">皮肤科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">贾建琴</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、三上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="2">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">口腔科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">尼</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">娜</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">田贺新</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、二全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">营养科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">胡若梅</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">副主任营养师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td rowspan="4">--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">血管外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">张秀军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一上午、周三全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">李俊海</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、四下午、周二、五上午</span><span></span></span> --%>
					<%--</p>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午特需门诊</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">黄</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">梅</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周二下午、周四上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">刘</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">蒙</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">中医内科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:16px;">&nbsp;&nbsp;&nbsp;</span><span style=";font-size:12pt;"><span style=";font-size:16px;">王</span><span style=";font-size:16px;">&nbsp;</span><span style=";font-size:16px;">欣</span><span style=";font-size:16px;">&nbsp;</span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、五上午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">中医外科</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">王殿荣</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周五全天</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">感染免疫</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">刘德梦</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周一、五上午、周三下午</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">心理咨询</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">杜长军</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">副主任医师</span><span></span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
				<%--<td>--%>
					<%--<p style="tool.text-align:center;" class="MsoNormal" align="center">--%>
						<%--<span style=";font-size:12pt;"><span style=";font-size:16px;">周四全天</span></span> --%>
					<%--</p>--%>
				<%--</td>--%>
			<%--</tr>--%>
		</tbody>
</table>
		
		
	</div>
	
	
						<!-- script for tabs -->
							<script>
								$(document).ready(function(){
									$(".tab1 p").hide();
									$(".tab2 p").hide();
									$(".tab3 p").hide();
									$(".tab4 p").hide();
									$(".tab5 p").hide();
									$(".tab6 p").hide();
									$(".tab1 ul").click(function(){
										$(".tab1 p").slideToggle(300);
										$(".tab2 p").hide();
										$(".tab3 p").hide();
										$(".tab4 p").hide();
										$(".tab5 p").hide();
										$(".tab6 p").hide();
									})
									$(".tab2 ul").click(function(){
										$(".tab2 p").slideToggle(300);
										$(".tab1 p").hide();
										$(".tab3 p").hide();
										$(".tab4 p").hide();
										$(".tab5 p").hide();
										$(".tab6 p").hide();
									})
									$(".tab3 ul").click(function(){
										$(".tab3 p").slideToggle(300);
										$(".tab4 p").hide();
										$(".tab2 p").hide();
										$(".tab1 p").hide();
										$(".tab5 p").hide();
										$(".tab6 p").hide();
									})
									$(".tab4 ul").click(function(){
										$(".tab4 p").slideToggle(300);
										$(".tab3 p").hide();
										$(".tab2 p").hide();
										$(".tab1 p").hide();
										$(".tab5 p").hide();
										$(".tab6 p").hide();									
									})	
									$(".tab5 ul").click(function(){
										$(".tab5 p").slideToggle(300);
										$(".tab3 p").hide();
										$(".tab2 p").hide();
										$(".tab1 p").hide();
										$(".tab4 p").hide();
										$(".tab6 p").hide();									
									})
									$(".tab6 ul").click(function(){
										$(".tab6 p").slideToggle(300);
										$(".tab3 p").hide();
										$(".tab2 p").hide();
										$(".tab1 p").hide();
										$(".tab5 p").hide();
										$(".tab4 p").hide();									
									})
								});
							</script>
						<!-- script for tabs -->
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