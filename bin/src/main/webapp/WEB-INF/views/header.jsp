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
	<header class="header">
		<div class="topbar panel-heading">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-7">
						<ul class="topbar_left hidden-md hidden-sm hidden-xs">
							<li><a href="#" class="welcome_text">Chào mừng bạn đến
									với FamiPet !</a></li>
							<li><a>Mở cửa: 9h - 21h30, thứ 2 - CN hàng tuần</a></li>
						</ul>
					</div>
					<div class="col-lg-6 col-md-5 col-sm-12 col-xs-12">
						<ul class="topbar_right">
							<li><img src="../Asm-TaiNguyen/images/VI.gif" alt="">
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> Tài khoản</a>
								<ul class="dropdown-menu">
									<c:if test="${empty user}">
										<li><a href="login">Đăng nhập</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="dangki">Đăng ký thành viên</a></li>
									</c:if>

									<c:if test="${!empty user}">
										<li><a href="doimk">Đổi mật khẩu</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="thongtinnguoidung">Trang cá nhân</a></li>
										<li><a href="logout">Đăng xuất</a></li>
									</c:if>
								</ul></li>
							<li><a href="lienhe" class="hidden-md hidden-sm hidden-xs"><span
									class="glyphicon glyphicon-map-marker"></span> Hệ thống cửa
									hàng</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="midbar panel-body">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<div class="logo">
							<a href="#" class="logo-wrapper "> <img
								src="../Asm-TaiNguyen/images/logo.webp" alt="logo ">
							</a>
						</div>
					</div>
					<div class="col-lg-5 col-md-5 col-xs-12 col-sm-12">
						<div class="header_search">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Bạn muốn tìm kiếm những gì ?"> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-zoom-in"></span></span>
							</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-4 col-xs-12 col-sm-12 hidden-md hidden-sm hidden-xs">
						<div class="navbar-left ">
							<div class="hotline">
								<span class="glyphicon glyphicon-earphone"></span>
							</div>
							<div class="content_hotline">
								<a href="tel:0919630131">0919630131</a><br> <span>HOTLINE
									MUA HÀNG</span>
							</div>
						</div>
						<div class="navbar-right">
							<div class="hotline">
								<span class="glyphicon glyphicon-shopping-cart"></span>
							</div>
							<div class="content_hotline">
								<a href="cart">(<c:if test="${empty user}">0</c:if> <c:if
										test="${!empty user}">${countpr}</c:if>) Sản phẩm
								</a><br> <span>GIỎ HÀNG</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>




	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
		crossorigin="anonymous"></script>
</body>
</html>