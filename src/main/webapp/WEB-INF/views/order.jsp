<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Order</title>
</head>
<body>
<section class="h-100" style="background-color: #eee">
	<div class="container">
      <div class="py-5 text-center">
        <h2>Checkout form</h2>
        <p class="lead">
			Bolton Online Nursery is offering special offer these days. 
			Get <span style="background-color:lightblue;">20% discount </span>over £50 spent.
        </p>
      </div>
      
      
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Your cart</span>
            <span class="badge badge-secondary badge-pill"></span>
          </h4>
          
          
          <ul class="list-group mb-3">
          	<c:set var="itemTotal" value="${0}" />
          	<c:forEach var="allCart" items="${CartDetailsOnOrder}">
	            <li class="list-group-item d-flex justify-content-between lh-condensed">
	              <div>
	                <h6 class="my-0"><c:out value="${ allCart.getpName()}" /></h6>
	                <small class="text-muted"><c:out value="${ allCart.getpDesc()}" /></small>
	              </div>
	              <span class="text-muted">£<c:out value="${ allCart.getpPrice()}" /></span>
	              <c:set var="itemTotal" value="${itemTotal + allCart.getpPrice()}" />
	            </li>
 			</c:forEach>
 			
            
			
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (GB)</span>
              <strong>£${itemTotal}</strong>
            </li>
            
            
             <li class="list-group-item d-flex justify-content-between">
            	<c:if test="${itemTotal > 50}">
   					<c:set var="discount" value="${(itemTotal *20)/100}" />
				</c:if>
				
				<c:if test="${itemTotal < 50}">
	   				<c:set var="discount" value="${0}" />
				</c:if>
			 
              	<span>Discount </span>
              	<strong>${discount}</strong>
              </li>
              
             <li class="list-group-item d-flex justify-content-between">
				<c:if test="${discount > 0}">
              		<c:set var="grandTotal" value="${itemTotal - discount}" />
              	</c:if>
              
              	<c:if test="${discount <= 0}">
              		<c:set var="grandTotal" value="${itemTotal}" />
              	</c:if>
              	<span>Grand Total (GB)</span>
              	<strong>${grandTotal}</strong>
              </li>  
              
          </ul>
        </div>
        
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Billing address</h4>
          <form class="needs-validation" novalidate>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input
                  type="text"
                  class="form-control"
                  id="firstName"
                  placeholder=""
                  value=""
                  required
                />
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input
                  type="text"
                  class="form-control"
                  id="lastName"
                  placeholder=""
                  value=""
                  required
                />
                <div class="invalid-feedback">Valid last name is required.</div>
              </div>
            </div>



            <div class="mb-3">
              <label for="email">Email</label>
              <input
                type="email"
                class="form-control"
                id="email"
                placeholder="you@example.com"
              />
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="mb-3">
              <label for="address">Address</label>
              <input
                type="text"
                class="form-control"
                id="address"
                placeholder="1234 Main St"
                required
              />
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2"
                >Address 2 <span class="text-muted">(Optional)</span></label
              >
              <input
                type="text"
                class="form-control"
                id="address2"
                placeholder="Apartment or suite"
              />
            </div>

            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Country</label>
                <select
                  class="custom-select d-block w-100"
                  id="country"
                  required
                >
                  <option value="">Choose...</option>
                  <option>United Kingdom</option>
                </select>
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="state">State</label>
                <select class="custom-select d-block w-100" id="state" required>
                  <option value="">Choose...</option>
                  <option>Lancashire</option>
                </select>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="zip">Zip</label>
                <input
                  type="text"
                  class="form-control"
                  id="zip"
                  placeholder=""
                  required
                />
                <div class="invalid-feedback">Zip code required.</div>
              </div>
            </div>
            <hr class="mb-4" />
            <div class="card">
            <div class="card-body">
            <h4 class="mb-3">Payment</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input
                  id="credit"
                  name="paymentMethod"
                  type="radio"
                  class="custom-control-input"
                  checked
                  required
                />
                <label class="custom-control-label" for="credit"
                  >Credit card</label
                >
              </div>
              <div class="custom-control custom-radio">
                <input
                  id="debit"
                  name="paymentMethod"
                  type="radio"
                  class="custom-control-input"
                  required
                />
                <label class="custom-control-label" for="debit"
                  >Debit card</label
                >
              </div>
              <div class="custom-control custom-radio">
                <input
                  id="paypal"
                  name="paymentMethod"
                  type="radio"
                  class="custom-control-input"
                  required
                />
                <label class="custom-control-label" for="paypal">PayPal</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input
                  type="text"
                  class="form-control"
                  id="cc-name"
                  placeholder=""
                  required
                />
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">Name on card is required</div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input
                  type="text"
                  class="form-control"
                  id="cc-number"
                  placeholder=""
                  required
                />
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Expiration</label>
                <input
                  type="text"
                  class="form-control"
                  id="cc-expiration"
                  placeholder=""
                  required
                />
                <div class="invalid-feedback">Expiration date required</div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-cvv">CVV</label>
                <input
                  type="text"
                  class="form-control"
                  id="cc-cvv"
                  placeholder=""
                  required
                />
                <div class="invalid-feedback">Security code required</div>
              </div>
            </div>
            </div>
            </div>
            <hr class="mb-4" />
            <button class="btn btn-primary btn-lg btn-block" type="submit">
              Place Order
            </button>
          </form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2020-2022 Bolton Online Nursery</p>
        <ul class="list-inline">
          <li class="list-inline-item"><a href="#">Privacy</a></li>
          <li class="list-inline-item"><a href="#">Terms</a></li>
          <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
      </footer>
    </div>
</section>
</body>
</html>