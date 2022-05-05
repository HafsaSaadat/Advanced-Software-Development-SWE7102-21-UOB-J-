<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ include file="layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="card">
  <div class="card-body">
     <h3 class="text-center">Add New Plant</h3><br>
		<form action="/add">
			<div class="form-group row">
    			<label for="name" class="col-sm-2 col-form-label"> Enter Plant Name: </label>
    			<div class="col-sm-8">
    			<input type ="text" name="pname" class="form-control" id="name"  required="required"><br>
    			</div>
    		</div>
    		
    		<div class="form-group row">
    			<label for="desc" class="col-sm-2 col-form-label"> Enter Plant Description:</label>
    			<div class="col-sm-8">
    				<input type ="text" class="form-control" name="pdesc" id="desc"><br>
    			</div>
    		</div>
    		
    		<div class="form-group row">
    			<label for="pcateg" class="col-sm-2 col-form-label">Choose a plant category:</label>
    			<div class="col-sm-8">
  				<select name="pcateg" class="form-control" id="categ">
    				<option value="flowering">Flowering Plant</option>
    				<option value="nonflowering">Non Flowering Plant</option>
  				</select>
  				</div>
    		</div>
    		
    		<div class="form-group row">
    			<label for="pqty" class="col-sm-2 col-form-label">Enter Quantity : </label>
    			<div class="col-sm-8">
    				<input type ="number" class="form-control" name="qty" id="pqty"><br>
    			</div>
    		</div>
    		
    		<div class="form-group row">
    			<label for="pprc" class="col-sm-2 col-form-label">Enter Price :£</label>
    			<div class="col-sm-8">
    				<input type ="number" class="form-control" name="prc" id="pprc"><br>
    			</div>
    		</div>
    		
    		<div class="form-group row">
    			<label for="image" class="col-sm-2 col-form-label">Image</label>
    			<div class="col-sm-8">
    				<input type="file" name="image" class="form-control" accept="image/png, image/jpeg"><br>
    			</div>
    		</div>
    		<%-- <div class="form-group col-md-6"> --%>
    		<%-- 	Description<textarea name="desc" rows="2" cols="50"></textarea><br>  --%>
    		<%-- </div> --%>
    		
    		<div class="form-group row">
    			<label class="col-sm-2 col-form-label"></label>
    			<div class="col-sm-8">
    			<div class="text-center">
    				<input type="submit" class="btn btn-primary btn-block mb-4" value="Add item">
    			</div>
    			</div>
    		</div>
			</form>
</div>
</div>
</body>
</html>