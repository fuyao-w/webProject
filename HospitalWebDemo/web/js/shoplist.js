
var typeid =1;
$(document).ready(function () {

    setPaginator(typeid)
    $("a[href='#product-pop-up']").on("click",function () {
        var num= $(this).siblings().attr("id").substr(2);
        var src = $("#p"+num).attr("src");
        $("#detailpic").attr("src",src)
        $("img.zoomImg").attr("src",src)
        Layout.initImageZoom();
    });



});

function setPaginator(typeid) {
    $('#shopPag').jqPaginator({
        totalPages: 20,
        visiblePages: 4,
        currentPage: 1,
        first:'<li ><a href="javascript:void(0);">&laquo;</a></li>',
        prev: '<li ><a href="javascript:void(0);">&lt;</a></li>',
        next: '<li ><a href="javascript:void(0);">&gt;</a></li>',
        last: '<li ><a href="javascript:void(0);">&raquo;</a></li>',
        page: '<li><span>{{page}}</span></li></a></li>',
        onPageChange: function (num, type) {

            showDrug(num,typeid);
        }
    });


    $("li.text").on("click",function () {

        $("li.text").unbind()

        resub($(this).attr("name"))

    })

    $("a.fancybox-fast-view").on("click",function () {
        if (list[$(this).attr("name")].drName!=null)
        $("#detailname").text( list[$(this).attr("name")].drName)
        else
            $("#detailname").text("暂无")

        if (list[$(this).attr("name")].drMaterial!=null)
        $("#chengfen").text( list[$(this).attr("name")].drMaterial)
        else
            $("#chengfen").text("暂无")

        if (list[$(this).attr("name")].drEffCon!=null)
        $("#shiyingzheng").text( list[$(this).attr("name")].drEffCon)
        else
            $("#shiyingzheng").text("暂无")

        if (list[$(this).attr("name")].eatDos!=null)
        $("#yongfa").text( list[$(this).attr("name")].eatDos)
        else
            $("#yongfa").text("暂无")

        if (list[$(this).attr("name")].specifi!=null)
        $("#guige").text( list[$(this).attr("name")].specifi)
        else
            $("#guige").text("暂无")

        if (list[$(this).attr("name")].others!=null)
        $("#qita").text(list[$(this).attr("name")].others)
        else
            $("#qita").text("暂无")





            })


}

function resub (id) {
      typeid =id;

    if(typeid!=undefined){

        setPaginator(typeid)
    }
}
var list
function showDrug(num,typeid) {

    var json = 'typeID='+typeid+'&curPage='+num;

    $.ajax({
        type : 'GET',
        contentType : 'application/x-www-form-urlencoded',//注意类型
        /**
         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
         */
        processData : false,
        url :'userhelp/showshop',

        data:json,
        success : function(data) {
            console.log(JSON.stringify(data));
             list = data.list;
            if(list.length==0){
                alert("暂无商品");

                return;
            }

            $('#shopPag').jqPaginator('option', {
                totalPages: data.pages,
                visiblePages: (data.pages>10)?10:data.pages
            });



            var i = 0;
            for(i;i<list.length;i++){
                var name = '#m'+(i+1).toString();
                var pname ='#p'+(i+1).toString();
                var bpname ='#bp'+(i+1).toString();
                var name1 = '#i'+(i+1).toString();
            $(name).text(list[i].drName);
            $(pname).attr('src',list[i].drPic);
            $(bpname).attr('href',list[i].drPic);

                $(name1).show()
            }

            while(i<8){
             var name = '#i'+(i+1).toString();
             ++i;

             $(name).hide();
            }




        },
        error : function() {
            alert('请求错误');

        }
    })

}
