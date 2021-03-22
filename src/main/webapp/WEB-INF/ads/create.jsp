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
  <title>Contact V1</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
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

    <form class="contact1-form validate-form" action="/create" method="POST">
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
					Create Post
				</span>

      <div class="wrap-input1 validate-input" data-validate="Username is required">
        <input class="input1" type="text" name="title" placeholder="Title">
        <span class="shadow-input1"></span>
      </div>

      <div class="wrap-input1 validate-input" data-validate="Price is required">
        <input class="input1" type="text" name="price" placeholder="Price: $">
        <span class="shadow-input1"></span>
      </div>

      <div class="wrap-input1 validate-input" data-validate="Post is required">
        <textarea class="input1" name="description" placeholder="Description"></textarea>
        <span class="shadow-input1"></span>
      </div>

      <!--Category Checkboxes-->
      <!--            <div class="wrap-input1 validate-input" data-validate="Category is required">-->
      <!--                &lt;!&ndash;<input class="input1" type="text" name="subject" placeholder="Category">&ndash;&gt;-->
      <!--                <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">-->
      <!--                <label for="vehicle1"> I have a bike</label><br>-->
      <!--                <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">-->
      <!--                <label for="vehicle2"> I have a car</label><br>-->
      <!--                <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">-->
      <!--                <label for="vehicle3"> I have a boat</label><br>-->
      <!--                <span class="shadow-input1"></span>-->
      <!--            </div>-->
      <!--            <div class="wrap-input1 validate-input" data-validate="Category is required">-->
      <!--            <div class="custom-control custom-checkbox mb-3">-->
      <!--                <div class="checks">-->
      <!--                <input  type="checkbox" name="categories" id="fruit" value="1">-->
      <!--                <label for="fruit">Fruit</label>-->
      <!--                <input type="checkbox" name="categories" id="vegetables" value="2">-->
      <!--                <label for="vegetables">Vegetables</label>-->
      <!--                <input type="checkbox" name="categories" id="dairy" value="3">-->
      <!--                <label for="dairy">Dairy</label>-->
      <!--                <input type="checkbox" name="categories" id="baked_goods" value="4">-->
      <!--                <label for="baked_goods">Bread</label>-->
      <!--                <input type="checkbox" name="categories" id="jams" value="5">-->
      <!--                <label for="jams">Jams</label>-->
      <!--                <input type="checkbox" name="categories" id="ferments" value="6">-->
      <!--                <label for="ferments">Ferments</label>-->
      <!--                <input type="checkbox" name="categories" id="other" value="7">-->
      <!--                <label for="other">Other</label>-->
      <!--                </div>-->
      <!--            </div>-->
      <!--            </div>-->
      <!--            <div class="row d-flex justify-content-center mt-100">-->
      <!--                <div class="col-md-4">-->
      <!--                    <div class="card">-->
      <!--                        <div class="card-body text-center">-->
      <!--                            <h4 class="card-title">Custom Checkbox with whole width</h4>-->

      <p class="card-description">Chose a category.</p>
      <div class="checks">
        <hr class="mb-30">
        <label class="check"> <input type="checkbox" name="categories" value="1"> <span>Fruit</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="2"> <span>Vegetables</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="3"> <span>Dairy</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="4"> <span>Bread</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="5"> <span>Jams</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="6"> <span>Ferments</span> </label>
        <label class="check"> <input type="checkbox" name="categories" value="7"> <span>Other</span> </label>
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