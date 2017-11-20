<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 11/20/2017
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3 align="center">Edit Customer</h3>
<form action="<c:url value='/CustomerServlet'/>" method="post" >
    <input type="hidden" name="method" value="edit"/>
    <input type="hidden" name="id" value="${customer.id}"/>
    <table border="0" align="center" width="40%" style="margin-left: 100px">
        <tr>
            <td width="100px">Customer Name</td>
            <td width="40%">
                <input type="text" name="name" value="${customer.name}"/>
            </td>
            <td align="left">
                <label id="nameError" class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Customer Gender</td>
            <td>
                <input type="radio" name="gender" value="male" id="male" <c:if test="${customer.gender eq 'male'}"/>checked="checked"/>
                <label for="male">Male</label>
                <input type="radio" name="gender" value="female" id="female" <c:if test="${customer.gender eq 'female'}"/> checked="checked"/>
                <label for="female">Female</label>
            </td>
            <td>
                <label id="genderError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Cell Phone</td>
            <td>
                <input type="text" name="phone" id="phone" value="${customer.phone}"/>
            </td>
            <td>
                <label id="phoneError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" id="email" value="${customer.email}"/>
            </td>
            <td>
                <label id="emailError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <textarea rows="5" cols="30" name="description">${customer.description}</textarea>
            </td>
            <td>
                <label id="discriptionError"class="error">&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submit" value="Edit Customer"/>
                <input type="reset" name="reset"/>
            </td>
        </tr>
    </table>
</form>


</body>
</html>
