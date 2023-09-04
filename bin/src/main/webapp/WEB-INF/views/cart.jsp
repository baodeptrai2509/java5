<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- Poly -->
<link href="../Asm-TaiNguyen/css/cart.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />

	CART
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>
 			<c:forEach var="item" items="${items }"> 
				<tr>
					<td data-th="Product">
						<div class="row">
							<div class="col-sm-2 hidden-xs">
								<img src="/images/${item.product.image }" alt="..."
									class="img-responsive" />
							</div>
							<div class="col-sm-10">
								<h4 class="nomargin">${item.product.name }</h4>
								<p>Quis aute iure reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit
									amet.</p>
							</div>
						</div>
					</td>
					<td>${item.product.price } </td>
					<td><input type="number"
						class="form-control text-center" name="quantity" value="1"></td>
					<td data-th="Subtotal" class="text-center">${item.product.price }</td>
					<td class="actions" data-th="">
						<a type="button" href="/sanpham/remove/${item.id}" class="btn btn-danger btn-sm">
							<i class="fa fa-trash-o"></i>Remove
						</a>
					</td>
				</tr>
 				</c:forEach>
			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>Total 1.99</strong></td>
				</tr>
				<tr>
					<td><a href="#" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
					<td><a href="#" class="btn btn-success btn-block">Checkout
							<i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
		</table>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
