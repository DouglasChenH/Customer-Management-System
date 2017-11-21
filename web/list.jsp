<%@ page import="domain.PageBean" %><%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 11/20/2017
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Customer List</title>
</head>

<body>
<canvas id="canvas" style="position: absolute;z-index: -1;top: 0px;
                    left: 0px;width: 100%;height: 100%;"></canvas>
<script src="js/index.js"></script>
<h3 align="center">Customer List</h3>
<table border="1" width="70%" align="center">
    <tr>
        <th>Customer Name</th>
        <th>Gender</th>
        <th>Cell Phone</th>
        <th>Email</th>
        <th>Description</th>
        <th>Operation</th>
    </tr>
    <c:forEach items="${pb.beanList}" var="cstm">
        <tr>
            <td>${cstm.name}</td>
            <td>${cstm.gender}</td>
            <td>${cstm.phone}</td>
            <td>${cstm.email}</td>
            <td>${cstm.description}</td>
            <td>
                <a href="<c:url value='/CustomerServlet?method=preEdit&id=${cstm.id}'/> ">edit</a>
                <a href="<c:url value='/CustomerServlet?method=delete&id=${cstm.id}'/> ">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br/>
<p style = "text-align:center;">

    ${pb.pc}/${ pb.tp} Pages  <%--current page/ total page--%>
    <a href="${ pb.url}&pc=1"> First Page</a>
    <c:if test="${ pb.pc>1}">
        <a href="${ pb.url}&pc=${ pb.pc-1}"> Previous Page</a>
    </c:if>

    <c:choose>
        <c:when test="${ pb.tp<=10}">
            <c:set var="begin" value="1"/>
            <c:set var="end" value="${ pb.tp}"/>
        </c:when>
        <c:otherwise>
            <c:set var="begin" value="${ pb.pc-5}"/>
            <c:set var="end" value="${ pb.pc+4}"/>

            <c:if test="${begin<1}">
                <c:set var="begin" value="1"/>
                <c:set var="end" value="10"/>
            </c:if>

            <c:if test="${end> pb.tp}">
                <c:set var="end" value="${ pb.tp}"/>
                <c:set var="begin" value="${ pb.tp-9}"/>
            </c:if>
        </c:otherwise>
    </c:choose>

    <%--loop over page records--%>
    <c:forEach var="i" begin="${begin}" end="${end}">
        <c:choose>
            <c:when test="${i eq  pb.pc}">
                [${i}]
            </c:when>
            <c:otherwise>
                <a href="${ pb.url}&pc=${i}">[${i}]</a>
            </c:otherwise>
        </c:choose>

    </c:forEach>


    <c:if test="${ pb.pc< pb.tp}">
        <a href="${ pb.url}&pc=${ pb.pc+1}"> Next Page</a>
    </c:if>
    <a href="${ pb.url}&pc=${ pb.tp}"> Last Page</a>

</p>

</body>
</html>
