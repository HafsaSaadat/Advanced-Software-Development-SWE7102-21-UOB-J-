<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Details</title>
</head>
<body>
	<section class="h-100" style="background-color: #eee">
      <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-10">
            <div class="d-flex justify-content-between align-items-center mb-4">
              <h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
              <div>
                <p class="mb-0"></p>
              </div>
            </div>

		<c:if test="${not empty userName}">
			<c:forEach var="allCart" items="${allCartDetails}">
	            <div class="card rounded-3 mb-4">
	              <div class="card-body p-4">
	                <div class="row d-flex justify-content-between align-items-center">
	                  <div class="col-md-2 col-lg-2 col-xl-2">
	                  	<p class="lead fw-normal mb-2"> <c:out value="${ allCart.getpName()}" /> </p>
	                  </div>
	                  
	                  <div class="col-md-3 col-lg-3 col-xl-3">
	                    <p> <span class="text-muted"><c:out value="${ allCart.getpDesc()}" /> </span></p>
	                  </div>
	
	                  <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
	                    <h6 class="mb-0">Price <c:out value="${ allCart.getpPrice()}" /></h6>
	                  </div>
	                  
	                  <div class="col-md-1 col-lg-1 col-xl-2 text-end">
	                    <h6 class="mb-0">
	                    
	                    
	                    Quantity : 
	    <fmt:formatNumber type = "number" maxIntegerDigits = "1" value = "${ allCart.getpQty()}" />
	                    
	                    </h6>
	                  </div>
	                  
	                </div>
	              </div>
	            </div>
            </c:forEach>
            	<form action="/orderpage" method="POST">
            		<div class="card">
              			<div class="card-body">
                			<button type="submit" class="btn btn-primary btn-block mb-4"> Proceed to Pay </button>
              			</div>
            		</div>
            	</form>
          </c:if>
          </div>
        </div>
      </div>
    </section>
</body>
</html>