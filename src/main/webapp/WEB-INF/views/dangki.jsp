<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Poly -->
<link href="../Asm-TaiNguyen/css/dangki.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
			<div class="row main">
		
				<div class="panel-heading">
	               <div class="panel-title col-lg-offset-5">
	               		<a href = "home"><img src="../Asm-TaiNguyen/images/logo.webp" class="img-responsive" alt="" />
	               </a>
	               	</div>
	               	<hr>
	            </div> 
				<div class="main-login main-center">
					<form:form action="dangki" modelAttribute="item" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Full Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-align-justify" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" name="name" path="fullname" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="email" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="username" name="username" id="username"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
									<form:input type="password" class="form-control" path="password" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-refresh" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Phone</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i></span>
									<form:input type="number" class="form-control" path="Sdt" name="confirm" id="confirm"  placeholder="Phone"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-pushpin" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="address" name="confirm" id="confirm"  placeholder="Address"/>
								</div>
							</div>
						</div>
							 <c:if test="${not empty message}">
                <div class="alert alert-info">${message}</div>
            </c:if>
						<div class="form-group ">
							<button type="submit" name="register" class="btn  btn-lg btn-block login-button color">Register</button>
						</div>
						<div class="login-register">
				            <a href="login">Login</a>
				         </div>
					</form:form >
				
				</div>
				
			</div>
		</div>
		
			
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>