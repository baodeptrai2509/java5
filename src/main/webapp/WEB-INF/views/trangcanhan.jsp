<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/trangcanhan.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav2.jsp" />
	<br>
	
	
	<div class="container">
	<div class="container1" style="border: 1px solid black;" >
		<div class="row" >
			<div class="col-lg-10">
				<form:form action="/Fami/trangcanhan" modelAttribute="item"
				enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-6 form-group" >
								<br> Username:
								<form:input  value="${user.username}" path="username" placeholder="Username" 
									class="form-control" disabled="disabled" />
								<br>password :
								<form:input value="${user.password}" path="password" placeholder="Password"
									class="form-control" />
								<br> Email:
								<form:input value="${user.email}" path="email" placeholder="Email"
									class="form-control" />
								<br> Fullname:
								<form:input value="${user.fullname}" path="fullname" placeholder="Fullname"
									class="form-control" />
								<br> Phone:
								<form:input value="${user.sdt} " path="sdt" placeholder="Phone"
									class="form-control" />
								<form:input path="admin" hidden="hidden" />
								<br> Address:
								<form:input value="${user.address} " path="address" placeholder="Address"
									class="form-control" />
								<br> Image: <input type="file" name="photo_file"
									value="${user.image }">
							</div>
							<div class="col-sm-6">
								<img src="/images/${user.image}" width="600px" style="margin-top: 30px; margin-left: 50px;">
							</div>
						</div>
						${message }
						<button formaction="/Fami/trangcanhan/update" class="btn">Update</button>
						<button formaction="../Fami/logout" class="btn">Reset</button>
					</div>
				</div>
			</form:form>
			</div>
		</div>
		</div>
		<hr>
	</div>
	
	
	<jsp:include page="footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>