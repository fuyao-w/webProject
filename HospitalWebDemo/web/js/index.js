
$(document).ready(function() {
    judgeLog();











    $("#pwalert").hide()
    $("#lalert").hide()
    //$("#logout").on("click",function () {});
    $("#login_name").on("keyup",function(){ judge('#login_name','#account1',pattern)})
    $("#password").on("keyup",function(){judge('#password','#pw1',mpattern); $("#pwagain").removeAttr("disabled")})
    $("#pwagain").on("change",function(){  $("#password").val()!=$("#pwagain").val()?$("#pwalert").show():judge('#pwagain','#pwagain1',mpattern) })
    $("#pid").on("keyup",function(){ judge('#pid','#pid1',ppattern)})
    $("#log").on("click",function(){ login()})






});

var pattern =/^[a-zA-Z0-9_-]{4,10}$/
var ppattern=/^[0-9]{1,5}$/
var mpattern =/^[a-zA-Z0-9_-]{6,16}$/
function judge(var1,var2,var3){
    var acc =$(var1).val()
    if(""==acc)

    {
        $(var2).removeClass("glyphicon-remove")

        $(var2).addClass("glyphicon-ok")
        if($(var2).css("visibility")=="hidden")
            return
        else{
            $(var2).css("visibility","hidden")
            return
        }
    }


    var uPattern = var3
    if(uPattern.test(acc)){
        $(var2).removeClass("glyphicon-remove")

        $(var2).addClass("glyphicon-ok")
        $(var2).css("visibility","visible")

    }
    else {

        $(var2).removeClass("glyphicon-ok")

        $(var2).addClass("glyphicon-remove")
        $(var2).css("visibility","visible")

    }
    $(".alert").hide()


}

var user =null;
var patient =null;
var doctor = null;
var loginstate = 0;

function onval(){



    if($("#login_name").val()!==""&&$("#password").val()==$("#pwagain").val()!="" ){
        if (($("#account1").attr("class")=="glyphicon glyphicon-ok"&&$("#pw1").attr("class"))=="glyphicon glyphicon-ok"&&$("#pwagain1").attr("class")=="glyphicon glyphicon-ok"){


            var json = {
                'login_name':$('#login_name').val(),
                'pword':$.md5($('#password').val()),
                'id_num':$('#pid').val()

            };

            var  postdata = JSON.stringify(json);//json对象转换json字符串

            $.ajax({
                type : 'POST',
                contentType : 'application/json',//注意类型
                /**
                 *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
                 * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
                 * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
                 */
                processData : false,
                url :'userhelp/register',
                dataType : 'json',
                data : postdata,
                success : function(data) {

                    alert("注册成功")


                },
                error : function() {
                    alert('请求错误');

                }
            })
        }
    }
    else{}

}

function login() {
    if($("#log_name").val()!==""&&$("#lpassword").val()!=""
        &&$("#log_name").val().length > 3&&$("#lpassword").val().length >5){
        $('#reg').attr('disabled', true);
        var json = {
            'login_name':$('#log_name').val(),
            'pword':$.md5($('#lpassword').val())

        };

        var  postdata = JSON.stringify(json);//json对象转换json字符串

        $.ajax({
            type : 'POST',
            contentType : 'application/json',//注意类型
            /**
             *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
             * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
             * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
             */
            processData : false,
            url :'userhelp/login',
            dataType : 'json',
            data : postdata,
            success : function(datas) {
               if(datas.regResult==200){
                    user = datas.user;
                   var role =user.role;

                   switch (role){
                       case 0:
                       {
                           patient = user.patient;

                           break;
                       }
                       case 1:
                            {

                                 patient = user.patient;
                                $("#myModal").modal('hide');
                                $("#topModel").empty();
                                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                                    ' white;">欢迎登陆:&nbsp;&nbsp;'+patient.p_name+'</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()"  href=""  style="color: white;" >注销</a></div>');
                                $('#log_name').val("");
                                    $('#lpassword').val("");
                                loginstate=1;

                                break;
                            }
                       case 2:
                       {
                           $("#yisheng").removeClass("hidden")
                           $("#myTabContent1").removeClass("hidden")
                           doctor = user.doctor;
                           $("#myModal").modal('hide');
                           $("#topModel").empty();
                           $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                               ' white;">欢迎登陆:&nbsp;&nbsp;'+doctor.doc_name+'医生</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()"  href=""  style="color: white;" >注销</a></div>');
                           $('#log_name').val("");
                           $('#lpassword').val("");
                           loginstate=1;
                           break;
                       }
                       case 3:
                       {
                           patient = user.doctor;

                           break;
                       }
                       case 4:
                       {
                           patient = user.doctor;

                           break;
                       }

                        }

                        var time = new Date();
                   time.setTime(time.getTime()+300*1000);

                   $.cookie("userLog",1,{expires:time});
                   $.cookie("userMes",JSON.stringify(user));
               }else if (datas.regResult==404)
                   $('#logalert').removeClass("hidden");


            },
            error : function() {
                alert('请求错误');

            }
        })


    }
    else
        $("#logalert").removeClass("hidden");

}

function  judgeLog() {

    if($.cookie("userLog")==1&&$.cookie("userMes")!=null){
        console.log($.cookie("userMes")+' '+$.cookie("userLog"))
       user = JSON.parse($.cookie("userMes"));


        var role =user.role;
        $("#topModel").empty();
        switch (role){
            case 0:
            {
                patient = user.patient;
                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                    ' white;">欢迎登陆:&nbsp;&nbsp;'+patient.p_name+'</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()" style="color: white;" href="" >注销</a></div>');
                break;
            }
            case 1:
                {

                    patient = user.patient;
                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                    ' white;">欢迎登陆:&nbsp;&nbsp;'+patient.p_name+'</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()" style="color: white;" href="" >注销</a></div>');
                loginstate=1;



                break;
            }
            case 2:
            {
                $("#yisheng").removeClass("hidden")
                $("#myTabContent1").removeClass("hidden")
                doctor = user.doctor;
                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                    ' white;">欢迎登陆:&nbsp;&nbsp;'+doctor.doc_name+'医生</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()" style="color: white;" href="" >注销</a></div>');
                loginstate=1;
                break;
            }
            case 3:
            {
                doctor = user.doctor;
                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                    ' white;">欢迎登陆:&nbsp;&nbsp;'+patient.p_name+'</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()" style="color: white;" href="" >注销</a></div>');
                break;
            }
            case 4:
            {
                doctor = user.doctor;
                $("#topModel").append('<div style="width: 200px;font-size: 15px;"  ><label style="color:' +
                    ' white;">欢迎登陆:&nbsp;&nbsp;'+patient.p_name+'</label>&nbsp;&nbsp;&nbsp;<a onclick="clearMes()" style="color: white;" href="" >注销</a></div>');
                break;
            }

        }




    }
     return ;
}

function clearMes() {


    var time = new Date();
    time.setTime(time.getTime()-300*1000);
    $.cookie('userLog',null, time);
    $.cookie('userMes',null, time);
    loginstate=0;
    $("#yisheng").addClass("hidden")
    $("#myTabContent1").addClass("hidden")
    judgeLog();

}


