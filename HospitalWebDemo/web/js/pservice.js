

$(document).ready(function () {
$('#polPage').jqPaginator({
        totalPages: 1,
        visiblePages: 1,
        currentPage: 1,
        first: '<li> <a href="javascript:void(0);">首页</a></li>',
        prev: '<li ><a href="javascript:void(0);">上一页</a></li>',
        next: '<li ><a href="javascript:void(0);">下一页</a></li>',
        last: '<li ><a href="javascript:void(0);">末页</a></li>',
        page: '<li class="active"><a href="javascript:void(0);">{{page}}</a></li>',
        onPageChange: function (num, type) {

           policy(num)
        }
    });


    $('#q1').on("click",function () { cailiao()})
    $('#zchaxun').on("click",function () { assessment()})
    $('#submit').on("click",function () {survey() })
    $('#jihua').on("click",function () {plan() })
})

function cailiao() {

    $.ajax({
        type : 'POST',
        contentType : 'application/json',//注意类型
        /**
         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
         */
        processData : false,
        url :'userhelp/hosinfo',
        dataType : 'json',

        success : function(data) {
            $("#cailiao").empty()
            $("#cailiao").append('\t<div class="bs-docs-example">\n' +
                '\t\t\t\t\t<table class="table table-bordered">\n' +
                '\t\t\t\t\t\t<thead>\n' +
                '\t\t\t\t\t\t\t<tr>\n' +
                '\t\t\t\t\t\t\t\t<th>#</th>\n' +
                '\t\t\t\t\t\t\t\t<th>所需材料</th>\n' +
                '\n' +
                '\t\t\t\t\t\t\t</tr>\n' +
                '\t\t\t\t\t\t</thead>\n' +
                '\t\t\t\t\t\t<tbody>\n' +
                '\t\t\t\t\t\t\t<tr>\n' +
                '\t\t\t\t\t\t\t\t<td >1</td>\n' +
                '\t\t\t\t\t\t\t\t<td>'+data.hosinfo1+'</td>\n' +
                '\n' +
                '\t\t\t\t\t\t\t</tr>\n' +
                '\t\t\t\t\t\t\t<tr>\n' +
                '\t\t\t\t\t\t\t\t<td >2</td>\n' +
                '\t\t\t\t\t\t\t\t<td>'+data.hosinfo2+'</td>\n' +
                '\n' +
                '\t\t\t\t\t\t\t</tr>\n' +
                '\t\t\t\t\t\t\t<tr>\n' +
                '\t\t\t\t\t\t\t\t<td>3</td>\n' +
                '\t\t\t\t\t\t\t\t<td>'+data.hosinfo3+'</td>\n' +
                '\n' +
                '\t\t\t\t\t\t\t</tr>\n' +
                '\t\t\t\t\t\t<tr>\n' +
                '\t\t\t\t\t\t\t<td>3</td>\n' +
                '\t\t\t\t\t\t\t\t<td>'+data.hosinfo4+'</td>\n' +
                '\n' +
                '\t\t\t\t\t\t\t</tr>\n' +
                '\t\t\t\t\t\t</tbody>\n' +
                '\t\t\t\t\t</table>\n' +
                '\t\t\t\t</div>')




        },
        error : function() {
            alert('请求错误');

        }
    })
}

function policy(nums) {


    if(loginstate==0){

        return false
    }


    if ( user.role==2 && patient==null){

        return false
    }
    var json = 'districtID='+patient.districtID+'&curPage='+nums;



    $.ajax({
        type : 'GET',
        contentType : 'application/x-www-form-urlencoded',//注意类型
        /**
         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
         */
        processData : false,
        url :'userhelp/policy',
        dataType : 'json',
          data:json,
        success : function(data) {

            $('#polPage').jqPaginator('option', {
                totalPages: data.pages,
                visiblePages: (data.pages>10)?10:data.pages
            });

           var policy = data.list;
            var name0 = "#p"
              var name1 = "#pol"

              var name2 ="#policy"
              var name3 ="#polic-time"
           for (i=1;i<=5;i++){
               $(name0+i).removeClass("hidden")
               $(name1+i).text(policy[i-1].polName)
               $(name2+i).html(policy[i-1].polContent)
               $(name3+i).html('<span class="glyphicon glyphicon-time">'+policy[i-1].polData)
           }
 },
        error : function() {
            alert('请求错误');

        }
    })
}





function survey() {


    if(loginstate==0){
        alert("您还没有登录，请先登录！")
        return false
    }
    if ( user.role==2 && patient==null){
        alert("请您在患者列表中选择一名患者")
        return false
    }

    var num1=$("#cd").val();
    var num2=$("#zj").val();
    if((num1 >=0 && num1<=50)&&(num2 >=0 && num2<=50)&& num1!="" && num2!=""){

    } else{

        $("#ale").show();
        return false;
    }


    var  json={
        "opl1":$("#wrap1 input:radio:checked").val(),
       "opl2":$("#wrap2 input:radio:checked").val(),
       "opl3":$("#wrap3 input:radio:checked").val(),
        "opl4":$("#wrap4 input:radio:checked").val(),
        "opl5":$("#wrap5 input:radio:checked").val(),
       "opl6":$("#wrap6 input:radio:checked").val(),
        "opl7":$("#wrap7 input:radio:checked").val(),
       "opl8":$("#wrap8 input:radio:checked").val(),
        "opl9":$("#wrap9 input:radio:checked").val(),
        "cd":$("#cd").val(),
        "zj":$("#zj").val(),
       "select":$("#select2 input:checkbox:checked").length,
        "opt":$("#opt option:selected").val(),
       "pID":patient.p_id
    }

    $.ajax({
        type : 'POST',
        contentType : 'application/json',//注意类型
        processData : false,
        url :'userhelp/survey',
        dataType :'json',
        data:JSON.stringify(json),
        success : function(data) {

              if (data.score=="ban"){
                  $("#mscore").text("每天只能进行三次评估！")
                  $("#mscore").removeClass("text-success")
                  $("#mscore").addClass("text-warning")
              }else
            $("#mscore").text("您此次的评估分数为："+data.score)
            $("#scModal").modal('toggle')




        },
        error : function() {
            alert('请求错误');

        }
    })

}


function assessment() {


    if(loginstate==0){
         alert("请登录")
        return false
    }
    if ( user.role==2 && patient==null){
        alert("请您在患者列表中选择一名患者")
        return false
    }

     myChart = echarts.init(document.getElementById('main'),'vintage');
    myChart.showLoading();
var postData= "pID="+patient.p_id

    $.ajax({
        type : 'GET',
        contentType : 'application/x-www-form-urlencoded',//注意类型
        processData : false,
        url :'userhelp/assessment',
        dataType :'json',
        data: postData,
        success : function(data) {


            var tabdate=[];
            var tabdscore=[];

            for (i=0;i<data.length;i++){
                tabdate.push(data[i].eTime)
                tabdscore.push(data[i].pScore)

            }

        paintChart(tabdate,tabdscore)



        },
        error : function() {
            alert('请求错误');

        }
    })
    }

    
function paintChart(tabdata,tabscore) {


   // 指定图表的配置项和数据
    var option = {
        dataZoom: [
            {
                id: 'dataZoomX',
                type: 'slider',
                xAxisIndex: [0]

            }

        ],
        title: {
            text: '状态信息',
            subtext:  patient.p_name
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
            data: tabdata
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
        series: [
            {
                name:'恢复综合评分',
                type:'line',
                smooth: true,
                data:  tabscore ,
                markArea: {
                    data: [
                        [{
                        name: '状态较差',

                        yAxis: '0'
                    }, {
                        yAxis: '40'
                    }],
                        [{
                        name: '状态非较好',
                        yAxis: '80'
                    }, {
                        yAxis: '100'
                    }] ]
                }
            }
        ] ,visualMap: {
            show: false,

            dimension: 0,
            pieces: [
            //     {
            //     lte: 5,
            //     color: 'green'
            // }, {
            //     gt: 5,
            //     lte:8,
            //     color: 'red'
            // }, {
            //     gt: 8,
            //     lte: 11,
            //     color: 'blue'
            // }, {
            //     gt: 11,
            //     lte:14,
            //     color: 'yellow'
            // }, {
            //     gt: 14,
            //     color: 'green'
            // }
            ]
        }

    };

    var j = 0;

    for(let i = 0; i < tabscore.length; i++) {
        if (80&&tabscore[i] <40&&tabscore[i+1] <40) {
            option.visualMap.pieces[j] = {gte: i-1 , lte: i+1, color: 'red'};
            j++;
        }
    }
    for(let i = 0; i < tabscore.length; i++) {
        if ((tabscore[i] > tabscore[i - 1])) {
            option.visualMap.pieces[j] = {gte: i-1 , lte: i , color: 'blue'};
            j++;
        }
    }
    for(let i = 0; i < tabscore.length; i++) {
        if ((tabscore[i] < tabscore[i - 1])) {
            option.visualMap.pieces[j] = {gte: i-1 , lte: i , color: 'yellow'};
            j++;
        }
    }
    for(let i = 0; i < tabscore.length; i++) {
        if(tabscore[i] == tabscore[i + 1]&& tabscore[i - 1] ==tabscore[i]) {
            option.visualMap.pieces[j] =  {gte:i-1,lte:i,color:'blue'};
            j++;
        }
    }
    for(let i = 0; i < tabscore.length; i++) {
        if (80&&tabscore[i] > 80&&tabscore[i+1] > 80) {
            option.visualMap.pieces[j] = {gte: i-1 , lte: i+1, color: 'green'};
            j++;
        }
    }
            myChart.hideLoading();
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}



function plan() {


    if(loginstate==0){

        return false
    }
    if ( user.role==2 && patient==null){
        alert("请您在患者列表中选择一名患者")
        return false
    }

    var json = 'p_id='+patient.p_id



    $.ajax({
        type : 'GET',
        contentType : 'application/x-www-form-urlencoded',//注意类型
        /**
         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
         */
        processData : false,
        url :'plan',
        dataType : 'json',
        data:json,
        success : function(data) {


                 if (data==null)
                     return
            else {


            $("#polic1").empty()
            $("#polic2").empty()
            $("#polic3").empty()
            $("#polic4").empty()
            $("#polic5").empty()
                $("#polic1").text(data.bingshi)
                $("#polic2").text(data.jiancha)
                $("#polic3").text(data.zhenduan)
                $("#polic4").text(data.zhiliao)
                $("#polic5").text(data.chuyuan)

                 }

        },
        error : function() {
            alert('请求错误');

        }
    })
}
