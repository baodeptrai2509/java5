<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />


	<div class="container panel-body">
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<div class="container-fluid">
					<div class="title_menu">
						<div class="panel-heading">SHOP CHO CHÓ</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 hidden-sm">
							<div id="carousel-example-generic" class="carousel slide"
								data-ride="carousel" data-pause="hover" data-interval="3000">
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img src="../Asm-TaiNguyen/images/banner_1_fashion.webp"
											alt="...">
									</div>
									<div class="item">
										<img src="../Asm-TaiNguyen/images/banner_2_fashion.webp"
											alt="...">
									</div>
								</div>
							</div>
						</div>
						<c:forEach var="item" items="${itemdog}">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="..${item.image }" alt="...">
									<div class="caption text-center">
										<a class="status" href="#">${item.name } 110g</a>
										<div class="rating">
											<span class="glyphicon glyphicon-star-empty"></span> <span
												class="glyphicon glyphicon-star-empty"></span> <span
												class="glyphicon glyphicon-star-empty"></span> <span
												class="glyphicon glyphicon-star-empty"></span> <span
												class="glyphicon glyphicon-star-empty"></span>
										</div>
										<span class="status">${item.price }₫</span>
										<p>
											<a href="#" class="btn btn-danger" role="button">Đặt hàng</a>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				
			</article>
			<aside class="col-sm-3">
				<div class="panel-group" id="accordion">
					<!--Category-->
					<div class="panel panel-default">
						<div class="panel-heading" data-toggle="collapse"
							data-parent="#accordion" href="#chungloai">
							<span class="glyphicon glyphicon-th-list"></span> <strong>Thức
								ăn cho chó</strong>
						</div>

						<div id="chungloai" class="list-group panel-collapse collapse in">
							<a href="#" class="list-group-item">Thức ăn <span
								class="badge">10</span></a> <a href="#" class="list-group-item">Sữa
								tắm <span class="badge">7</span>
							</a> <a href="#" class="list-group-item">Phụ kiện <span
								class="badge">3</span></a> <a href="#" class="list-group-item">Y
								tế & Thuốc <span class="badge">21</span>
							</a> <a href="#" class="list-group-item">Đồ dùng <span
								class="badge">14</span></a>
						</div>
					</div>
					<!--/Category-->

					<!--Supplier-->
					<div class="panel panel-default">

						

						<div id="nhacungcap" class="list-group panel-collapse collapse">
							<a href="#" class="list-group-item">Thức ăn</a> <a href="#"
								class="list-group-item">Sữa tắm</a> <a href="#"
								class="list-group-item">Phụ kiện</a> <a href="#"
								class="list-group-item">Y tế & Thuốc</a> <a href="#"
								class="list-group-item">Đồ dùng</a>
						</div>
					</div>
					<!--/Supplier-->

					<!--Special-->
					<div class="panel panel-default">
						<div class="panel-heading" data-toggle="collapse"
							data-parent="#accordion" href="#hangdatbiet">
							<span class="glyphicon glyphicon-star-empty"></span> <strong>Hàng
								đặc biệt</strong>
						</div>

						<div id="hangdatbiet" class="list-group panel-collapse collapse">
							<a href="#" class="list-group-item">BỌT TẮM KHÔ CHO THÚ CƯNG
								SUPER CLEAR AMITAVET 250ML</a> <a href="#" class="list-group-item">Thức
								Ăn Hạt Khô Keos- Thức ăn cho chó mèo</a>
						</div>
					</div>
					<!--/Special-->
				</div>

			</aside>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>