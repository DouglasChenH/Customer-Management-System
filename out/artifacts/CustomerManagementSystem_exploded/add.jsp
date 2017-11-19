

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <canvas id="canvas" style="position: absolute;z-index: -1;top: 0px;
            left: 0px;width: 100%;height: 100%;"></canvas>
    <script src="js/index.js"></script>

    <h3 align="center">Add Customer</h3>
    <form action="<c:url value='/CustomerServlet'/>" method="post">
        <input type="hidden" name="method" value="add">
        <table border="0" align="center" width="40%" style="margin-left: 100px">
            <tr>
                <td width="100px">Customer Name</td>
                <td width="40%">
                    <input type="text" name="name"/>
                </td>
                <td align="left">
                    <label id="nameError" class="error">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td>Customer Gender</td>
                <td>
                    <input type="radio" name="gender" value="male" id="male"/>
                    <label for="male">Male</label>
                    <input type="radio" name="gender" value="female" id="female"/>
                    <label for="female">Female</label>
                </td>
                <td>
                    <label id="genderError" class="error">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td>Cell Phone</td>
                <td>
                    <input type="text" name="phone" id="phone"/>
                </td>
                <td>
                    <label id="phoneError" class="error">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <input type="text" name="email" id="email"/>
                </td>
                <td>
                    <label id="emailError" class="error">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <textarea rows="5" cols="30" name="description"></textarea>
                </td>
                <td>
                    <label id="descriptionError" class="error">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="submit"/>
                    <input type="reset" name="reset"/>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
