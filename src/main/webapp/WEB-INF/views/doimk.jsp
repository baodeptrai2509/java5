<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<form class="form-horizontal" method="post" action="#">

					

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
									<input type="text" value="${user.username }" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
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
						
						<div class="form-group ">
							<button type="button" class="btn  btn-lg btn-block login-button color">Change Password</button>
						</div>
						<div class="login-register">
				            <a href="dangnhap">Login</a>
				         </div>
					</form>
				</div>
				
			</div>
		</div>
</body>
</html>