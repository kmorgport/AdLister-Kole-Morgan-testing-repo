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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile</title>
    <jsp:include page="/WEB-INF/partials/loginPartial.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/vendor/bootstrap/login-css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
</head>
<body>
<style><%@include file="/css/profile.css"%></style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Crop Lister</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <form action="/search" method="POST" class="form-inline">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
            <a class="nav-link" href="/search"><button class="btn btn-outline-secondary my-2 my-sm-0 text-white" type="submit">Search</button></a>
        </form>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/landing">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/edit-profile">Edit Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="main-body">
        <!-- /Breadcrumb -->
        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body avatar">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin"                                                   class="rounded-circle" width="150">
                            <div class="mt-3">
                                <h4><c:out value="${user.getUsername()}"/></h4>
                                <p class="text-light mb-1">Crop Lister Member</p>
                                <%--                                <p class="text-light font-size-sm">The Alamo, San Antonio, TX</p>--%>
                                <!--<button class="btn btn-primary">Follow</button>-->
                                <a href="/create"><button class="btn btn-outline-light">Post</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body info">
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0"><c:out value="${user.getUsername()}"/></h6>
                            </div>
                            <div class="col-sm-9 text-light">
                                <%--                                Jim Adler-The Texas Hammer--%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0"><c:out value="${user.getEmail()}"/></h6>
                            </div>
                            <div class="col-sm-9 text-light">
                                <%--                                EatYoGreens@mail.ru--%>
                            </div>
                        </div>
                        <hr>
                        <hr>
                    </div>
                </div>
                <!--CARDS-->
                <div class="row gutters-sm">
                    <c:forEach var="ad" items="${ads}">
                        <div class="col-sm-6 mb-3">
                            <div class="card h-100 post">
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="/edit-delete?adId=${ad.getId()}">${ad.getTitle()}</a>
                                    </h4>
                                    <h5>$${df.format(ad.getPrice())}</h5>
                                    <p class="card-text">${ad.getDescription()}</p>
                                </div>
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!--NEXT CARD-->
                    <%--                    <div class="col-sm-6 mb-3">--%>
                    <%--                        <div class="card h-100 post">--%>
                    <%--                            <div class="card-body">--%>
                    <%--                                <h4 class="card-title">--%>
                    <%--                                    <a href="#">Item One</a>--%>
                    <%--                                </h4>--%>
                    <%--                                <h5>$24.99</h5>--%>
                    <%--                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing                                elit. Amet numquam aspernatur!</p>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="card-footer">--%>
                    <%--                                <input class="inp" type="button" value="View Post" onclick="location                                    .href='AdminPage.jsp';" />--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript -->
<script src="${contextPath}vendor/jquery/jquery.min.js"></script>
<%--<script src="vendor/jquery/jquery.min.js"></script>--%>
<script src="${contextPath}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>