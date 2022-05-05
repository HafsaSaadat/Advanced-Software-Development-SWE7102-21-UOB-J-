<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome to Bolton Nursery</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- font awesome icons cdn -->
<script src="https://kit.fontawesome.com/d75b3bb65c.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-info">
		<a class="navbar-brand" href="/viewlogin">LogIn</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<br>
		<br>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="<%=request.getContextPath()%>/">Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/viewplant">View Available
						Products</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/viewaddPlants">Add Product
						Info</a></li>
				<li class="nav-item"><a class="nav-link" href="/viewsearch">Search
						Product</a></li>
				<li class="nav-item"><a class="nav-link" href="/modifypage">Modify
						Product Details</a></li>
				<li class="nav-item"><a class="nav-link" href="/cartpage"><i class="fa-solid fa-cart-shopping"></i>
						<span style="background-color:lightblue;padding:2px;border-radius:100%;"> 5 </span> Cart</a></li>
				
			</ul>
		</div>
		<a class="navbar-brand" href="/logout">SignOut</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>

	<br><br>
	
    <div class="card text-center" style="width: 100rem">
      <div class="card-body">
        <h1 class="card-title">Welcome to the Bolton Online Nursery</h1>
        <h4 class="card-text">Grow plants, save the environment!</h4>
      </div>
     </div>
</body>
</html>