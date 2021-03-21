<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<title>Ad</title>
<!-- Bootstrap core CSS -->
<link href="${contextPath}/vendor/adpostVendor/bootstrap.bundle.min.js" rel="stylesheet">
<link href="${contextPath}/vendor/adpostVendor/all.css" rel="stylesheet">
<link href="${contextPath}/vendor/adpostVendor/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/vendor/adpostVendor/jquery.slim.min.js" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="ad.css" rel="stylesheet">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="">
</head>

<body>
<style><%@include file="/css/ad.css"%></style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center"><c:out value="${ad.getTitle()}"/></h5>
                    <form class="form-signin">
                        <div class="form-label-group">
                            <!--IMAGE-->
                            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                            <!--PRICE-->
                            <h5 class="card-price text-center">Price <c:out value="${ad.getPrice()}"/></h5>



                            <!--                            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>-->
                            <!--                            <label for="inputEmail">Email address</label>-->
                        </div>

                        <!--                        <div class="form-label-group">-->
                        <!--                            <input type="password" id="inputPassword" class="form-control" placeholder="Password"-->
                        <!--                                   required>-->
                        <!--                            <label for="inputPassword">Password</label>-->
                        <!--                        </div>-->

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <!--                            <label class="custom-control-label" for="customCheck1">Remember password</label>-->
                        </div>

                        <!--USER EMAIL-->
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Poster's Email: <c:out value="${user.getEmail()}"/></button>
                        <hr class="my-4">

                        <!-- Ad Description -->
                        <textarea id="inputEmail" class="form-control" name="w3review" rows="4" cols="50">
                            <c:out value="${ad.getDescription()}"/>
                        </textarea>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>