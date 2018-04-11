<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 扶摇
  Date: 2018/1/29
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="tool.text/html;charset=UTF-8" pageEncoding="gbk" language="java" %>
<%

//    String s=request.getParameter("name");
//    String newName = new String(s.getBytes("ISO-8859-1"),"utf-8");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>提交的学生信息如下 - </h2>
<table>
    <tr>
        <td>名称：</td>
        <td>${name}</td>

    </tr>
    <tr>
        <td>年龄：</td>
        <td>${age}</td>
    </tr>
    <tr>
        <td>编号：</td>
        <td>${id}</td>

    </tr>
    <tr>
        <td>喜欢的框架：</td>
        <td>
            <c:forEach  items="${stu.favoriteFrameworks}" var="favoriteFramework">
            ${favoriteFramework}
        </c:forEach></td>
    </tr>
    <tr>
        <td>性别：</td>
        <td>${gender==1?"男":"女"}</td>
    </tr>
    <tr>
        <td>省市：</td>
        <td>${p}</td>
    </tr>
</table>
</body>
</html>
