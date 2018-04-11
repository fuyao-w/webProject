<%--
  Created by IntelliJ IDEA.
  User: 扶摇
  Date: 2018/1/29
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="tool.text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Spring MVC表单处理</title>
</head>
<body>

<h2>Student Information</h2>
<form:form action="/addstudent" method="post">
    <table>
        <tr>
            <td><form:label path="name" >aaa</form:label></td>
            <td><form:input path="name"/><td/>
        </tr>
        <tr>
            <td><form:label path="age">年龄</form:label></td>
            <td><form:input path="age"/><td/>
        </tr>
        <tr>
            <td><form:label path="id">ID</form:label></td>
            <td><form:input path="id"/><td/>
        </tr>
        <tr>
            <td>
            <form:checkboxes path="favoriteFrameworks" items="${webFrameworkList}"/>
            </td>
        </tr>
        <tr>
            <td><form:label path="gender">性别</form:label></td>
            <td><form:radiobutton path="gender" value="1" label="男"/></td>
            <td><form:radiobutton path="gender" value="0" label="女"/></td>
        </tr>
        <tr>
            <td><form:select path="province">
                <form:option value="NONE" label="请选择..."/>
                <form:options items="${provinceList}" />
            </form:select></td>
        </tr>
        <tr >
            <td colspan="2">
            <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>