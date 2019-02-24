<%--
  Created by IntelliJ IDEA.
  User: Rafał
  Date: 23.02.2019
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <title>Contact</title>
</head>
<link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<div class="multi-bg-example">

    <p>contact: </p>

</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
