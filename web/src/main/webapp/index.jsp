<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<title>Homepage</title>

<link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>

<div class="container">
    <br><br><br><br><br><br><br><br><br><br>



    <%--<form action="/HomeServlet" method="post">--%>
    <a href="addBook.jsp"><button type="radio" class="btn btn-primary">Add</button></a>
        <a href="editBook.jsp"> <button type="radio" class="btn btn-secondary">Edit</button></a>
        <a href="deleteBook.jsp"> <button type="radio" class="btn btn-danger">Delete</button></a>
        <a href="showBook.jsp"><button type="radio" class="btn btn-success">Show</button></a>

    </form>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
<script src="webjars/bootstrap/4.0.0-2/js/bootstrap.js"></script>
</body>

</html>
