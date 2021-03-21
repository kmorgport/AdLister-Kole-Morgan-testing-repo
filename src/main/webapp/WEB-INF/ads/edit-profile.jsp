<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ionbenz
  Date: 3/21/21
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Your Profile</title>
</head>
<form action="/edit-profile" method="POST">
    <div class="form-label-group">
        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
        <label for="username">Your current username: <c:out value="${user.getUsername()}"/></label>
    </div>
    <div class="form-label-group">
        <input type="text" id="email" name="email" class="form-control" placeholder="Email" required>
        <label for="email">Your current email: <c:out value="${user.getEmail()}"/></label>
    </div>

    <div class="form-label-group">
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
    </div>
    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Update</button>
</form>
</html>