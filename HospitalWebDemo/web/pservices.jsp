<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<title>About</title>
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
	<script src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
 <script src="<%=basePath%>js/echarts.min.js"></script>

	<script src="<%=basePath%>js/bootstrap.js"> </script>
	<script src="<%=basePath%>js/jquery.md5.js" ></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->

<!--jqgrid-->
<!-- jqGrid组件基础样式包-必要 -->
		<link rel="stylesheet" href="<%=basePath%>jqgrid/css/ui.jqgrid.css" />
		
		<!-- jqGrid主题包-非必要 --> 
		<!-- 在jqgrid/css/css这个目录下还有其他的主题包，可以尝试更换看效果 -->
		<link rel="stylesheet" href="<%=basePath%>jqgrid/css/css/ui-lightness/jquery-ui-1.8.16.custom.css" />

		<!-- jquery插件包-必要 -->
		<!-- 这个是所有jquery插件的基础，首先第一个引入 -->

		<!-- jqGrid插件包-必要 -->
		<script type="text/javascript" src="<%=basePath%>jqgrid/js/jquery.jqGrid.src.js"></script>
		
		<!-- jqGrid插件的多语言包-非必要 -->
		<!-- 在jqgrid/js/i18n下还有其他的多语言包，可以尝试更换看效果 -->
		<script type="text/javascript" src="<%=basePath%>jqgrid/js/i18n/grid.locale-cn.js"></script>

	<script src="<%=basePath%>js/jquery.cookie.js" ></script>
	<script src="<%=basePath%>js/jqPaginator.js" ></script>
	<script src="<%=basePath%>js/pgrid.js" ></script>

	<script src="<%=basePath%>js/index.js"></script>
	<script src="<%=basePath%>js/pservice.js"></script>
<!--end jqgrid-->


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
	
		function h(){
	$("#select1").hide();
	};
	function h1(){
	$("#select2").hide();
	};
		function s(){
	$("#select1").show();
	};
	function s1(){
	$("#select2").show();
	};

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
				<h1>患者服务</h1>
			</div>
		</div>
		<!---banner--->
		<div class="content bg-warning">
		<ul id="myTab" class="nav nav-tabs">
			<li id="yisheng" class=" hidden dropdown">
		<a href="#" id="myTabDrop0" class="dropdown-toggle" 
		   data-toggle="dropdown">我的患者 <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop0">
			<li><a style="color: orange;" href="#patient" tabindex="-1" data-toggle="tab">
				患者列表</a>
			</li>
		
		</ul>
	</li>
<li class="dropdown">
		<a href="#" id="myTabDrop1" class="dropdown-toggle" 
		   data-toggle="dropdown">入院前服务 <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
			<li id="q1" ><a style="color: orange;" href="#cailiao" tabindex="-1" data-toggle="tab">
				必备材料</a>
			</li>
			<li id="q2"><a style="color: orange;" href="#policy" tabindex="-1" data-toggle="tab">
				医保政策</a>
			</li>
			<li id="q3"><a style="color: orange;" href="#yugu" tabindex="-1" data-toggle="tab">
				药品用量预估</a>
			</li>
			<li id="q4"><a style="color: orange;" href="#liucheng" tabindex="-1" data-toggle="tab">
				手术流程</a>
			</li>
		</ul>
	</li>
<li class="dropdown">
		<a href="#" id="myTabDrop2" class="dropdown-toggle" 
		   data-toggle="dropdown">住院服务 <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop2">
			<li><a style="color: orange;" href="#plan" tabindex="-1" data-toggle="tab">
				诊疗计划（术前）</a>
			</li>
			<li id="zchaxun"><a style="color: orange;" href="#ztsh" tabindex="-1" data-toggle="tab">
				状态信息查询（术后）</a>
			</li>
			<li id="zluru" ><a style="color: orange;" href="#luru" tabindex="-1" data-toggle="tab">
				状态信息录入（术后）</a>
			</li>
			<li><a style="color: orange;" href="#zouxiang" tabindex="-1" data-toggle="tab">
				病情趋势走向（术后）</a>
			</li>
		</ul>
	</li>
	

	<li class="dropdown">
		<a href="#" id="myTabDrop4" class="dropdown-toggle" 
		   data-toggle="dropdown">出院服务 <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
			<li><a style="color: orange;" href="#fuchalr" tabindex="-1" data-toggle="tab">
				复查结果录入</a>
			</li>
			<li><a style="color: orange;" href="#fuchacx" tabindex="-1" data-toggle="tab">
				复查结果查询</a>
			</li>
			<li><a style="color: orange;" href="#fuchacx" tabindex="-1" data-toggle="tab">
				关节评估查询</a>
			</li>
			<li><a style="color: orange;" href="#fuchacx" tabindex="-1" data-toggle="tab">
				关节评估记录管理</a>
			</li>	
			<li><a style="color: orange;" href="#fuchacx" tabindex="-1" data-toggle="tab">
				康复曲线</a>
			</li>
		</ul>
	</li>
</ul>
<div id="myTabContent" class=" tab-content">
	<div  class=" tab-pane fade" id="patient">
		<div  class="container">
			<div id="myTabContent1" class="hidden" >
	<table id="list2"   style="width: 500px;height:00px;"></table> 
		<div  id="pager2"></div>
		</div>	
		

	</div>
			</div>
	
	<div class="tab-pane fade in active " id="cailiao">

		<p id="caoliao" class="text-center">入院出院所需办理材料表</p>

	</div>
	<div class="tab-pane fade" id="policy">
		<div class="content">
			
		
			<h4 class="text-center">医保政策</h3>
			<div class="about-section">
				<div class="container">
					<div align="center" class="col-md-12 ">
				<div class="panel-group" id="accordion">
    <div id="p1" class="hidden panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a id="pol1" data-toggle="collapse" data-parent="#accordion"
                href="#collapseOne">
                
                                              </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse ">
            <div class="panel-body">
            	
             <p id="policy1">

   </p>
<h5 id="polic-time1"><span class="glyphicon glyphicon-time"></span ></h5>
            </div>
        </div>
    </div>
    <div id="p2"  class="hidden panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a id="pol2" data-toggle="collapse" data-parent="#accordion"
                href="#collapseTwo">

            </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse">
        <div class="panel-body">
            	
			<p id="policy2">

            </p>
          <h5 id="polic-time2"><span class="glyphicon glyphicon-time"></span >2017-7-7</h5>
        </div>
        </div>
    </div>
    <div id="p3" class="hidden panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a id="pol3" data-toggle="collapse" data-parent="#accordion"
                href="#collapseThree">

                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">
            	
             <p id="policy3">


        </p>
<h5 id="polic-time3"><span class="glyphicon glyphicon-time"></span  ></h5>
            </div>
        </div>
    </div>
      <div id="p4" class="hidden panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a id="pol4" data-toggle="collapse" data-parent="#accordion"
                href="#collapseFour">

                </a>
            </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse ">
            <div class="panel-body">
            	
             <p id="policy4">

   </p>
<h5 id="polic-time4"><span class="glyphicon glyphicon-time"></span ></h5>
            </div>
        </div>
    </div>
    <div id="p5" class="hidden panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a id="pol5" data-toggle="collapse" data-parent="#accordion"
                href="#collapseFive">

                </a>
            </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse ">
           <div class="panel-body">
            	
             <p id="policy5">

   </p>
<h5 id="polic-time5"><span class="glyphicon glyphicon-time"></span></h5>
            </div>
        </div>
    </div>
</div>
			 <ul id="polPage" class="pagination">
    <li ><a href="#">«</a></li>
    <li ><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li ><a href="#">6</a></li>
    <li><a href="#">»</a></li>
  </ul>
  </div>
					
				</div>
			</div>
			
			
			
			
		</div>
		
	</div>
	<div class="tab-pane fade" id="yugu">
<div class="offer-grids">
						<div class="col-md-6 offer-grid">
							<div class="bg-info offer-grid1">
							<div class=" column ">
			<form role="form">
				<div class="form-group">
					 <label >抗体</label><input type="text" class="form-control" id="kangti" />
				</div>
				<div class="form-group">
					 <label >过敏原</label><input type="text" class="form-control" id="guominyuan" />
				</div>
				<div class="form-group">
					 <label >抑制物</label><input type="text" class="form-control" id="yizhiwu" />
				</div>
				<div class="checkbox">
					 <label><input type="checkbox" />Check me out</label>
				</div> <button type="submit" class="btn btn-default">查询</button>
			</form>
		</div>
										<div class="clearfix"></div>
								</div>
							</div>
						
		</div>
						
						<div class="col-md-6 offer-grid">
								<div class="offer-grid1 bg-info">
									<h3 align="center" class="bg-danger" >药品用量</h3>
									<div class="offer1">
									
											<h5><label>$</label> 3,250 Per Month - <span>Condominium</span></h5>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh…</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						<div class="clearfix"></div>
				
	</div>
	<div  class="tab-pane fade" id="liucheng">
		<div  class="container">
	<div class="offer-grids">
						<div class="col-md-6 offer-grid">
							<div class="bg-info offer-grid1">
							<div class=" column ">
			<form role="form">
				<div class="form-group">
					 <h3 class="text-center text-info">输入手术名称查询详细信息</h3><input type="text" placeholder="手术名称" class="form-control" id="ssmc" />
				</div>
				
				<input type="submit" style="background: orange;" class="btn btn-block"></input>
			</form>
		</div>
										<div class="clearfix"></div>
								</div>
								<p>&nbsp;</p>
							</div>
						
		</div>
						
						<div class="col-md-6 offer-grid">
								<div class="offer-grid1 bg-info">
									<div class="offer1">
									
											<h3 class="text-info">在此功能中患者可以了解入院前、术前、术后的详细流程与康复训练要领</h3>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						<div class="clearfix"></div>
				
	</div>
			</div>
<div  class="tab-pane fade" id="plan">
		<div class="container">
					<div align="center" class="col-md-12 ">
				<div  class="panel-group" id="accordion">
    <div  class="panel panel-info">
        <div  class=" panel-heading">
            <h4  class=" panel-title">
                <a  data-toggle="collapse" data-parent="#accordion" 
                href="#collapse1">
                
                                             【 病史采集】  </a>
            </h4>
        </div>
        <div id="collapse1" class="panel-collapse collapse ">
            <div  class="panel-body">
            	
             <p id="polic1">
        <p class="text-left">1. 及时完成病史的采集，24小时内完成病历。
    </p>
    <p class="text-left">2. 内容应包括受伤的时间、机制、部位及伤后处理的经过。 </p>
    
            </div>
        </div>
    </div>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" 
                href="#collapse2">
               【 检 查】
            </a>
            </h4>
        </div>
        <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
            	
             <p id="polic2">
        <p class="text-left"> 1. 接诊后必须及时完成体格检查。
    </p>
    <p class="text-left">2. 尤其注意是否合并血气胸；锐利伤还应注意臂丛神经损伤及锁骨下血管的损伤。</p>
    <p class="text-left">3. 应摄锁骨X线片，如果体检怀疑胸腔损伤，应摄胸部X线片以利确诊。必要时行CT、MRI检查。</p>
    <p class="text-left">4.入院行三大常规、血型RH血型、凝血四项、生化全系、心电图、B超等，拟手术的病人有必要时行风湿三项、有高血压、心脏病史者行心脏彩超和心肌酶谱检查等。
   </p>
    
   
            </div>
        </div>
    </div>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" 
                href="#collapse3">
                【 诊 断】
                </a>
            </h4>
        </div>
        <div id="collapse3" class="panel-collapse collapse">
            <div class="panel-body">
            	
             <p id="polic3">
        <p class="text-left">1. 有明确的外伤史。
    </p>
    <p class="text-left">2. 伤处出现疼痛、肿胀、皮下瘀斑，有时局部隆起，伤侧肩及上臂拒动；局部压痛，有的可能触及到骨折端，可能触及骨擦感。由伤侧肩向锁骨方向纵向叩击痛阳性</p>
    <p class="text-left">3. 锁骨X线片可显示锁骨骨折及其移位情况</p>
            </div>
        </div>
    </div>
      <div class="panel panel-info">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a  data-toggle="collapse" data-parent="#accordion" 
                href="#collapse4">
              【治疗原则】
                </a>
            </h4>
        </div>
        <div id="collapse4" class="panel-collapse collapse ">
            <div class="panel-body">
            	
             <p id="polic4">
    <p class="text-left">1. 手法复位：锁骨固定带或横“8”字石膏固定4周。无移位或青枝骨折可直接用上法固定3周后拍摄X线片，骨折愈合可去除外固定。</p>
    <p class="text-left">2. 手术治疗：对锁骨骨折移位严重，骨折片刺破锁骨下血管或臂丛神经或胸膜顶，则在手术检查的同时行锁骨骨折切开复位、牢固内固定。也可根据患者的要求施行手术，常规使用锁骨重建钢板。</p>
    <p class="text-left">3．围手术期：麻醉前1小时用一次青霉素类、头孢一代、头孢二代抗生素其中一种（如头孢拉啶或头孢唑啉;头孢呋辛;头孢曲松等）。</p>
    <p class="text-left">4．术后预防性应用青霉素类、头孢一代、头孢二代抗生素其中一种3至5天 </p>
（如头孢拉啶或头孢唑啉;头孢呋辛;头孢曲松等）术后定期换药观察伤口情况。术后3天内常规复查手术部位x片，住院期间每周复查1次。术后3天复查血常规，各项检查如有异常随时复查。</p>
    <p>5. 一旦手术部位出现感染迹象，如术后持续发热，伤口疼痛、肿胀，白细胞增高，可考虑应用抗生素，作为治疗感染，应选用广谱，高效及敏感的抗生素（如头孢呋辛，头孢曲松），而且要有足够的剂量，在应用抗生素的同时，应给与全身支持疗法，当发现切口有脓性液时，应根据手术具体情况采用切开引流或闭合冲洗的方法，将脓性液排除。</p>
    <p>7. 如果估计病人有骨生长迟缓或特殊部位骨折可况选择使用促骨生长药1种。</p>
    <p>8. 中成药口服接骨七厘片、龙血竭胶囊或盘龙七片、无痛下功能锻炼，物理治疗。</p>
   </p>
   
            </div>
        </div>
    </div>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" 
                href="#collapse5">
               【 疗效标准】
                </a>
            </h4>
        </div>
        <div id="collapse5" class="panel-collapse collapse ">
           <div class="panel-body">
            	
             <p id="polic5">
        <p class="text-left"> 1. 骨折愈合：8周摄X线片复查骨折线消失。
    </p>
    <p class="text-left">2. 延迟愈合：4～8个月摄X线片复查，骨折线仍清晰。</p>
    <p class="text-left">3. 不愈合：8个月摄X线片骨折线仍清晰。</p>
   </p>
<h5 id="polic-time5"><span class="glyphicon glyphicon-time"></span>2017-7-7</h5>
            </div>
        </div>
    </div>
  <div class="panel panel-info">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" 
                href="#collapse6">
             【出院标准】 
                </a>
            </h4>
        </div>
        <div id="collapse6" class="panel-collapse collapse ">
           <div class="panel-body">
            	
             <p id="polic5">
    <p class="text-left">骨折功能复位，固定可靠，无近期并发症，可出院。门诊随访。</p>
    
   </p>
            </div>
        </div>
    </div>
			</div>
		
	</div>	


</div>
	</div>

<div  class="tab-pane fade" id="ztsh">
	<div id="main" class="center-block" style="height: 600px;width: 1000px;">
		
		
	</div>

</div>
<div  class="tab-pane fade" id="zouxiang">
	<div id="main1" class="center-block" style="height: 600px;width: 800px;">
		
		
	</div>
	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main1'),'vintage');

        // 指定图表的配置项和数据
        var option = {
            title: {
        text: '状态信息',
        subtext: '某某某'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['一月一日', '一月二日', '一月四日', '一月五日', '一月六日', '06:15', '07:30', '08:45', '10:00', '11:15', '12:30', '13:45', '15:00', '16:15', '17:30', '18:45', '20:00', '21:15', '22:30', '23:45']
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} 分'
        },
        axisPointer: {
            snap: true
        }
    },
    visualMap: {
        show: false,
        dimension: 0,
        pieces: [{
            lte: 6,
            color: 'green'
        }, {
            gt: 6,
            lte: 8,
            color: 'red'
        }, {
            gt: 8,
            lte: 14,
            color: 'green'
        }, {
            gt: 14,
            lte: 17,
            color: 'red'
        }, {
            gt: 17,
            color: 'green'
        }]
    },
    series: [
        {
            name:'恢复综合评分',
            type:'line',
            smooth: true,
            data: [30, 28, 25, 26, 27, 30, 55, 50, 40, 39, 38, 39, 40, 50, 60, 75, 80, 85, 88, 90],
            markArea: {
                data: [ [{
                    name: '早高峰',
                    xAxis: '07:30'
                }, {
                    xAxis: '10:00'
                }], [{
                    name: '晚高峰',
                    xAxis: '17:30'
                }, {
                    xAxis: '21:15'
                }] ]
            }
        }
    ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</div>
<div  class="tab-pane fade" id="luru">
		<div class="container">
			<div class="content">
				<div class="">
					<h4 class="text-center">录入患者每天的病情数据<small>（每天可多次录入）</small></h4>
					
					<p class="text">&nbsp;</p>
				</div>
			<form  id="form" action="" method="post" onsubmit="return toVaild()">
	
	<div id="wrap1" class=" bg-info form-group" >
		<label class="title">1、日常生活能力</label>
		<div class=" form-control">
	<label class=" radio-inline">
		<input class="bg-primary" type="radio" name="opl1" id="or11" value="10" checked="checked" > 独立完成
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl1" id="or12"  value="5"> 需要协助
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl1" id="or13"  value="2"> 不能完成
	</label>
	</div>
	</div>

<div id="wrap2" class=" bg-info form-group" >
		<label class="title">2、宅内行走能力</label>
		<div class="form-control">
	<label class=" radio-inline">
		<input class="" type="radio" name="opl2" id="or21" value="10" checked> 独立完成
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl2" id="or22"  value="5"> 需要协助
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl2" id="or23"  value="2"> 不能完成
	</label>
	</div>
	</div>		
			
			<div id="wrap3" class=" bg-info form-group" >
		<label class="title">3、上下斜坡能力</label>
		<div class="form-control">
	<label class=" radio-inline">
		<input class="" type="radio" name="opl3" id="or31" value="10" checked> 独立完成
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl3" id="or32"  value="5"> 需要协助
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl3" id="or33"  value="2"> 不能完成
	</label>
	</div>
	</div>
		
					<div id="wrap4" class=" bg-info form-group" >
		<label class="title">4、上下楼梯能力</label>
		<div class="form-control">
	<label class=" radio-inline">
		<input class="" type="radio" name="opl4" id="or41" value="10" checked> 独立完成
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl4" id="or42"  value="5"> 需要协助
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl4" id="or43"  value="2"> 不能完成
	</label>
	</div>
	</div>
			
					<div id="wrap5" class=" bg-info form-group " >
		<label class="title">5、承重限制</label>
		<div class="form-control">
	<label class=" radio-inline">
		<input  type="radio" name="opl5" id="or51" value="2" > 完全不能承重
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl5" id="or52"  value="4">  仅能些微承重（脚趾承重）
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl5" id="or53"  value="6"> 部分承重
	</label>
		<label class="radio-inline">
		<input type="radio" name="opl5" id="or54"  value="8"> 鼓励承重
	</label>

	<label class="radio-inline">
		<input type="radio" name="opl5" id="or55"  value="10" checked> 百分百承重
	</label>

	</div>
	</div>
			
				<div id="wrap6" class=" bg-info  form-group " >
		<label class="title">6、疼痛的性质</label>
		<div class=" form-control">
	<label class="radio-inline">
		<input  type="radio" name="opl6" id="or61" value="2" onclick='s()' > 麻木
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or62"  value="3" onclick='s()'>  刺射痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or63"  value="4" onclick='s()'> 胀痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or64"  value="5" onclick='s()'> 刺痛
	</label>
    <label class="radio-inline">
		<input type="radio" name="opl6" id="or65"  value="6" onclick='s()'> 烧灼
	</label>
<label class="radio-inline">
		<input type="radio" name="opl6" id="or66"  value="7"onclick='s()' > 酸痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or67"  value="8" onclick='s()'> 电击痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or68"  value="9" onclick='s()'> 放射痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or69"  value="10" onclick='s()'> 抽搐痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or610"  value="11" onclick='s()'  > 幻肢痛
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl6" id="or611"  value="16" onclick='h()' checked=""> 无疼痛感
	</label>
	
	</div>
	</div>

<div  id="select1" hidden="hidden" class="bg-info form-group " >
	

		
	<label class="title">疼痛时间</label>
    <select id="opt" class=" form-control ">
      <option value ="0.5">早上或者晚上痛</option>
      <option value="1">集中</option>
      <option value="1.5">分散</option>
      <option value="2">经常</option>
      <option value="2.5">断续</option>
      <option value="3">偶尔</option>
    </select>
    
   
	</div>
	<div class="clearfix"></div>
	<div id="wrap7" class="bg-info form-group " >
		<label class="title">7、诊视（检查受伤部位附近是否有肿胀.变形.皮肤颜色改变......等等情形）</label>
		<div class="form-control">
	<label class=" radio-inline">
		<input class="" type="radio" name="opl7" id="or71" value="9" checked > 在正常可接受范围内
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl7" id="or72"  value="7">  肿胀
	</label>
	<label class="radio-inline">
		<input type="radio" name="opl7" id="or73"  value="5"> 皮肤色泽暗紫
	</label>
		<label class="radio-inline">
		<input type="radio" name="opl7" id="or74"  value="3"> 伤口愈合差
	</label>

	<label class="radio-inline">
		<input type="radio" name="opl7" id="or75"  value="1" > 关节变形
	</label>

	</div>
	</div>
	
<div  class="bg-info form-group">
		<label class=" title">8、患侧肢体长度与周径 </label>
		<div id="ale" hidden="hidden" class="alert alert-warning">
	<a href="#" class="close"  data-dismiss="alert">
		&times;
	</a>
	<strong>抱歉！</strong>输入值只能是数字，范围为0-50且不能填空值。
</div>
		<table style="font-size: 20px;" class="table">
			<tr><td >	<div >
    <label class="title-wrapper" >对比健侧肢体长度：
    
      <input  maxlength="2" type="text" style="width: 50px;" id="cd" >CM</label>
  </div></td>
  
			<td><div >
    <label style="" class="title-wrapper" >对比健侧肢体周径：
    <input maxlength="2"  type="text"  style=" width: 50px;" id="zj">CM</label>
  </div>
			</td>
			</tr>
		
		</table>
			
	</div>
	
		<div id="wrap8" class="bg-info form-group " >
		<label class="title">9、关节活动能力（含主动被动生理运动以及关节附属运动）</label>
		<div class=" form-control">
			
	<label class="radio-inline">
		<input  type="radio" name="opl8" id="or81" value="8" onclick='h1()' checked="checked"> 在正常可接受范围内
	</label>
	<label class="radio-inline">
		<input  type="radio" name="opl8" id="or82" value="1" onclick='s1()' > 异常
	</label>
	</div>
	</div>
	
	<div  id="select2" hidden="hidden" class="bg-info form-group">
	
	
		<label >异常程度（多选）</label>
		<div class="form-control">
		 <label class="checkbox-inline">
        <input type="checkbox" id="ilcb1" value="2"> 屈曲受限
    </label>
    <label class="checkbox-inline">
        <input type="checkbox" id="ilcb2" value="2">伸直受限
    </label>
    <label class="checkbox-inline">
        <input type="checkbox" id="ilcb3" value="2"> 旋转受限
    </label>
     <label class="checkbox-inline">
        <input type="checkbox" id="ilcb4" value="2"> 附属活动受限
    </label>
		</div>
	</div>
	
		<div id="wrap9" class="form-group bg-info" >
		<label class="title">10、功能性活动</label>
		<div class=" form-control">
			
	<label class="radio-inline">
		<input  type="radio" name="opl9" id="or91" value="9"  checked="checked"> 独立
	</label>
	<label class="radio-inline">
		<input  type="radio" name="opl9" id="or92" value="5"  > 腋拐
	</label>
	<label class="radio-inline">
		<input  type="radio" name="opl9" id="or93" value="2"  > 不能完成或其他
	</label>
	</div>
	</div>


			</form>
				<button id="submit" class="btn btn-lg btn-block btn-info">提交</button>
				<p>&nbsp;</p>
			</div>
			
		</div>

</div>
	<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main1'),'vintage');

        // 指定图表的配置项和数据
        var option = {
            title: {
        text: '状态信息',
        subtext: '某某某'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'cross'
        }
    },
    
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['一月一日', '一月二日', '一月四日', '一月五日', '一月六日', '06:15', '07:30', '08:45', '10:00', '11:15', '12:30', '13:45', '15:00', '16:15', '17:30', '18:45', '20:00', '21:15', '22:30', '23:45']
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} 分'
        },
        axisPointer: {
            snap: true
        }
    },
    visualMap: {
        show: false,
        dimension: 0,
        pieces: [{
            lte: 6,
            color: 'green'
        }, {
            gt: 6,
            lte: 8,
            color: 'red'
        }, {
            gt: 8,
            lte: 14,
            color: 'green'
        }, {
            gt: 14,
            lte: 17,
            color: 'red'
        }, {
            gt: 17,
            color: 'green'
        }]
    },
    series: [
        {
            name:'恢复综合评分',
            type:'line',
            smooth: true,
            data: [30, 28, 25, 26, 27, 30, 55, 50, 40, 39, 38, 39, 40, 50, 60, 75, 80, 85, 88, 90],
            markArea: {
                data: [ [{
                    name: '早高峰',
                    xAxis: '07:30'
                }, {
                    xAxis: '10:00'
                }], [{
                    name: '晚高峰',
                    xAxis: '17:30'
                }, {
                    xAxis: '21:15'
                }] ]
            }
        }
    ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</div>
<script>
	$(function () {
		$('#myTab li:eq(1) a').tab('show');
	});
</script>
			
			
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

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel2">
				 <form method="post" name="order" id="order" action="" title=''
      style="width: 350px; margin: 0px;">
      <fieldset>
        <legend>患者信息</legend>
        <table class="table">
          <tbody>
            <tr>
              <td>患者编号:</td>
              <td><input readonly="true" type="text"  name="p_id" /></td>
            </tr>
            <tr>
              <td>患者姓名:</td>
              <td><input readonly="true" type="text"  name="p_name" /></td>
            </tr>
            <tr>
              <td>身份证号:</td>
              <td><input readonly="true" type="text" name="id_card" /></td>
            </tr>
            <tr>
              <td>性别:</td>
              <td><input readonly="true" type="text" name="sex" /></td>
            </tr>
             <tr>
              <td>年龄:</td>
              <td><input readonly="true" type="text" name="age" /></td>
            </tr>
            <tr>
              <td>治疗项目:</td>
              <td><input readonly="true" type="text" name="t_project" /></td>
            </tr>
            <tr>
              <td>入院日期:</td>
              <td><input readonly="true" type="text" name="be_hos_date" /></td>
            </tr>
            <tr>
              <td>联系电话:</td>
              <td><input readonly="true" type="text" name="call_num" /></td>
            </tr>
            <tr>
              <td>备注:</td>
              <td><textarea  rows="10" readonly="true" name="remarks"></textarea></td>
            </tr>
           
          </tbody>
        </table>
      </fieldset>
    </form>
				</h4>
			</div>
			<div class="modal-body">
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div>
	</div>
	<!-- /.modal -->
	

<!--
	 模态框（Modal） 
-->	
<div >
	<div class="modal fade" id="myModal4" tabindex="1" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel4">
				 <form method="post" name="order1" id="order1" action="" title=''
      style="width: 350px; margin: 0px;">
      <fieldset>
        <legend>患者信息</legend>
        <table class="table">
          <tbody>
            <tr>
              <td>病史采集:</td>
              <td><input  type="text"  name="idcard" /></td>
            </tr>
            <tr>
              <td>检查:</td>
              <td><input  type="textarea"  name="pname" /></td>
            </tr>
            <tr>
              <td>诊断:</td>
              <td><input  type="text" name="idcard" /></td>
            </tr>
            <tr>
              <td>治疗原则:</td>
              <td><input  type="text" name="gender" /></td>
            </tr>
             <tr>
              <td>疗效标准:</td>
              <td><input  type="text" name="age" /></td>
            </tr>
            <tr>
              <td>出院标准:</td>
              <td><input  type="text" name="tproject" /></td>
            </tr>
            <tr>
              <td>出院标准:</td>
              <td><input   type="text" name="pid" /></td>
            </tr>
           
          </tbody>
        </table>
      </fieldset>
    </form>
				</h4>
			</div>
			<div class="modal-body">
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div>
		</div>
	<!-- /.modal -->

	<!-- /.moda2 -->
</div>
		<div id="scModal" class="modal fade"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">评估分数</h4>
					</div>
					<div class="modal-body">
						<h3 class="text-success" id="mscore">您此次的评估分数为：</h3>
						<h2 class="text-warning">注意：此项评估只能大致为您现在的健康状态做出评估，并不能完全代表您的健康状态。</h2>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.moda2 -->
</div>

</body>
</html>