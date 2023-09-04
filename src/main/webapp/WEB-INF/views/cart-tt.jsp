<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />

	<div class="container panel-body">
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<table class="table table-striped">
					<thead>
						<tr>
							<!-- 									<th>Remove</th> -->
							<th style="width: 50%">Hình ảnh</th>
							<th style="width: 20%">Giá</th>
							<th style="width: 15%">Số lượng</th>
							<th style="width: 15%">Tổng</th>
						</tr>
					</thead>
					<tbody>
							<c:forEach var="item" items="${items }">
					<form acction="/Fami/cart/thanhToan/${item.id}">
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs">
										<img src="/images/${item.product.image }" alt="..."
											class="img-responsive" />
									</div>
									<div class="col-sm-10">
										<h4 class="nomargin">${item.product.name }</h4>
										<p>Quis aute iure reprehenderit</p>
									</div>
								</div>
							</td>
							<td class="col-sm-2 hidden-xs"><fmt:formatNumber
									value="${item.product.price}" type="currency"
									maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
							<td><input type="number"
									class="form-control text-center" name="quantity"
									value="${item.quantity }" onblur="this.form.submit()"></td>
							<%-- 						<td data-th="Subtotal" class="text-center">${item.product.price }</td> --%>
							<td class="text-center"><fmt:formatNumber
									value="${item.product.price * item.quantity}" type="currency"
									maxFractionDigits="3" currencyCode="VND" pattern="#,##0.##" />₫</td>
							
						</tr>
								
					</form>
					
				</c:forEach>
					</tbody>
					<tfoot>
					<tr>
					<td class="fa fa-angle-right"><strong> <h3>Total : ${thanhTien}</h3></strong></td></tr></tfoot>
					
				</table>
			</article>
			<aside class="col-sm-3">
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Email:</label> <input type="email"
							class="form-control" id="exampleInputEmail1" placeholder="Email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Địa Chỉ:</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Địa Chỉ">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">SĐT :</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							placeholder="Số điện thoại">
					</div>
					<a type="button"   href="cart/thanhtoan/bill" class="btn btn-success">Thanh Toán</a>
				</form>
			</aside>
		</div>
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