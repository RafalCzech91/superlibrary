<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
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

        <form action="${pageContext.request.contextPath}/index.jsp" method="post">
            <input type="submit" class="btn btn-primary" name="ADD" value="ADD" />
            <input type="submit" class="btn btn-secondary" name="EDIT" value="EDIT" />
            <input type="submit" class="btn btn-danger" name="DELETE" value="DELETE" />
            <input type="submit" class="btn btn-success" name="SHOW" value="SHOW" />
        </form>

        <a href="/addBook.jsp" class="btn btn-primary" role="button">ADD</a>
        <a href="/deleteBook.jsp" class="btn btn-danger" role="button">DELETE</a>
        <a href="/editBook.jsp" class="btn btn-secondary" role="button">EDIT</a>
        <a href="/showBookDetails.jsp" class="btn btn-success" role="button">SHOW</a>

    </div>

</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</div>
</body>
</div>
</html>
