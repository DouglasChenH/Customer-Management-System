<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 11/20/2017
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title></title>
</head>
<body>
<canvas id="canvas" style="position: absolute;z-index: -1;top: 0px;
                left: 0px;width: 100%;height: 100%;"></canvas>
<script src="js/index.js"></script>

<h3 align="center">Advanced Search</h3>
<form action="<c:url value="/CustomerServlet"/>" method="get">
    <input type="hidden" name="method" value="query">
    <table border="0" align="center" width="40%" style="margin-left: 100px">
        <tr>
            <td width="100px">Customer Name</td>
            <td width="40%">
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>Customer Gender</td>
            <td>
                <select name="gender">
                    <option value="">==Gender==</option>
                    <option value="male">male</option>
                    <option value="female">female</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Cell Phone</td>
            <td>
                <input type="text" name="phone"/>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>

                <input type="submit" value="search"/>
                <input type="reset" value="reset"/>
            </td>
        </tr>

    </table>
</form>

</body>
</html>
