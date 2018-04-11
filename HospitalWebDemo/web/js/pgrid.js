$(document).ready( function () {

    $("#change").on("click",function () {
        var pdata='p_id='+patient.p_id+'&bingshi='+$("#bingshi").val()+'&jiancha='+$("#jiancha").val()+'&=zhenduan='+$("#zhenduan").val()+'&zhiliao='+$("#zhiliao").val()+'&chuyuan='+$("#chuyuan").val()


        $.ajax({
            type : 'GET',
            contentType : 'application/json',//注意类型
            /**
             *(默认: true) 默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，
             * 都会处理转化成一个查询字符串，以配合默认内容类型 "application/x-www-form-urlencoded"。
             * 如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。
             */
            processData : false,
            url :'tplan',
            dataType : 'json',
            data : pdata,
            success : function(data) {

                if (data.data = 1)
               alert("添加完成，之前的记录被覆盖")


            },
            error : function() {
                alert('请求错误');

            }
        })


    })





var postData ={
    doc_id:111
}

$("#list2").jqGrid({

        url: "http://localhost:8081/userhelp/patientquery",
        datatype: "json",
    postData: postData,
    ajaxGridOptions: { contentType: 'application/x-www-form-urlencoded' },
        mtype: 'get',
    pagination: true,

        autowidth: true,
        caption: '患者信息表',
        colNames: ["患者编号", "患者姓名", "身份证号", "性别", "年龄", "治疗项目", "入院日期", "联系电话", "备注"],
        colModel: [
            {name: "p_id", index: "p_id", align: 'center', width: 70, editable: true},
            {name: "p_name", index: "p_name", width: 70, align: 'center', editable: true},
            {name: "id_card", index: "id_card", align: 'center', width: 120, editable: true},
            {name: "sex", index: "sex", align: 'center', width: 50, editable: true},

            {name: "age", index: "age", align: 'center', width: 50, editable: true},
            {name: "t_project", index: "t_project", align: 'center', width: 70, editable: true},
            {name: "be_hos_date", index: "be_hos_date", align: 'center', width: 80, editable: true},
            {name: "call_num", index: "call_num", align: 'center', width: 80, editable: true},
            {name: "remarks", index: "remarks", align: 'center', width: 50, editable: true}


        ],

        sortname: 'pid',
        viewrecords: true,
        rowNum:10,
    loadonce:false,
    multiselect:false,
        //autoHeight:true,  
        rowList: [5, 6, 7, 10],

    jsonReader : {
        root : "rows",
        page : "page",
        total : "total",
        records : "records",

        repeatitems : false
    },

        pager: "#pager2",
    onCellSelect:function (rowid) {

        var d = jQuery("#list2").jqGrid('getRowData', rowid);
        var id = d.p_id
        patient = {
            p_id: id
        }
    }
    });





    jQuery("#list2").jqGrid('navGrid', '#pager2', {refresh : true,edit: false, add: false, del: false,refreshtitle : "刷新",});


    jQuery("#list2").jqGrid('navButtonAdd', '#pager2', {
        caption: "详细",
        onClickButton: function () {
            var gsr = jQuery("#list2").jqGrid('getGridParam', 'selrow');
            if (gsr) {



                $('#myModal2').modal('show')
                jQuery("#list2").jqGrid('GridToForm', gsr, "#order");
            } else {
                alert("请选择记录！")
            }
        }
    });


    jQuery("#list2").jqGrid('navGrid', '#pager2', {edit: false, add: false, del: false});


    jQuery("#list2").jqGrid('navButtonAdd', '#pager2', {
        caption: "编辑诊疗计划",
        onClickButton: function () {
            var gsr = jQuery("#list2").jqGrid('getGridParam', 'selrow');
            if (gsr) {
                var d = jQuery("#list2").jqGrid('getRowData', gsr);
              var id=d.p_id
                patient={
                  p_id:id
                }
                $('#myModal4').modal('show')




            } else {
                alert("请选择记录！")
            }
        }
    });


});  
