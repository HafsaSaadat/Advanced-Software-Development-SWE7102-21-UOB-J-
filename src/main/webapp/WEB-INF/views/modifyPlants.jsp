<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Plant</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12 text-center">
				<h3>
					Modify Product Details <br><small class="text-muted">Delete or Update</small>
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Delete Product</h5>
						<form class="card-text" action="/deletebyid" method="POST">
							<input class="form-control mr-sm-2" type="text"
								name="did" required placeholder="Delete by ID"
								aria-label="Delete">
							<br> <input type="submit" class="btn btn-primary"
								value="Delete">
						</form>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Update Product</h5>
						<form class="card-text" action="/updateallbyid" method="POST">
							<input class="form-control mr-sm-2" type="text" name="uppid" required placeholder="Plant ID"
								aria-label="ID"><br>
							<input class="form-control mr-sm-2" type="text" name="unname" required placeholder="Plant name"
								aria-label="name"> 
								<br>
							<input class="form-control mr-sm-2" type="text" name="uddesc" required placeholder="Plant name"
								aria-label="name">
								<br> <input type="submit"
								class="btn btn-primary" value="Update">
						</form>
					</div>
				</div>
			</div>
		</div>


	</div>



</body>
</html>