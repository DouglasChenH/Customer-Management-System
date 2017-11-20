<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 11/20/2017
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- HTML frames are used to divide browser window into multiple sections
               where each section can load a separate HTML document.-->
    <base target="main">
    <title>My JSP 'top.jsp' starting page</title>

</head>
<body style="text-align: center;">



<h1>Customer Management System</h1>
<a href="<c:url value='/add.jsp'/>">Add Customer</a>
<a href="<c:url value='/CustomerServlet?method=findAll'/>">Search Customer</a>
<a href="<c:url value='/query.jsp'/>">Advanced Search</a>

</body>
</html>
