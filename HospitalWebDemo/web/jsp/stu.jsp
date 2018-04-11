<%--
  Created by IntelliJ IDEA.
  User: 扶摇
  Date: 2018/2/2
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="tool.text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>


<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="button" value="获取json数据" onclick="sendjson()"/>
<div id="div"  />
<form method="post" action="/selstu">
    <input type="submit" value="提交">
</form>
</body>
<script>
    function sendjson() {
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/selstu",
            data:{ "id": "王扶摇", "name": "王扶摇" },
            contentType:"application/json;charset=utf-8",
            success:function (data) {

               alert(data.id +"    "+data.name)
            } }
           );
    }

</script>
</html>
