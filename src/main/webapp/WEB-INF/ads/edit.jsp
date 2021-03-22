<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ionbenz
  Date: 3/16/21
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="/edit" method="POST">
    <c:if test="${error != null}">
        <div class="alert alert-danger" role="alert">
            Error: ${error}
        </div>
    </c:if>
    <c:if test="${errordouble != null}">
        <div class="alert alert-danger" role="alert">
            Error: ${errordouble}
        </div>
    </c:if>
    <div class="form-label-group">
        <input type="text" id="title" name="title" class="form-control" placeholder="Title" required>
        <label for="title">Your previous Title: <c:out value="${ad.getTitle()}"/></label>
    </div>
    <div class="form-label-group">
        <input type="text" id="price" name="price" class="form-control" placeholder="Price" required>
        <label for="price">Your previous Price: <c:out value="$${price}"/></label>
    </div>
    <div class="custom-control custom-checkbox mb-3">
        <c:choose>
            <c:when test="${categories[0] == 1}">
                <input type="checkbox" name="categories" id="fruit" value="1" checked>
                <label for="fruit">Fruit</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="fruit" value="1">
                <label for="fruit">Fruit</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[1] == 1}">
                <input type="checkbox" name="categories" id="vegetables" value="2" checked>
                <label for="vegetables">Vegetables</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="vegetables" value="2">
                <label for="vegetables">Vegetables</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[2] == 1}">
                <input type="checkbox" name="categories" id="dairy" value="3" checked>
                <label for="dairy">Dairy</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="dairy" value="3">
                <label for="dairy">Dairy</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[3] == 1}">
                <input type="checkbox" name="categories" id="baked_goods" value="4" checked>
                <label for="baked_goods">Bread</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="baked_goods" value="4">
                <label for="baked_goods">Bread</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[4] == 1}">
                <input type="checkbox" name="categories" id="jams" value="5" checked>
                <label for="jams">Jams</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="jams" value="5">
                <label for="jams">Jams</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[5] == 1}">
                <input type="checkbox" name="categories" id="ferments" value="6" checked>
                <label for="ferments">Ferments</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="ferments" value="6">
                <label for="ferments">Ferments</label>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${categories[6] == 1}">
                <input type="checkbox" name="categories" id="other" value="7" checked>
                <label for="other">Other</label>
            </c:when>
            <c:otherwise>
                <input type="checkbox" name="categories" id="other" value="7">
                <label for="other">Other</label>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="form-label-group">
        <label for="description">Description: </label>
        <textarea rows="3" cols="30" name="description" id="description"><c:out value="${ad.getDescription()}"/></textarea>
    </div>
    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Edit</button>
</form>
</body>
</html>