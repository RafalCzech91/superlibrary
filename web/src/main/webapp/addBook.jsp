<%--
  Created by IntelliJ IDEA.
  User: Rafał
  Date: 23.02.2019
  Time: 09:57
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
    <title>AddBook</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0-2/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<div class="multi-bg-example">

<br>
<form action="addBook.jsp" method="post" class="needs-validation" novalidate>
    <br>
    <div class="container">
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" placeholder="Title" value="" required>
            <div class="valid-feedback">
                Valid title
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" placeholder="Name" value=""
                   required>
            <div class="valid-feedback">
                Valid name
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <label for="surname">Surname </label>
            <input type="text" class="form-control" id="surname" placeholder="Surname" value=""
                   required>
            <div class="valid-feedback">
                Valid surname
            </div>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputISBN">ISBN</label>
            <input type="text" class="form-control" id="inputISBN">
        </div>
        <div class="form-group col-md-4">
            <label for="inputCategory">Category</label>
            <select id="inputCategory" class="form-control">
                <option selected>Choose...</option>
                <option>horror</option>
                <option>fantasy</option>
                <option>sci-fi</option>
                <option>comedy</option>
                <option>criminal</option>
                <option>action</option>
                <option>shounen</option>
            </select>
        </div>
        <div class="form-group col-md-2">
            <label for="releaseDate">Release date</label>
            <input type="date" class="form-control" id="releaseDate">
        </div>
    </div>
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                I'am not a ROBOT!
            </label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Add</button>
    <a class="btn btn-primary" href="index.jsp" role="button">Cancel</a>
    </div>
</form>
</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>
