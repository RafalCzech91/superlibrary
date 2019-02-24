<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<style></style>
<title>Homepage</title>

<link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
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
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<div class="multi-bg-example">
<br>
<div class="container">
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Name</th>
            <th scope="col">Surname</th>
            <th scope="col">ISBN</th>
            <th scope="col">Release date</th>
            <th scope="col">Borrower</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <select id="idBorrower" class="form-control">
                    <option selected>John</option>
                    <option>Martin</option>
                    <option>Scot</option>
                    <option>Natasha</option>
                    <option>Ironish</option>
                </select>
            </td>
            <td>
                <div class="radio">
                    <label><input type="radio" name="optradio"></label>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>

    <%--<form action="/HomeServlet" method="post">--%>
    <a href="addBook.jsp">
        <button type="radio" class="btn btn-primary">Add</button>
    </a>
    <a href="editBook.jsp">
        <button type="radio" class="btn btn-secondary">Edit</button>
    </a>
    <a href="deleteBook.jsp">
        <button type="radio" class="btn btn-danger">Delete</button>
    </a>
    <a href="showBook.jsp">
        <button type="radio" class="btn btn-success">Show</button>
    </a>

</div>

</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
<script src="webjars/bootstrap/4.0.0-2/js/bootstrap.js"></script>
</div>
</body>
</div>
</html>
