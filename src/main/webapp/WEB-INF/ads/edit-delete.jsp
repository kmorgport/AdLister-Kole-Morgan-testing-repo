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
<html lang="en">
<title>Ad</title>
<head>
    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/vendor/adpostVendor/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<style><%@include file="/css/ad.css"%></style>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Crop Lister</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--        <form class="form-inline">-->
        <!--            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">-->
        <!--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
        <!--        </form>-->
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
                    <a class="nav-link" href="/logout">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="container">
    <!-- Start	Product details -->
    <div class="product-details">
        <!-- 	Product Name -->
        <h1><c:out value="${ad.getTitle()}"/></h1>
        <!-- 		<span class="hint new">New</span> -->
        <!-- 		<span class="hint free-shipping">Free Shipping</span> -->
        <!-- 		the Product rating -->
        <span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
        <h2><c:out value="${ad.getPrice()}"/></h2>


        <!-- The most important information about the product -->
        <p class="information"><c:out value="${ad.getDescription()}"/></p>


        <!-- 		Control -->
        <div class="control">

            <!-- Start Button buying -->
            <a href="/edit?adId=${ad.getId()}"><button class="btn btn-success btn-outline-light">Edit</button></a>
            <a href="/delete?adId=${ad.getId()}"><button class="btn btn-danger btn-outline-light">Delete</button></a>
            <!-- End Button buying -->

        </div>

    </div>
    <!-- 	End	Product details   -->
    <!-- 	Start product image & Information -->
    <!--    <div class="product-image">-->
    <!--        <img src="vendor/Cheese_Bowl.png" alt="Cheese">-->
    <!--        &lt;!&ndash; 	product Information&ndash;&gt;-->
    <!--        <div class="info">-->
    <!--            <h2>The Description</h2>-->
    <!--            <ul>-->
    <!--                <li><strong>Flavor: </strong>Strong FLAVOR</li>-->
    <!--                <li><strong>Refrigeration: </strong>Yes</li>-->
    <!--                <li><strong>Date Harvested: </strong>12/02/2019</li>-->
    <!--            </ul>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--  End product image  -->

</div>
</body>
</html>