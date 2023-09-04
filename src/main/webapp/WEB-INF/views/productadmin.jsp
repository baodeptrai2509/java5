<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/product.css" rel="stylesheet" />
</head>
<body>
	<div class="container" style="border: 1px solid black;">
		<div class="row" >
			<div class="col-lg-10">
				<form:form action="/Fami/product" modelAttribute="item"
				enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:input path="id" placeholder="Id" hidden="hidden" />
								<br> Name:
								<form:input path="name" placeholder="Name" class="form-control" />
								<br> Price:
								<form:input path="price" placeholder="Price"
									class="form-control" />
								<br> Price:
								<form:input path="quantity" placeholder="Quantity"
									class="form-control" />
								<br> Category:
								<form:select path="category.id" class="form-control">
									<form:option value="">Select Category</form:option>
									<form:options items="${list_category}" />
								</form:select>
								<br> Image: <input type="file" name="photo_file"
									value="${item.image }">
							</div>
							<div class="col-sm-6">
								<img src="/images/${item.image }" width="70%" style="margin-top: 30px; margin-left: 50px;">
							</div>
						</div>
						${message }
						<button formaction="/Fami/product/create" class="btn btn-danger">Create</button>
						<button formaction="/Fami/product/update" class="btn btn-danger">Update</button>
						<button formaction="/Fami/product" class="btn btn-danger">Reset</button>
					</div>
				</div>
			</form:form>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-lg-10">
				<form action="product">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Bạn muốn tìm kiếm những gì ?" name="keywords"
							value="${keywords}"> <span class="input-group-addon">
							<button style="width: 100%; height: 100%"
								class="glyphicon glyphicon-search"></button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<hr>
		<table class="table table-striped">			
			<thead>
				<tr class="row-name">
					<th>Id</th>
					<th>Name</th>
					<th class="text-center">Quantity</th>
					<th class="text-center">Price</th>
					<th class="text-center">CreateDate</th>
					<th>Image</th>
					<th class="text-center">EDIT</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${page.content }">
					<tr class="row-content">
						<td>${item.id }</td>
						<td>${item.name }</td>
						<td class="text-center">${item.quantity }</td>
						<td class="text-center"><fmt:formatNumber
									value="${item.price}" type="currency"
									maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
						<td class="text-center">${item.createDate }</td>
						<td><img src="/images/${item.image }" height="30px"></td>
						<td class="text-center"><a class="btn btn-danger edit"
							href="/Fami/product/delete/${item.id}" aria-label="Settings">
								<i class="fa fa-trash" aria-hidden="true"></i>
						</a> &nbsp <a class="btn btn-info edit"
							href="/Fami/product/edit/${item.id }" aria-label="Settings">
								<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="container" style="margin-bottom: 10px">
			<div class="text-center">
				<c:forEach begin="1" end="${page.totalPages}" step="1" var="number">
					<a href="/Fami/product?p=${number-1 }" class="btn btn-danger"><strong>${number }</strong></a>
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