<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="gbk" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Single</title>
    <!---css--->
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css'/>
    <link href="<%=basePath%>css/style1.css" rel='stylesheet' type='text/css'/>
    <link href="<%=basePath%>css/dropzone.css" rel='stylesheet' type='text/css'/>
    <link href="<%=basePath%>css/magnify.css" rel='stylesheet' type='text/css'/>


    <!---css--->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!---js--->
    <script src="<%=basePath%>js/jquery-2.0.3.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>
    <script src="<%=basePath%>js/jquery.md5.js"></script>
    <script src="<%=basePath%>js/jquery.cookie.js"></script>
    <script src="<%=basePath%>js/dropzone.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/index.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.magnify.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/single.js"></script>


    <!---js--->
    <!---fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <!---fonts-->
    <!-- FlexSlider -->
    <script src="<%=basePath%>js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="<%=basePath%>css/flexslider.css" type="text/css" media="screen"/>

    <script>
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
    <!-- //FlexSlider-->
</head>
<body>
<style>
    .magnify-modal {
        box-shadow: 0 0 6px 2px rgba(0, 0, 0, 0.3);
        width: 500px;
        height: 500px;
    }

    .magnify-header .magnify-toolbar {
        width: 40px;
        background-color: rgba(0, 0, 0, .5);
    }

    .magnify-stage {
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        border-width: 0;
    }

    .magnify-footer .magnify-toolbar {
        display: inline-block;
        height: 40px;
        background-color: rgba(0, 0, 0, .5);
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
    }

    .magnify-header,
    .magnify-footer {
        pointer-events: none;
    }

    .magnify-button {
        pointer-events: auto;
    }

</style>

<!---header--->
<div class="header-section">
    <div class="container">
        <div class="head-top">

            <div id="topModel" class="email">
                <ul>

                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="#" data-toggle="modal"
                                                                                        data-target="#myModal">登录</a>
                    </li>
                    <li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" data-toggle="modal"
                                                                                      data-target="#myModal1">注册</a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <nav class="navbar navbar-default">
            <!---Brand and toggle get grouped for better mobile display--->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">医药相关<span class="caret"></span></a>
                        <ul class="dropdown-menu">

                            <li><a target="_blank" href="/shoplist">药品咨询</a></li>
                            <li><a href="/mpolicy">医药公司政策资讯</a></li>
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
        <h2>Blog post</h2>
    </div>
</div>
<!---banner--->
<div class="content">
    <div class="blog-section">
        <div class="container">
            <div class="blog-grids">
                <div class="col-md-12 blog-grid">
                    <div class="blog">
                        <c:if test="${replys.get(1)}== null">
                            <h3 class="text-danger">出现了错误</h3>
                        </c:if>
                        <input id="sendID" hidden type="text" value="${replys.get(1).sendID}">
                        <h3> ${replys.get(1).title} </h3>
                        <p>    ${replys.get(1).sData} / <a href="#"
                                                           style="color: #3baae3">提问者：${replys.get(1).loginName} </a> /
                            <a href="#">${replys.get(1).department} </a> / <a
                                    href="#">阅读量：${replys.get(1).readCount} </a></p>

                        <!-- BEGIN CHAT PORTLET-->
                        <div class="widget" id="">
                            <div class="widget-body">
                                <div class="timeline-messages">


                                    <%--<!-- Comment -->--%>
                                    <%--<div class="msg-time-chat">--%>
                                    <%--<a href="#" class="message-img"><img class="avatar" src="images/avatar1.jpg" alt=""></a>--%>
                                    <%--<div class="message-body msg-in">--%>
                                    <%--<div class="text">--%>
                                    <%--<p style="font-size: 15px;" class="attribution"><a href="#">Mosaddek Hossain</a> at 1:55pm, 13th April 2013</p>--%>
                                    <%--<p style="font-size: 20px;" >Hello, How are you brother?</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<!-- /comment -->--%>

                                    <!-- Comment -->
                                    <div class="msg-time-chat">
                                        <a href="#" class="message-img"><img class="avatar" src="images/louzhu.png"
                                                                             alt=""></a>
                                        <div class="message-body msg-in">
                                            <div style="border: 0px" class="text">
                                                <p style="font-size: 15px;" class="attribution"><a href="#"
                                                 style="color: #3baae3">提问者：${replys.get(1).loginName}</a>${replys.get(1).sData}
                                                </p>
                                                <p style="font-size: 20px;">${replys.get(1).content} </p>


                                                <c:if test="${replys.get(1).sPic != null && replys.get(1).sPic != ''}">
                                                <a data-magnify="gallery" href="${replys.get(1).sPic}">
                                                    <img  style="width:25%;height:25% " src="${replys.get(1).sPic}" ></a>
                                                </c:if>
                                                 <c:if test="${replys.get(1).sPic1 != null && replys.get(1).sPic1 != ''}"></li>
                                                <a data-magnify="gallery" href="${replys.get(1).sPic1}">
                                                  <img   style="width:25%;height:25% " src="${replys.get(1).sPic1}">
                                                </a>
                                                </c:if>
                                            </div>
                                            </ul>


                                        </div>
                                    </div>
                                    <!-- /comment -->


                                    <c:if test="${replys.get(0)==null || fn:length(replys.get(0)) == 0}">
                                      <h3  style="color: #d12610" class="text-center">暂无回复</h3>
                                    </c:if>
                                    <c:forEach items="${replys.get(0)}" var="item" varStatus="status">
                                        <!-- Comment -->
                                        <div class="msg-time-chat">
                                            <c:if test="${item.role <2}">
                                                <a href="#" class="message-img"><img class="avatar" src="images/yonghu.png" alt=""></a>
                                                <div class="message-body msg-in">
                                                <div class="text">
                                                    <p style="font-size: 15px;" class="attribution"><a
                                                            href="#">${item.loginName}</a>${item.rData}</p>
                                            </c:if>

                                            <c:if test="${item.role >=2}">
                                                <a href="#" class="message-img"><img class="avatar" src="images/doctor.png" alt=""></a>
                                                    <div class="message-body msg-in">
                                            <div class="text">
                                                <p style="font-size: 15px;" class="attribution"><a
                                                        href="#" style="color: #d12610">医生：${item.loginName}</a>${item.rData}</p>
                                            </c:if>
                                                <p style="font-size: 20px;">${item.replyCont}</p>




                                                    <c:if test="${item.rPic != null && item.rPic !=''}">
                                                <a data-magnify="gallery" href="${item.rPic}">
                                                    <img   style="width:25%;height:25% " src="${item.rPic}"></a>
                                                    </c:if>
                                                    <c:if test="${item.rPic1 != null && item.rPic1 !=''}">
                                                <a data-magnify="gallery" href="${item.rPic1}">
                                                    <img   style="width:25%;height:25% " src="${item.rPic1}">
                                                </a>
                                                    </c:if>
                                                 </ul>
                                            </div>
                                        </div>
                                    </div>

                                        <!-- /comment -->
                                    </c:forEach>
                                        <div class="message-body msg-in">
                                            <div class="text">
                                                <p style="font-size: 15px;" class="attribution"><a
                                                        href="#" >${item.loginName}</a>${item.rData}</p>
                                                <p style="font-size: 20px;">${item.replyCont}</p>
                                            </div>
                                        </div>
                                </div>
                                    <%--<!-- Comment -->--%>
                                    <%--<div class="msg-time-chat">--%>
                                    <%--<a href="#" class="message-img"><img class="avatar" src="images/avatar1.jpg" alt=""></a>--%>
                                    <%--<div class="message-body msg-out">--%>
                                    <%--<div class="text">--%>
                                    <%--<p class="attribution"> <a href="#">Dulal Khan</a> at 2:01pm, 13th April 2013</p>--%>
                                    <%--<p>I'm Fine, Thank you. What about you? How is going on?</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<!-- /comment -->--%>

                                    <%--<!-- Comment -->--%>
                                    <%--<div class="msg-time-chat">--%>
                                    <%--<a href="#" class="message-img"><img class="avatar" src="images/avatar1.jpg" alt=""></a>--%>
                                    <%--<div class="message-body msg-in">--%>
                                    <%--<div class="text">--%>
                                    <%--<p class="attribution"><a href="#">Mosaddek Hossain</a> at 2:03pm, 13th April 2013</p>--%>
                                    <%--<p>Yeah I'm fine too. Everything is going fine here.</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<!-- /comment -->--%>

                                    <%--<!-- Comment -->--%>
                                    <%--<div class="msg-time-chat">--%>
                                    <%--<a href="#" class="message-img"><img class="avatar" src="images/avatar1.jpg" alt=""></a>--%>
                                    <%--<div class="message-body msg-out">--%>
                                    <%--<div class="text">--%>
                                    <%--<p class="attribution"><a href="#">Dulal Khan</a> at 2:05pm, 13th April 2013</p>--%>
                                    <%--<p>well good to know that. anyway how much time you need to done your task?</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<!-- /comment -->--%>
                                </div>

                            </div>
                            <!-- END CHAT PORTLET-->


                            <!---RESPONSES--->
                            <div style="widows: 100%;height: 1px;background: #a0a3a4;" class=""></div>
                            <div class="coment-form ">
                                <div class="container ">
                                    <h3>回复</h3>


                                    <div class="clearfix"></div>

                                    <div style="background:  #eeeeee;border: 0px; border-radius: 15px;"
                                         class=" dropzoneimg">
                                        <h1 id="h1" class="text-center text-info ">点击或把图片拖拽带这里</h1>
                                    </div>

                                    <textarea id="textarea" type="text" class="" onfocus="this.value = '';"
                                              onblur="if (this.value == '') {this.value = '内容...';}"
                                              required="">内容...</textarea>

                                    <button id="sub"
                                            style=" border: 0px;background: #0090CC;color: white;height: 40px;width: 120px;"
                                            class=" btn text-align-center hvr-shutter-out-horizontal">回复</a>


                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                        <script>


                        </script>

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
                <p>
                    除浙江省公安厅门户网注明之服务条款外，任何因使用本网站或与本网站连接的任何其他网站或网页而引致的意外、疏忽、合约毁坏、诽谤、感染电脑病毒、版权或其他知识产权纠纷及其造成的损失，天津医院官网概不负责，不承担任何法律责任。</p>
            </div>


            <div class="clearfix"></div>
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">

                            <form>
                                <h3>登录</h3>
                                <div id="logalert" class="hidden alert alert-warning">
                                    <a href="#" onclick="" class="close" data-dismiss="alert">
                                        &times;
                                    </a>
                                    <strong>警告！</strong>账号或者密码错误请重新登录
                                </div>
                                <input minlength="4" maxlength="8" id="log_name" type="text" placeholder="输入你的账号">
                                <input minlength="6" maxlength="16" id="lpassword" type="password" placeholder="输入你的密码">
                                <h4><a href="#">忘记密码</a> / <a href="#">更改密码</a></h4>
                                <div class="single-bottom">
                                    <input type="checkbox" id="brand" value="">
                                    <label for="brand"><span></span>记住密码</label>
                                </div>
                                <span id="log" style="width: 435px;height: 50px;" class="btn btn-info"><strong
                                        style="text-align:center;font-size:x-large ;">登录</strong></span>
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
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body real-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-right">
                            <form>
                                <h3>注册 </h3>
                                <table class="table">


                                    <tr>
                                        <td width="400px"><input id="login_name" maxlength="16" type="text"
                                                                 placeholder="请输入账号(4-10位数字、字母、下划线)"></td>
                                        <td style="vertical-align: middle;">
                                            <div id="account1" style="visibility: hidden;"
                                                 class="glyphicon glyphicon-ok"></div>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td><input id="password" type="password" maxlength="20"
                                                   placeholder="请输入密码(6-16位数字、字母、下划线)"></td>
                                        <td style="vertical-align: middle;" class="">
                                            <div id="pw1" style="visibility: hidden;"
                                                 class="glyphicon glyphicon-ok"></div>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td><input id="pwagain" type="password" maxlength="20" disabled=""
                                                   placeholder="请再次输入密码">
                                            <div id="pwalert" class="	alert alert-warning">
                                                <a href="#" class="close" data-dismiss="alert">
                                                    &times;
                                                </a>
                                                <strong>警告！</strong>两次输入密码不同。
                                            </div>
                                        </td>
                                        <td style="vertical-align: middle;" class="">
                                            <div id="pwagain1" style="visibility: hidden;"
                                                 class="glyphicon glyphicon-ok"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input id="pid" type="text" placeholder="请输入病人编号(可不输入)"></td>
                                        <td style="vertical-align: middle;" class="">
                                            <div id="pid1" style="visibility: hidden;"
                                                 class="glyphicon glyphicon-ok"></div>
                                        </td>
                                    </tr>
                                </table>
                                <span id="reg" onclick="onval()" style="width: 435px;height: 50px;"
                                      class="btn btn-info"><strong
                                        style="text-align:center;font-size:x-large ;">注册</strong></span>
                                <script>
                                </script>

                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a
                            href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Register -->
</body>
</html>