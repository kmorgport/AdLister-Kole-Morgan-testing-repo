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
<form action="/create" method="POST">
    <div class="form-label-group">
        <input type="text" id="title" name="title" class="form-control" placeholder="Title" required>
        <label for="title"></label>
    </div>
    <div class="form-label-group">
        <input type="text" id="price" name="price" class="form-control" placeholder="Price" required>
        <label for="price"></label>
    </div>
    <div class="custom-control custom-checkbox mb-3">
        <input type="checkbox" name="categories" id="fruit" value="1">
        <label for="fruit">Fruit</label>
        <input type="checkbox" name="categories" id="vegetables" value="2">
        <label for="vegetables">Vegetables</label>
        <input type="checkbox" name="categories" id="dairy" value="3">
        <label for="dairy">Dairy</label>
        <input type="checkbox" name="categories" id="baked_goods" value="4">
        <label for="baked_goods">Bread</label>
        <input type="checkbox" name="categories" id="jams" value="5">
        <label for="jams">Jams</label>
        <input type="checkbox" name="categories" id="ferments" value="6">
        <label for="ferments">Ferments</label>
        <input type="checkbox" name="categories" id="other" value="7">
        <label for="other">Other</label>
    </div>
    <div class="form-label-group">
        <label for="description">Description: </label>
        <textarea rows="3" cols="30" name="description" id="description"></textarea>
    </div>
    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Submit</button>
</form>
</body>
</html>
