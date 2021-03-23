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
    <title>Edit Profile</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link href="${contextPath}images/icons/favicon.ico" rel="icon" type="image/png">
    <%--    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>--%>
    <!--===============================================================================================-->
    <link href="${contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <%--  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">--%>
    <!--===============================================================================================-->
    <link href="${contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css"rel="stylesheet">
    <%--  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">--%>
    <!--===============================================================================================-->
    <link href="${contextPath}/vendor/animate/animate.css" rel="stylesheet">
    <%--  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">--%>
    <!--===============================================================================================-->
    <link href="${contextPath}/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet">
    <%--  <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">--%>
    <!--===============================================================================================-->
    <link href="${contextPath}/vendor/select2/select2.min.css"rel="stylesheet">
    <%--  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">--%>
    <!--===============================================================================================-->
    <%--  <link href="${contextPath}/css/create/util.css"rel="stylesheet">--%>
    <%--&lt;%&ndash;  <link rel="stylesheet" type="text/css" href="css/util.css">&ndash;%&gt;--%>
    <%--  <link href="${contextPath}/css/create/main.css"rel="stylesheet">--%>
    <%--  <link rel="stylesheet" type="text/css" href="css/main.css">--%>
    <!--===============================================================================================-->
</head>
<body>
<style><%@include file="/css/create/util.css"%></style>
<style><%@include file="/css/create/main.css"%></style>
<div class="contact1">
    <div class="container-contact1">
        <div class="contact1-pic js-tilt" data-tilt>
            <img src="../img/img.png" alt="IMG">
        </div>
        <form class="contact1-form validate-form" action="/edit-profile" method="POST">
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
            <span class="contact1-form-title">
               Edit Profile
            </span>
            <div class="wrap-input1 validate-input" data-validate="Username is required">
                <input class="input1" type="text" name="title" placeholder=<c:out value="${user.getUsername()}"/>>
                <span class="shadow-input1"></span>
            </div>
            <div class="wrap-input1 validate-input" data-validate="Email is required">
                <input class="input1" type="text" name="price" placeholder=<c:out value="${user.getEmail()}"/>>
                <span class="shadow-input1"></span>
            </div>
            <div class="wrap-input1 validate-input" data-validate="Password is required">
                <input class="input1" type="password" name="price" placeholder=<c:out value="Password"/>>
                <span class="shadow-input1"></span>
            </div>
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <br><br>
            <div class="container-contact1-form-btn">
                <button class="contact1-form-btn" type="submit">
                  <span>
                     Post
                     <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                  </span>
                </button>
            </div>
            <br>
            <div class="container-contact1-form-btn">
                <button class="contact1-form-btn" type="reset">
                  <span>
                     Cancel
                     <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                  </span>
                </button>
            </div>
        </form>
    </div>
</div>
<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/tilt/tilt.jquery.min.js"></script>
<script>
    $('.js-tilt').tilt({
        scale: 1.1
    })
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-23581568-13');
</script>
<!--===============================================================================================-->
<!--<script src="js/main.js"></script>-->
<script>(function ($) {
    "use strict";
    /*==================================================================
    [ Validate ]*/
    var name = $('.validate-input input[name="name"]');
    var email = $('.validate-input input[name="email"]');
    var subject = $('.validate-input input[name="subject"]');
    var message = $('.validate-input textarea[name="message"]');
    $('.validate-form').on('submit', function () {
        var check = true;
        if ($(name).val().trim() == '') {
            showValidate(name);
            check = false;
        }
        if ($(subject).val().trim() == '') {
            showValidate(subject);
            check = false;
        }
        if ($(email).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
            showValidate(email);
            check = false;
        }
        if ($(message).val().trim() == '') {
            showValidate(message);
            check = false;
        }
        return check;
    });
    $('.validate-form .input1').each(function () {
        $(this).focus(function () {
            hideValidate(this);
        });
    });
    function showValidate(input) {
        var thisAlert = $(input).parent();
        $(thisAlert).addClass('alert-validate');
    }
    function hideValidate(input) {
        var thisAlert = $(input).parent();
        $(thisAlert).removeClass('alert-validate');
    }
})(jQuery);</script>
</body>
</html>