<%@ include file="layout/header.jsp"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plant Details</title>
</head>
<body>
	 <!-- ${allPlants}  -->
	  
	  <div class="row"></div>
<div class="container">
	<h3>List of Available Plants</h3> 
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<thead class="thead-dark">
						<tr>
							<th>Name</th>
							<th>Description</th>
							<th>Category</th>
							<th>Quantity</th>
							<th>Price(£)</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="allPlant" items="${allPlants}">
							<tr>
								<td><c:out value="${ allPlant.pName}" /></td>
								<td><c:out value="${ allPlant.getpDesc()}" /></td>
								<td><c:out value="${ allPlant.getpCategory()}" /></td>
								<td>
								<c:choose>
									<c:when test="${ allPlant.getpQty() < 1}">
										<c:out value = "out of stock"/>
									</c:when>
									<c:otherwise>
										<c:out value="${ allPlant.getpQty()}" />
									</c:otherwise>
								</c:choose>
								</td>
								<td><c:out value="${ allPlant.getpPrice()}" /></td>
								<td>
									<c:choose>
										<c:when test="${not empty userName}">
											<c:if test="${ allPlant.getpQty() < 1}">
												<a type="button" class="btn disabled btn-primary" href="/addtocart?id=${ allPlant.getpID()}">Add to Cart </a>
											</c:if>
											<c:if test="${ allPlant.getpQty() > 0}">
												<a type="button" class="btn btn-primary" href="/addtocart?id=${ allPlant.getpID()}">Add to Cart </a>
											</c:if>
										</c:when>
										<c:otherwise>
											<span style="background-color:lightblue">
												<c:out value = "Login to add item in basket"/>
											</span>
										</c:otherwise>
									</c:choose>
								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

<br>
</body>
</html>