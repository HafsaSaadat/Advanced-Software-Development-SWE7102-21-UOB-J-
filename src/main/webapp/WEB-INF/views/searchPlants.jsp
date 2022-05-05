<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head> <meta charset="ISO-8859-1"><title>Search Plant</title> </head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<h3> Search <br><small class="text-muted">By Category or Name</small></h3>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">By Category</h5>
						<form class="card-text" action="/searchbycategory" method="POST">
							<select name="sPlantCategory" class="form-control" id="categ" required>
								<option value="flowering">Flowering Plant</option>
								<option value="nonflowering">Non Flowering Plant</option>
							</select> <br /> <input type="submit" class="btn btn-primary"
								value="Find">
						</form>
						<c:if test="${not empty searchCategoryResult}">
							<br>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Name</th>
										<th>Description</th>
										<th>Category</th>
										<th>Quantity</th>
										<th>Price(£)</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="allPlant" items="${searchCategoryResult}">
										<tr>
											<td><c:out value="${ allPlant.pName}" /></td>
											<td><c:out value="${ allPlant.getpDesc()}" /></td>
											<td><c:out value="${ allPlant.getpCategory()}" /></td>
											<td>
											<c:choose>
													<c:when test="${ allPlant.getpQty() < 1}">
														<c:out value="out of stock" />
													</c:when>
													<c:otherwise>
														<c:out value="${ allPlant.getpQty()}" />
													</c:otherwise>
											</c:choose>
											</td>
											<td><c:out value="${ allPlant.getpPrice()}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">By Name</h5>
						<form class="card-text" action="/searchbyname" method="POST">
							<input class="form-control mr-sm-2" type="text"
								name="sPlantSearch" required placeholder="Search by name"
								aria-label="Search" /> <br /> <input type="submit"
								class="btn btn-primary" value="Find">
						</form>

						<c:if test="${not empty searchResult}">
							<br>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Name</th>
										<th>Description</th>
										<th>Category</th>
										<th>Quantity</th>
										<th>Price(£)</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="allPlant" items="${searchResult}">
										<tr>
											<td><c:out value="${ allPlant.pName}" /></td>
											<td><c:out value="${ allPlant.getpDesc()}" /></td>
											<td><c:out value="${ allPlant.getpCategory()}" /></td>
											<td><c:choose>
													<c:when test="${ allPlant.getpQty() < 1}">
														<c:out value="out of stock" />
													</c:when>
													<c:otherwise>
														<c:out value="${ allPlant.getpQty()}" />
													</c:otherwise>
												</c:choose></td>
											<td><c:out value="${ allPlant.getpPrice()}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>