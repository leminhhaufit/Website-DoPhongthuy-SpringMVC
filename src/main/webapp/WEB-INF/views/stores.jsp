<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Store</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" />
<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<!--Bootstrap 4.3.1-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!--CSS-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/contact.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/button.css">
<style type="text/css">
.col-md-3 {
	margin-top: 10px;
}
</style>
</head>

<body>

	<jsp:include page="menu.jsp" />


	<section class="banner">
		<div id="carouselId" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselId" data-slide-to="0" class="active"></li>
				<li data-target="#carouselId" data-slide-to="1"></li>
				<li data-target="#carouselId" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block w-100"
						src="${pageContext.request.contextPath}/resources/www/banner_1.jpg"
						alt="First slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>Golden</h3>
						<p>SHOP NOW</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="${pageContext.request.contextPath}/resources/www/banner_2.jpg"
						alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>Golden</h3>
						<p>SHOP NOW</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="${pageContext.request.contextPath}/resources/www/banner_3.jpg"
						alt="Third slide">
					<div class="carousel-caption d-none d-md-block">
						<h3>Golden</h3>
						<p>SHOP NOW</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselId" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselId" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</section>
	<section class="categories margin-t-50 margin-b-50">
		<div class="container">
			<h1 style="text-align: center; color: green">HQNShop</h1>
			<br>
			<br>
			<h4 style="text-align: left; color: gray">Tìm kiếm theo:</h4>
			<div class="row" id="products1">
				<div class="col-md-12" id="timLoai">

					<div class="card">
						<ul class="nav justify-content-start">
							<li class="nav-item"><a class="nav-link disabled" href="#"
								style="margin-right: 10px">Loại sản phẩm:</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Normal</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">VIP</a></li>

						</ul>
					</div>
				</div>
				<div class="col-md-12" id="timNCC">

					<div class="card">
						<ul class="nav justify-content-start">
							<li class="nav-item"><a class="nav-link disabled" href="#"
								style="margin-right: 10px">Nhà cung cấp:</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Ngoc
									Vang IC</a></li>
							<li class="nav-item"><a class="nav-link" href="#"></a></li>

						</ul>
					</div>
				</div>
				<div class="col-md-12" id="timNuocSX">

					<div class="card">
						<ul class="nav justify-content-start">
							<li class="nav-item"><a class="nav-link disabled" href="#"
								style="margin-right: 10px">Nuoc san xuat:</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Viet
									Nam</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Trung
									Quoc</a></li>

						</ul>
					</div>
				</div>
			</div>
			<c:forEach var="listSP" items="${listSPController}">
				<h3 style="text-align: left; color: gray">${listSP.tenncc}</h3>
				<div class="row" id="products">
					<c:forEach var="sp" items="${listSP.listsp}">
						<c:if test="${sp.soluongton > 0}">
							<div class="col-md-3" id="m${sp.masp}">
								<div class="card">
									<img class="card-img-top img-src"
										src="${pageContext.request.contextPath}/resources/imguploads/${sp.urlhinh}"
										style="width: 80%" />
									<hr>
									<div class="card-body">
										<div class="row">
											<div class="col-md-10">
												<h5 class="card-title productName">${sp.tensp}</h5>

											</div>
											<div class="col-md-2">
												<i class="far fa-heart"></i>
											</div>
										</div>

										<p class="card-text productPrice">
											<fmt:formatNumber type="number" pattern="###,###"
												value="${sp.giaban}" />
											VND
										</p>

									</div>
								</div>

							</div>


						</c:if>

					</c:forEach>
				</div>


			</c:forEach>

		</div>

	</section>

	<jsp:include page="footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/product.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js
        "></script>
	<script type="text/javascript">
		
	</script>

</body>

</html>