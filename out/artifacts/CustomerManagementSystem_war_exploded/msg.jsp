<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 11/20/2017
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <canvas id="canvas" style="position: absolute;z-index: -1;top: 0px;
                        left: 0px;width: 100%;height: 100%;"></canvas>
    <script src="js/index.js"></script>
    <h1 style="color:green;" align="center">${msg}</h1>

</body>
</html>
