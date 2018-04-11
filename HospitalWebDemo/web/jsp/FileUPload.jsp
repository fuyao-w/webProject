<%--
  Created by IntelliJ IDEA.
  User: 扶摇
  Date: 2018/2/1
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="tool.text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>文件上传</h1>
<form action="/fups" method="post" enctype="multipart/form-data">
<tr>
    <td><h4>选择文件</h4></td>
    <td><input type="file" name="uploadFile"/></td>
</tr>
    <tr>
        <td colspan="2" ><input type="submit" value="上传"/> </td>
    </tr>
</form>
</body>
</html>
