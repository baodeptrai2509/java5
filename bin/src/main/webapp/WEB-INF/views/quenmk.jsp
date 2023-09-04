<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- jQuery -->
<script src="../Asm-TaiNguyen/js/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="../Asm-TaiNguyen/css/bootstrap.min.css" rel="stylesheet" />
<script src="../Asm-TaiNguyen/js/bootstrap.min.js"></script>
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
					<form method="post" action="quenmk" enctype="multipart/form-data">
						
					

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
									<input type="text" class="form-control" path="email" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
									<input type="text" class="form-control" path="username" name="username" id="username"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>
					 <c:if test="${not empty message}">
                <div class="alert alert-info">${message}</div>
            </c:if>
						<div class="form-group ">
							<button type="submit" class="btn  btn-lg btn-block login-button color">Forgot password</button>
						</div>
							<div class="login-register">
				            <a href="login">Login</a>
				         </div>
					</form>
				</div>
				
			</div>
		</div>
</body>
</html>