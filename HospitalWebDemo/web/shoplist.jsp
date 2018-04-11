<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
    <meta charset="utf-8">
    <title>药品信息</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content=" description" name="description">
    <meta content=" keywords" name="keywords">
    <meta content="keenthemes" name="author">

    <meta property="og:site_name" content="-CUSTOMER VALUE-">
    <meta property="og:title" content="-CUSTOMER VALUE-">
    <meta property="og:description" content="-CUSTOMER VALUE-">
    <meta property="og:type" content="website">
    <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
    <meta property="og:url" content="-CUSTOMER VALUE-">

    <link rel="<%=basePath%>shortcut icon" href="favicon.ico">

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <!-- Fonts END -->

    <!-- Global styles START -->
    <link href="<%=basePath%>assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=basePath%>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Global styles END -->

    <!-- Page level plugin styles START -->
    <link href="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="<%=basePath%>assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="<%=basePath%>assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
    <link href="<%=basePath%>assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="<%=basePath%>assets/pages/css/components.css" rel="stylesheet">
    <link href="<%=basePath%>assets/corporate/css/style.css" rel="stylesheet">
    <link href="<%=basePath%>assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>assets/corporate/css/style-responsive.css" rel="stylesheet">
    <link href="<%=basePath%>assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="<%=basePath%>assets/corporate/css/custom.css" rel="stylesheet">
    <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
 

    <!-- BEGIN TOP BAR -->
    <div style="background: #f0f0f0" class=" pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>


                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->

            </div>
        </div>
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      
    </div>
    <!-- Header END -->

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1>药品查询</h1>
        <em>超过4000种药品</em>
      </div></div>
    </div>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.jsp">首页</a></li>
            
            <li class="active">药品查询</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
              <li  name='1' class="text list-group-item clearfix active"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 胃肠类</a></li>
              <li  name="2"   class="text list-group-item clearfix"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 补益安神类</a></li>
              <li  name="3"  class="text list-group-item clearfix"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 外用药</a></li>
              <li  name="4"   class="text list-group-item clearfix"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 风湿骨病类</a></li>
              <li  name="5"   class="text list-group-item clearfix"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 感冒止咳类</a></li>
              <li  name="6"   class="text list-group-item clearfix"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 心脑血管类</a></li>
             <ul class="list-group  sidebar-menu">
                 <li  class="list-group-item clearfix dropdown "><a href="javascript:void(0);" class="collapsed">
                <i class="fa fa-angle-right"></i>
                保健类
              </a>
                <ul class="dropdown-menu">
                  <li class="text"   name="7"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 老年人保健类</a></li>
                  <li class="text"  name="8"><a href="javascript:void(0)"><i class="fa fa-angle-right"></i> 宠物保健类</a></li>
                </ul>
              </li>
            </ul>

            </ul>




          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">

            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <div id="i1" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                  	<!--assets/pages/img/products/model1.jpg-->
                    <img id="p1" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a id="bp1" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                      <a name="0" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                    <!--assets/pages/img/products/model1.jpg-->
                  </div>
                  <h3 id="m1">盐酸左西替利嗪</h3>
                  <div id="c1" class="pi-price">￥29.00</div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i2" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p2" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a id="bp2"  href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                      <a name="1" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m2">Berry Lace Dress</h3>
                  <div id="c2" class="pi-price">$29.00</div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i3" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p3" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a id="bp3" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                      <a name="2" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m3">Berry Lace Dress 2</h3>
                  <div id="c3" class="pi-price">$29.00</div>
                </div>
              </div>              
              <!-- PRODUCT ITEM END -->
            </div>
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <div id="i4" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p4" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp4" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="3" href="#product-pop-up" class="btn btn-default fancybox-fast-view">看看</a>
                    </div>
                  </div>
                  <h3 id="m4">Berry Lace Dress Berry Lace Dress</h3>
                  <div id="c4" class="pi-price">$29.00</div>
                    <div class="sticker sticker-new"></div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i5" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p5" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp5" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="4" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m5">Berry Lace Dress</h3>
                  <div id="c5" class="pi-price">$29.00</div>
                  <div class="sticker sticker-new"></div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i6" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p6" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp6" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="5" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m6">Berry Lace Dress</h3>
                  <div id="c6" class="pi-price">$29.00</div>
                </div>
              </div>              
              <!-- PRODUCT ITEM END -->
            </div>
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <div id="i7" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p7" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp7" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="6" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m7">Berry Lace Dress</h3>
                  <div id="c7" class="pi-price">$29.00</div>
                  
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i8" class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p8" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp8" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="7" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m8" > Berry Lace Dress</h3>
                  <div id="c8" class="pi-price">$29.00</div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <div id="i9"  class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img id="p9" src="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a id="bp9" href="http://www.xiuzheng.com/d/file/jtcp/byasl/2017-12-20/5dde06fa779f9b81f446da06be794149.jpg" class="btn btn-default fancybox-button">大图</a>
                        <a name="8" href="#product-pop-up" class="btn btn-default fancybox-fast-view">查看</a>
                    </div>
                  </div>
                  <h3 id="m9" >111Berry Lace Dress</h3>
                  <div id="c9" class="pi-price">$29.00</div>
                  <div class="sticker sticker-sale"></div>
                    <div class="sticker sticker-new"></div>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
            </div>
            <!-- END PRODUCT LIST -->
            <!-- BEGIN PAGINATOR -->
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10 total</div>
              <div class="col-md-8 col-sm-8">
                <ul id="shopPag" class="pagination pull-right">
                  <li><a href="javascript:;">&laquo;</a></li>
                  <li><a href="javascript:;">1</a></li>
                  <li><span>2</span></li>
                  <li><a href="javascript:;">3</a></li>
                  <li><a href="javascript:;">4</a></li>
                  <li><a href="javascript:;">5</a></li>
                  <li><a href="javascript:;">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- END PAGINATOR -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>



   

    <!-- BEGIN PRE-FOOTER -->
    <div class="pre-footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN BOTTOM ABOUT BLOCK -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>About us</h2>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo consequat. </p>
            <p>Duis autem vel eum iriure dolor vulputate velit esse molestie at dolore.</p>
          </div>
          <!-- END BOTTOM ABOUT BLOCK -->
          <!-- BEGIN BOTTOM INFO BLOCK -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Information</h2>
            <ul class="list-unstyled">
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Delivery Information</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Customer Service</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Order Tracking</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Shipping & Returns</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contact Us</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Careers</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Payment Methods</a></li>
            </ul>
          </div>
          <!-- END INFO BLOCK -->

          <!-- BEGIN TWITTER BLOCK --> 
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2 class="margin-bottom-0">Latest Tweets</h2>
            <a class="twitter-timeline" href="https://twitter.com/twitterapi" data-tweet-limit="2" data-theme="dark" data-link-color="#57C8EB" data-widget-id="455411516829736961" data-chrome="noheader nofooter noscrollbar noborders transparent">Loading tweets by @keenthemes...</a>      
          </div>
          <!-- END TWITTER BLOCK -->
          
          <!-- BEGIN BOTTOM CONTACTS -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Our Contacts</h2>
            <address class="margin-bottom-40">
              35, Lorem Lis Street, Park Ave<br>
              California, US<br>
              Phone: 300 323 3456<br>
              Fax: 300 323 1456<br>
              Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
              Skype: <a href="skype:metronic">metronic</a>
            </address>
          </div>
          <!-- END BOTTOM CONTACTS -->
        </div>
        <hr>
        <div class="row">
     
      
        </div>
      </div>
    </div>
    <!-- END PRE-FOOTER -->

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-4 col-sm-4 padding-top-10">
            2017 © Keenthemes. ALL Rights Reserved. 
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-4 col-sm-4">
            <ul class="list-unstyled list-inline pull-right">
              <li><img src="assets/corporate/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
              <li><img src="assets/corporate/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
              <li><img src="assets/corporate/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
              <li><img src="assets/corporate/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
              <li><img src="assets/corporate/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
          <!-- BEGIN POWERED -->
          <div class="col-md-4 col-sm-4 text-right">
            <p class="powered">Copyright &copy; 2017.Company name All rights reserved.</p>
          </div>
          <!-- END POWERED -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->

    <!-- BEGIN fast view of a product -->
    <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                  	<!--assets/pages/img/products/model7.jpg-->
                    <img id="detailpic"  src="http://localhost:8081/Proimg/1f448d5db5eb1e99fde2c955198bee29.jpg" alt="Cool green dress with red bell" class="img-responsive">

                  </div>
                
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h1 id="detailname" >盐酸左替利西嗪片</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>￥</span>47.00</strong>
                    
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                  <div id="detail" class="widget-body" style="display: block;">
                                    <dl>
                                        <dt >成分</dt>
                                        <dd id="chengfen">本品主要成分为盐酸左利西嗪</dd>
                                        <dt >适应症</dt>
                                        <dd id="shiyingzheng">治疗下述疾病的过敏相关症状，如季节性过敏性鼻炎、常年性过敏性鼻炎</dd>
                                        <dt>用法用量</dt>
                                        <dd id="yongfa">各大药房均有销售</dd>
                                        <dt>规格</dt>
                                        <dd id="guige">各大药房均有销售</dd>
                                        <dt>其他</dt>
                                        <dd id="qita">各大药房均有销售</dd>
                                    </dl>
                                </div>
                  </div>
                  <div class="product-page-options">
                  
                   
                  </div>
                  
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    </div>
    <!-- END fast view of a product -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="<%=basePath%>assets/plugins/respond.min.js"></script>
    <![endif]-->  
    <script src="<%=basePath%>js/jquery-1.11.1.min.js" type="text/javascript"></script>

    <script src="<%=basePath%>assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jqPaginator.js" ></script>
    <script src="<%=basePath%>js/shoplist.js" ></script>
    <script src="<%=basePath%>assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="<%=basePath%>assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="<%=basePath%>assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='<%=basePath%>assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="<%=basePath%>assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="<%=basePath%>assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <script src="<%=basePath%>assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/jquery-ui.min.js" type="text/javascript"></script><!-- for slider-range -->

    <script src="<%=basePath%>assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();


            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>