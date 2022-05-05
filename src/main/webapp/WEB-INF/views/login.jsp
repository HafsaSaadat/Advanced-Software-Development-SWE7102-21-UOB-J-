<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <title>Login</title>
  </head>
  <body>
    <br /><br />
    <div class="jumbotron text-center">
  		<h1>Welcome ${userName} to the Bolton Online Nursery.</h1>
  		<p>Grow plants, save the environment!</p> 
	</div>
	
    <div>
      <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Enter valid username and password.</h3>
    </div>
    <!-- Login -->
    <div class="col-md-8">
      <form action="/login" method="post">
        <div class="form-group">
          <label for="usr">Name:</label>
          <input
            type="text"
            class="form-control"
            id="usr"
            name="userEmail"
            placeholder="Your Email"
          />
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input
            type="password"
            class="form-control"
            id="pwd"
            name="password"
            placeholder="Your Password"
          />
        </div>
        <button type="submit" class="btn btn-primary btn-block mb-4">
          Submit
        </button>
      </form>

      <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account?<a href="/regpage" style="color: #393f81;">Register here</a></p>
    </div>
  </body>
</html>
