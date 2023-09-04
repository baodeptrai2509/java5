<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<link href="../Asm-TaiNguyen/css/sanpham.css" rel="stylesheet" />
</head>
<body onload="check2(${check})">

	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	
	<div class="container">
	<form action="/Fami/sanpham/edit/${item.id }"
						method="post">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">

						<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
								<img src="/images/${item.image }" />
							</div>
						
						</div>
						

					</div>
					<div class="details col-md-6">
						<h3 class="product-title" >${item.name}</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span
									class="fa fa-star checked"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 đánh giá</span>
						</div>
						<p class="product-description">Sản phẩm giúp mang lại trải nghiệm tuyệt vời cho thú cưng của bạn.</p>
						<h4 class="price">
							current price: <span>${item.price }</span>
						</h4>
						<p class="vote">
							<strong>91%</strong> of buyers enjoyed this product! <strong>(87
								votes)</strong>
						</p>
						
						
						<div class="action">
							<button type="submit" class="btn btn-primary px-3">
								<i class="fa fa-shopping-cart mr-1"></i>Add to cart
							</button>
							<button class="like btn btn-default" type="button">
								<span class="fa fa-heart"></span>
							</button>
						</div>
			
						
					</div>
				</div>
			</div>
		</div>
		</form>
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">${alert}</h5>
									<!-- <button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button> -->
								</div>
								<div class="modal-body">${content}</div>
								<div class="modal-footer">
									<!-- <button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button> -->
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">OK</button>
								</div>
							</div>
						</div>
					</div>
	</div>
	
	<jsp:include page="footer.jsp" />


<script type="text/javascript">
	
	function check2(u){
        if(u == true){
            $("#exampleModal").modal("show");
        }
    }
	</script>

	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>