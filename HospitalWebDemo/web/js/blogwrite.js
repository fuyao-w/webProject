$(document).ready(
    function () {


        $("div.dropzoneimg").css("width",$("input").outerWidth())
        var myArray=new Array()
        var z=0
        var i=0
        var j=0
        var spic=null
        var spic1=null
        $("div.dropzoneimg").dropzone({

            url: "userhelp/bolgPicUpload",//上传文件的地址，
            maxFiles: 2,//最多上传几个图片
            maxFilesize: 2,//图片的大小，单位是M
            addRemoveLinks:true,//是否有删除图片的功能
            dictRemoveFile:"删除",//删除图片的文字
            addRemoveLinks:true,
            dictDefaultMessage:"点击或拖拽上传",
            acceptedFiles: ".jpg,.jpeg,.png,.gif",//支持的格式
            autoProcessQueue:false,
            uploadMultiple:true,
            dictCancelUpload:"取消上传",
            dictResponseError:"文件上传失败",
            dictInvalidFileType:"只能上传图片",

            paramName:'uploadFile',//上传的FILE名称，即服务端可以通过此来获取上传的图片，如$_FILES['dropimage']
            init: function() {//初始化是的事件
                var mDropzone=this;

                $("#sub").on("click",function () {
                    if (user==null){
                        $("#myModal").modal('show')
                        return false
                    }
                    if ($("textarea").val()=="内容"||$("textarea") .val()==""||$("#theme").val()==""||$("#theme").val()=="主题"||$('#con option:selected').val()=="NONE"){
                        alert("请添加完整！")
                        return false
                    }

                    if (j!=0)
                        mDropzone.processQueue()
                    else {

                        var postdata = {
                            "department":$('select option:selected') .val(),
                            "loginName": user.login_name,
                            "role":user.role ,
                            "title": $("#theme").val(),
                            "content": $("textarea").val(),
                            "sPic": spic,
                            "sPic1": spic1
                        }


                        $.ajax({
                            type: 'POST',
                            contentType: 'application/json',//注意类型
                            /**
                             *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
                             * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
                             * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
                             */
                            processData: false,
                            url: 'userhelp/blogwrite',
                            dataType: 'json',
                            data: JSON.stringify(postdata),

                            success: function (data) {

                                if (data.data = 200){
                                    $("#h1").text("上传完成").removeClass("text-warning").addClass("text-info");

                                    mDropzone.removeAllFiles()


                                    i=0
                                    j=0
                                    z=0
                                    location.href="/blog"

                                }else
                                    alert("上传发生错误...")


                            },
                            error: function () {
                                alert('请求错误');

                            }

                        })
                    }

                })


                this.on("success", function(file,data) {
                    console.dir(JSON.stringify(data))


                    if(file.upload.progress==100) {


                        if (z==0)
                            spic =  data[0];

                        else
                            spic1 =data[1];
                    }

                    ++z;

                });

                this.on("removedfile", function(file) {
                    console.log("File " + file.name + "removed");
                    --i;
                    if(i==0)
                        $("#h1").text("可以上传").removeClass("text-warning").addClass("text-info");

                });
                this.on("maxfilesexceeded", function(file) {
                    $("#h1").text("只能上传两张图片！").removeClass("text-info").addClass("text-warning");

                    ++i
                });

                this.on("addedfile", function(file) {
                    j++
                    if(j<2)
                        $("#h1").text("可以上传！").removeClass("text-warning").addClass("text-info");


                });


                this.on("queuecomplete", function(file) {

                        var postdata = {
                        "department":$('select option:selected') .val(),
                        "loginName": user.login_name,
                        "role":user.role ,
                        "title": $("#theme").val(),
                        "content": $("textarea").val(),
                        "sPic": spic,
                        "sPic1": spic1
                    }


                    $.ajax({
                        type: 'POST',
                        contentType: 'application/json',//注意类型
                        /**
                         *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
                         * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
                         * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
                         */
                        processData: false,
                        url: 'userhelp/blogwrite',
                        dataType: 'json',
                        data: JSON.stringify(postdata),

                        success: function (data) {

                            if (data.data = 200){
                            $("#h1").text("上传完成").removeClass("text-warning").addClass("text-info");

                            mDropzone.removeAllFiles()


                            i=0
                            j=0
                            z=0
                            location.href="/blog"

                            }else
                                alert("上传发生错误...")


                        },
                        error: function () {
                            alert('请求错误');

                        }

                    })

                });
            }

        });
    }
)