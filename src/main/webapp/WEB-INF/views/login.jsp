<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Poly -->
<link href="../Asm-TaiNguyen/css/dangnhap.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="row" id="pwd-container">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<section class="login-form">
					<form method="post" action="login" enctype="multipart/form-data" role="login">
					<a href = "home">
						<img src="../Asm-TaiNguyen/images/logo.webp" class="img-responsive" alt="" /> 
						</a>
						<input type="text" name="username" value="${user.username }" placeholder="Username" required
							class="form-control input-lg" /> 
						<input type="password" name="password" value="${user.password }" class="form-control input-lg" id="password"
							placeholder="Password" required />
						<label><input type="checkbox" name="remember"> Remember me</label>
						<button type="submit" class="btn btn-lg btn-block color">Sign
							in</button>
						${message }
						<div>
							<a href="dangki"> Sign up</a> or <a href="quenmk">Forgot password</a>
						</div>
					</form>
				</section>
			</div>
			<div class="col-md-4"></div>
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