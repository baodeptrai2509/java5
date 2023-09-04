<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Poly -->
<link href="../Asm-TaiNguyen/css/index.css" rel="stylesheet" />
</head>
<body>
	<nav>
		<div class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!--Menu-->
					<ul class="nav navbar-nav">
						<li><a href=""><span
								class="glyphicon glyphicon-align-justify"></span> DANH MỤC SẢN
								PHẨM</a></li>
						<li><a href="home">TRANG CHỦ</a></li>
						<li><a href="dogshop">SHOP CHO CHÓ <span class="caret"></span></a></li>
						<li><a href="catshop">SHOP CHO MÈO <span class="caret"></span></a></li>
						<li><a href="tintuc">TIN TỨC <span class="caret"></span></a></li>
						<li class="dropdown"><a href="gioithieu"
							class="dropdown-toggle" data-toggle="dropdown">GIỚI THIỆU <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="gioithieu">Về chúng tôi</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="lienhe">Liên hệ</a></li>
							</ul></li>
						<c:if test="${user.admin == true }">
							<li><a href="quanli">QUẢN LÍ</a></li>
						</c:if>

					</ul>
					<!--Menu-->
				</div>
			</div>
		</div>
	</nav>



	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>