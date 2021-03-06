<%--
  Created by IntelliJ IDEA.
  User: Rafał
  Date: 24.02.2019
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .multi-bg-example {
        width: 100%;
        height: 100%;
        background-image: url(background.jpg),
        url(background.jpg),
        linear-gradient(to right, rgba(30, 75, 115, 1), rgba(255, 255, 255, 0));
        background-repeat: repeat,
        no-repeat,
        no-repeat;
        background-position: bottom right,
        left,
        right;
    }
</style>
<head>
    <title>editBook</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<div class="multi-bg-example">

    <br>
    <form action="editBook.jsp" method="post" class="needs-validation" novalidate>
        <br>

        <%@ include file="/WEB-INF/fragments/form.jspf" %>
        <br>
        <div class="container">
            <button type="submit" class="btn btn-primary">Edit</button>
            <a class="btn btn-primary" href="editBook.jsp" role="button">Cancel</a>
        </div>
    </form>
</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>
