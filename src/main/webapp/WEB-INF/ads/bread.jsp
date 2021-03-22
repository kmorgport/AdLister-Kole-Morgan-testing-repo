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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Landing Page</title>
    <jsp:include page="/WEB-INF/partials/loginPartial.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/vendor/bootstrap/login-css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css.css" rel="stylesheet">
</head>
<body>
<style><%@include file="/css/css.css"%></style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Crop Lister</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <form action="/search" method="POST" class="form-inline">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
            <a class="nav-link" href="/search"><button class="btn btn-outline-secondary my-2 my-sm-0 text-white" type="submit">Search</button></a>
        </form>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/landing">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile">Profile</a>
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
<!-- Page Content -->
<div class="container w3-green">
    <div class="row">
        <div class="col-lg-3 categories">
            <h1 class="my-4 farm-fresh">Farm Fresh</h1>
            <div class="list-group">
                <a href="/landing" class="list-group-item">Home</a>
                <a href="/veggie" class="list-group-item">Veggie</a>
                <a href="/fruit" class="list-group-item">Fruit</a>
                <a href="/jams" class="list-group-item">Jams</a>
                <a href="/ferments" class="list-group-item">Ferments</a>
                <a href="/dairy" class="list-group-item">Dairy</a>
                <a href="/bread" class="list-group-item">Bread</a>
                <a href="/other" class="list-group-item">Other</a>
            </div>
        </div>
        <!-- /.col-lg-3 -->
        <!--carousel-->
        <div class="col-lg-9">
            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid img" src="img/apples.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid img" src="img/fields.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid img" src="img/kermit2.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid img" src="img/agri.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid img" src="img/chicks.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid img" src="img/eatingyogurt.jpeg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="row">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="/adpost?adId=${ad.getId()}">
                                <div class="card-body">
                                    <h4 class="card-title">${ad.getTitle()}</h4>
                                    <h5>$${df.format(ad.getPrice())}</h5>
                                    <p class="card-text">${ad.getDescription()}</p>
                                </div>
                                    <%--                            <div class="card-footer">--%>
                                    <%--                                <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                                    <%--                            </div>--%>
                            </a>
                        </div>
                    </div>
                    <%--                    <div class="col-md-6">--%>
                    <%--                        <h2>${ad.getTitle()}</h2>--%>
                    <%--                        <p>${ad.getDescription()}</p>--%>
                    <%--                    </div>--%>
                </c:forEach>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
<!-- Footer -->
<!--<footer class="py-5 bg-success foot">-->
<!--    <div class="container">-->
<!--        <p class="m-0 text-center text-white">Copyright 2020</p>-->
<!--    </div>-->
<footer class="w3-container w3-padding-64 w3-center  py-1 bg-success foot">
    <div class="w3-xlarge w3-padding-32">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-snapchat w3-hover-opacity"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
        <i class="fa fa-linkedin w3-hover-opacity"></i>
    </div>
    <p>Powered by <a href="#" target="_blank">CROPS</a></p>
</footer>
<!-- /.container -->
<%--</footer>--%>
<!-- Bootstrap core JavaScript -->
<script src="${contextPath}vendor/jquery/jquery.min.js"></script>
<%--<script src="vendor/jquery/jquery.min.js"></script>--%>
<script src="${contextPath}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<%--<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
</body>
</html>