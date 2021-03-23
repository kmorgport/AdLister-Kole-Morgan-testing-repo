<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Classroom
  Date: 3/18/21
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <!-- Bootstrap core CSS-->
  <jsp:include page="/WEB-INF/partials/loginPartial.jsp">
    <jsp:param name="title" value="Please Log In" />
  </jsp:include>
  <link href="${contextPath}/vendor/bootstrap/login-css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/vendor/bootstrap/login-css/bootstrap.bundle.min.js" rel="stylesheet">
  <link href="${contextPath}/vendor/bootstrap/login-css/jquery.slim.js" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <%--<link href="IdeaProjects/AdLister-Kole-Morgan-testing-repo/src/main/webapp/WEB-INF/css/login.css" type="text/css" rel="stylesheet">--%>
</head>
<body>
<%--<style><%@include file="/vendor/bootstrap/login-css/bootstrap.min.css"%></style>--%>
<%--<style><%@include file="/vendor/bootstrap/login-css/bootstrap.bundle.min.js"%></style>--%>
<%--<style><%@include file="/vendor/bootstrap/login-css/jquery.slim.js"%></style>--%>
<style><%@include file="/css/login.css"%></style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#">Crop Lister</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="/landing">Home
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/login">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid">
  <div class="row no-gutter">
    <i class="fas fa-tractor fa-10x w3-padding-64 w3-text-green" id="carrot"></i>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Welcome back!</h3>
              <form action="/login" method="POST">
                <c:if test="${error != null}">
                  <div class="alert alert-danger" role="alert">
                    Error: ${error}
                  </div>
                </c:if>
                <div class="form-label-group">
                  <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" required autofocus>
                  <label for="inputEmail"></label>
                </div>
                <div class="form-label-group">
                  <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
                  <label for="inputPassword"></label>
                </div>
                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">Remember password</label>
                </div>
                <button class="btn btn-lg btn-primary bg-success btn-block btn-login text-uppercase font-weight-bold mb-2"                                                     type="submit">Sign in</button>
                <div class="text-center">
                  <a href="/register">Register?</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="https://kit.fontawesome.com/e8df6b9ba4.js" crossorigin="anonymous"></script>
</body>
</html>