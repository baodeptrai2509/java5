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
<link href="../Asm-TaiNguyen/css/product.css" rel="stylesheet" />
</head>
<body>
	<div class="container" style="border: 1px solid black;">
		<div class="row" >
			<div class="col-lg-10">
				<form:form action="/Fami/user" modelAttribute="item"
				enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:input path="username" placeholder="Username" hidden="hidden" />
								<br> Password:
								<form:input type="password" path="password" placeholder="Password"
									class="form-control" />
								<br> Email:
								<form:input path="email" placeholder="Email"
									class="form-control" />
								<br> Fullname:
								<form:input path="fullname" placeholder="Fullname"
									class="form-control" />
								<br> Phone:
								<form:input path="sdt" placeholder="Phone"
									class="form-control" />
								<form:input path="admin" hidden="hidden" />
								<br> Address:
								<form:input path="address" placeholder="Address"
									class="form-control" />
								<br> Activated: 
								<label><input type="checkbox" name="activated" checked /></label>
								<br> Image: <input type="file" name="photo_file"
									value="${item.image }">
							</div>
							<div class="col-sm-6">
								<img src="/images/${item.image }" width="70%" style="margin-top: 30px; margin-left: 50px;">
							</div>
						</div>
						${message }
						<button formaction="/Fami/user/create" class="btn btn-danger">Create</button>
						<button formaction="/Fami/user/update" class="btn btn-danger">Update</button>
						<button formaction="../Fami/user" class="btn btn-danger">Reset</button>
					</div>
				</div>
			</form:form>
			</div>
		</div>
		<hr>
		<table class="table table-striped">			
			<thead>
				<tr class="row-name">
					<th>Username</th>
					<th>Password</th>
					<th>Email</th>
					<th>Fullname</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Image</th>
					<th>EDIT</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${page.content }">
					<tr class="row-content">
						<td>${item.username }</td>
						<td>${item.password }</td>
						<td>${item.email }</td>
						<td>${item.fullname }</td>
						<td>${item.sdt }</td>
						<td>${item.address }</td>
						<td><img src="/images/${item.image }" height="30px"></td>
						<td><a class="btn btn-danger edit"
							href="/Fami/user/delete/${item.username}" aria-label="Settings">
								<i class="fa fa-trash" aria-hidden="true"></i>
						</a> &nbsp <a class="btn btn-info edit"
							href="/Fami/user/edit/${item.username }" aria-label="Settings">
								<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="container" style="margin-bottom: 10px">
			<div class="text-center">
				<c:forEach begin="1" end="${page.totalPages}" step="1" var="number">
					<a href="/Fami/user?p=${number-1 }" class="btn btn-danger"><strong>${number }</strong></a>
				</c:forEach>
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