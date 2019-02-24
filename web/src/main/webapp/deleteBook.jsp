<%--
  Created by IntelliJ IDEA.
  User: Rafał
  Date: 24.02.2019
  Time: 13:16
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


    <jsp:include page="/WEB-INF/fragments/form.jspf"/>
    <div class="container">
        <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    Are you SURE!? DELETE book
                </label>
            </div>
        </div>
        <input type="submit" class="btn btn-danger" name="DELETE" value="DELETE"/>
        <a class="btn btn-primary" href="index.jsp" role="button">Cancel</a>
    </div>


</div>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>