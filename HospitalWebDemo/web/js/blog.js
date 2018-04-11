$(document).ready(function () {
    $('#blogPage').jqPaginator({
        totalPages: 1,
        visiblePages: 1,
        currentPage: 1,
        first: '<li> <a href="javascript:void(0);">首页</a></li>',
        prev: '<li ><a href="javascript:void(0);">上一页</a></li>',
        next: '<li ><a href="javascript:void(0);">下一页</a></li>',
        last: '<li ><a href="javascript:void(0);">末页</a></li>',
        page: '<li class="active"><a href="javascript:void(0);">{{page}}</a></li>',
        onPageChange: function (num, type) {


            blogFilter(num);
        }
    });

$("#search").on("click",function () {
    blogFilter(1);
    $('#blogPage').jqPaginator('option',{ totalPages: 1,
        visiblePages: 1,
        currentPage: 1,
        onPageChange:function (num, type) {


            blogFilter(num);
        }
    })

})

})


function blogFilter(num) {

    var json = 'curPage='+num+'&department='+$("select option:selected").val()+'&question='+$("input").val();

    var blogmes=''

    $.ajax({
        type: 'GET',
        contentType: 'application/x-www-form-urlencoded',//注意类型
        /**
         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
         */
        processData: false,
        url: '/blogfilter',
        dataType: 'json',
        data: json,
        success: function (data) {
            console.dir(JSON.stringify(data))

            if (data.pages==0){
                $(".blog").remove()

                $("#blog").before('<h1 style="text-align: center" class="text-info">暂无数据</h1>')
                return;
            } else{
                $("h1").remove()}
            $('#blogPage').jqPaginator('option', {
                totalPages: data.pages,
                visiblePages: (data.pages>10)?10:data.pages
            });
            var blogdata = data.list;
            blogmes=''
            $("#blog").before("");
            for (i=0;i<blogdata.length;i++){
                blogmes = blogmes+'\t<div style="margin-top: 15px" class="blog">\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<h3><a href="/relpy?sendID='+blogdata[i].sendID+'">'+blogdata[i].title+'</a></h3>\n' +
                    '\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<p>'+blogdata[i].sData+' / <a href="#">'+blogdata[i].loginName+'</a> / <a href="#">'+blogdata[i].department+'</a> / <a href="#">阅读量：'+blogdata[i].readCount+'</a></p>\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<p>'+blogdata[i].content+'</p>\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<a href="/relpy?sendID='+blogdata[i].sendID+'" class="pull-right button5 hvr-shutter-out-horizontal">进入</a>\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<div class="clearfix"></div>\n' +
                    '\t\t\t\t\t\t\t\t\t\t</div>\n' +
                    '\t\t\t\t\t\t\t\t\t\t\t<div class="clearfix" style="height: 1px;width: 100%;background: #007AFF;"></div>'
            }
            $(".blog").remove()

            $("#blog").before(blogmes);


        },
        error: function () {
            alert('请求错误');

        }

    })
}

// function showBlog(nums) {
//
//
//     var json = 'curPage='+nums;
//
//     var blogmes=''
//
//     $.ajax({
//         type: 'GET',
//         contentType: 'application/x-www-form-urlencoded',//注意类型
//         /**
//          *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
//          * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
//          * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
//          */
//         processData: false,
//         url: '/showblog',
//         dataType: 'json',
//         data: json,
//         success: function (data) {
//             console.dir(JSON.stringify(data))
//             if (data.pages==0){
//                 $(".blog").remove()
//                 $(".blog").before('<h1 style="text-align: center" class="text-info">暂无数据</h1>')
//                 return;
//             }
//             $('#blogPage').jqPaginator('option', {
//                 totalPages: data.pages,
//                 visiblePages: (data.pages>10)?10:data.pages
//             });
//             var blogdata = data.list;
//             blogmes=''
//             $("#blog").before("");
//                 for (i=0;i<blogdata.length;i++){
//                     blogmes = blogmes+'\t<div style="margin-top: 15px" class="blog">\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<h3><a href="/relpy?sendID='+blogdata[i].sendID+'">'+blogdata[i].title+'</a></h3>\n' +
//                      '\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<p>'+blogdata[i].sData+' / <a href="#">'+blogdata[i].loginName+'</a> / <a href="#">'+blogdata[i].department+'</a> / <a href="#">阅读量：'+blogdata[i].readCount+'</a></p>\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<p>'+blogdata[i].content+'</p>\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<a href="/relpy?sendID='+blogdata[i].sendID+'" class="pull-right button5 hvr-shutter-out-horizontal">进入</a>\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<div class="clearfix"></div>\n' +
//                      '\t\t\t\t\t\t\t\t\t\t</div>\n' +
//                      '\t\t\t\t\t\t\t\t\t\t\t<div class="clearfix" style="height: 1px;width: 100%;background: #007AFF;"></div>'
//                 }
//             $(".blog").remove()
//
//             $("#blog").before(blogmes);
//
//
//             },
//         error: function () {
//             alert('请求错误');
//
//         }
//
//     })
// }





