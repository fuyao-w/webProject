$(document).ready(




 function () {


     $('[data-magnify]').magnify({
         headToolbar: [
             'close'
         ],
         footToolbar: [
             'zoomIn',
             'zoomOut',
             'prev',
             'fullscreen',
             'next',
             'actualSize',
             'rotateRight'
         ],
         title: false
     });


   $("div.dropzoneimg").css("width",$("#textarea").outerWidth())
        var myArray=new Array()
        var z=0
        var i=0
        var j=0
        var Pic=null
        var Pic1=null
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
                    if ($("textarea").val()=="内容..."){
                        alert("不能回复空信息！")
                        return false
                    }





                    if (j!=0)
                        mDropzone.processQueue()
                    else {

                        var postdata = {
                            "sendID": $("#sendID").val(),
                            "replyCont": $("textarea").val(),
                            "loginName": user.login_name,
                            "role": user.role,
                            "rPic": Pic,
                            "rPic1": Pic1
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
                            url: 'userhelp/blogReply',
                            dataType: 'json',
                            data: JSON.stringify(postdata),

                            success: function (data) {
                                $("#h1").text("上传完成").removeClass("text-warning").addClass("text-info");

                                mDropzone.removeAllFiles()

                                if (data.data=="success")
                                    location.reload(true)
                                else
                                    alert("上传遇到问题...")



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
                            Pic = data[0];
                           else
                               Pic1 =data[1];
                  }

                    ++z;

                });

                this.on("removedfile", function(file) {
                    console.log("File " + file.name + "removed");
                --j
                    --i;
                    if(i==0)
                        $("#h1").text("可以上传").removeClass("text-warning").addClass("text-info");

                });
                this.on("maxfilesexceeded", function(file) {
                    $("#h1").text("只能上传两张图片！").removeClass("text-info").addClass("text-warning");

                    ++i
                });

                this.on("addedfile", function(file) {
                    ++j
                    if(j<2)
                        $("#h1").text("可以上传！").removeClass("text-warning").addClass("text-info");


                });

                this.on("queuecomplete", function(file) {



                    var postdata = {
                        "sendID": $("#sendID").val(),
                        "replyCont": $("textarea").val(),
                        "loginName": user.login_name,
                        "role": user.role,
                        "rPic": Pic,
                        "rPic1": Pic1
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
                        url: 'userhelp/blogReply',
                        dataType: 'json',
                        data: JSON.stringify(postdata),

                        success: function (data) {
                            $("#h1").text("上传完成").removeClass("text-warning").addClass("text-info");

                            mDropzone.removeAllFiles()

                            if (data.data=="success")
                                location.reload(true)
                            else
                                alert("上传遇到问题...")



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


