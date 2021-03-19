<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Classroom
  Date: 3/18/21
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Please Log In" />
</jsp:include>

<body>

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
                    <a class="nav-link" href="#">Home
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
                    <a class="nav-link" href="#">About</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <div class="col-lg-3">

            <h1 class="my-4">Farm Fresh</h1>
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

        <div class="col-lg-9">

            <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
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
                            <a href="#"></a>
                            <div class="card-body">
                                <h4 class="card-title">${ad.getTitle()}</h4>
                                <h5>${ad.getPrice()}</h5>
                                <p class="card-text">${ad.getDescription()}</p>
                            </div>
                                <%--                            <div class="card-footer">--%>
                                <%--                                <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                                <%--                            </div>--%>
                        </div>
                    </div>
                    <%--                    <div class="col-md-6">--%>
                    <%--                        <h2>${ad.getTitle()}</h2>--%>
                    <%--                        <p>${ad.getDescription()}</p>--%>
                    <%--                    </div>--%>
                </c:forEach>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item One</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Two</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Three</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Four</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Five</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <<div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item One</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Two</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Three</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Four</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Five</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>

                <%--                <div class="col-lg-4 col-md-6 mb-4">--%>
                <%--                    <div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Six</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>div class="card h-100">--%>
                <%--                        <a href="#"></a>--%>
                <%--                        <div class="card-body">--%>
                <%--                            <h4 class="card-title">--%>
                <%--                                <a href="#">Item Six</a>--%>
                <%--                            </h4>--%>
                <%--                            <h5>$24.99</h5>--%>
                <%--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>--%>
                <%--                        </div>--%>
                <%--                        <div class="card-footer">--%>
                <%--                            <input class="inp" type="button" value="View Post" onclick="location.href='AdminPage.jsp';" />--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
            </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.col-lg-9 -->

</div>
<!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright 2020</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<jsp:include page="/WEB-INF/partials/script.jsp">
    <jsp:param name="title" value="Please Log In" />
</jsp:include>
</body>

</html>
