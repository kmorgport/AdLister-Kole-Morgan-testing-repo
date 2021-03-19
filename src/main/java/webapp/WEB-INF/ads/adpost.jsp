<%--
  Created by IntelliJ IDEA.
  User: Classroom
  Date: 3/18/21
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

</head>
<body>

<div id="container">
    <link href="post.css" rel="stylesheet">


    <!-- Start	Product details -->
    <div class="product-details">

        <!-- 	Product Name -->
<%--        <h1>Mammoth Cheese</h1>--%>
        <h1>${ad.getTitle}</h1>
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


        <!-- The most important information about the product -->
<%--        <p class="information">"In some camps, mammoth cheese sacks have a flap of hide stitched over them, which--%>
<%--            prevents the cheese from being harvested by the Dragonborn. Having the Green Thumb Alchemy perk allows for--%>
<%--            the collection of two bowls of mammoth cheese per sack."</p>--%>
        <p class="information">${ad.getDescription()}</p>


        <!-- 		Control -->
        <div class="control">

            <!-- Start Button buying -->
            <button class="btn">
                <!-- 		the Price -->
<%--                <span class="price">$49</span>--%>
                <span class="price">${ad.getPrice()}</span>
                <!-- 		shopping cart icon-->
                <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                <!-- 		Buy Now / ADD to Cart-->
                <span class="buy">EMAIL</span>
            </button>
            <!-- End Button buying -->

        </div>

    </div>

    <!-- 	End	Product details   -->


    <!-- 	Start product image & Information -->

    <div class="product-image">

        <img src="../../img/Cheese_Bowl.png" alt="Cheese">

        <!-- 	product Information-->
        <div class="info">
            <h2>The Description</h2>
            <ul>
                <li><strong>Flavor: </strong>Strong FLAVOR</li>
                <li><strong>Refrigeration: </strong>Yes</li>
                <li><strong>Date Harvested: </strong>12/02/2019</li>
            </ul>
        </div>
    </div>
    <!--  End product image  -->


</div>
</body>
</html>
