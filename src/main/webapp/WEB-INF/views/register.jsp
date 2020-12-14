<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Đăng ký tài khoản</title>
<!-- Fontawesome -->
<!--Bootstrap 4.3.1-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/register.css">
<style type="text/css">
section {
	background-color: #fff;
}
</style>

</head>

<body>
	<header>
		<nav class="navbar navbar-expand-sm navbar-light bg-light" id="header">
			<a class="navbar-brand" href="index.html">HQN Store</a>
			<button class="navbar-toggler d-lg-none" type="button"
				data-toggle="collapse" data-target="#collapsibleNavId"
				aria-controls="collapsibleNavId" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavId">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link"
						href="index.html">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="about.html">About</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="product.html"
						id="dropdownId" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Feng Shui</a>
						<div class="dropdown-menu" aria-labelledby="dropdownId">
							<a class="dropdown-item" href="normal.html">Normal</a> <a
								class="dropdown-item" href="vip.html">VIP</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="stores.html">Store</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
					</li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" id="search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="button"
						onclick="searchProduct()">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<button type="button" class="btn btn-primary"
					style="margin-left: 20px">
					Cart <span class="badge badge-light">0</span>
				</button>
				<span><a href="login.html"> Đăng nhập <i
						class="fa fa-sign-in fa-2" aria-hidden="true"></i></a></span>
			</div>
		</nav>

	</header>
	<br />
	<section>
		<div class="signup-form-container">
			<!-- form start -->
			<form:form modelAttribute="khachhang" method="post" role="form"
				id="register-form" autocomplete="off" action="taikhoandangky">

				<div class="form-header">
					<h3 class="form-title">
						<i class="fa fa-user"></i> Đăng ký
					</h3>

				</div>

				<div class="form-body">

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<span class="fa fa-1x fa-user-circle"></span>
								</div>
							</div>
							<form:input cssClass="form-control" path="ma"
								placeholder="Tên tài khoản" />
						</div>
						<span class="help-block" id="error"></span> <span id="dup"></span>
					</div>
					<div class="row">

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-id-badge" aria-hidden="true"></i>
									</div>
								</div>
								<form:input path="ho" cssClass="form-control" placeholder="Họ" />
							</div>
							<span class="help-block" id="error"></span>
						</div>

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-id-badge" aria-hidden="true"></i>
									</div>
								</div>
								<form:input path="ten" type="text" cssClass="form-control"
									placeholder="Tên" />
							</div>
							<span class="help-block" id="error"></span>
						</div>

					</div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<span class="glyphicon glyphicon-envelope">@</span>
								</div>
							</div>
							<form:input path="email" cssClass="form-control"
								placeholder="Email" />
						</div>
						<span class="help-block" id="error"></span>
					</div>


					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<span>+84</span>
								</div>
							</div>
							<form:input path="sdt" type="number" cssClass="form-control"
								placeholder="Số điện thoại" />
						</div>
						<span class="help-block" id="error"></span>
					</div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<i class="fa fa-calendar" aria-hidden="true"></i>
								</div>
							</div>
							<input name="ngaysinh1" type="date" class="form-control"
								placeholder="Ngày sinh">
						</div>


						<span class="help-block" id="error"></span>
					</div>
					<div class="row">

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-unlock-alt" aria-hidden="true"></i>
									</div>
								</div>
								<input name="password" id="password" type="password"
									class="form-control" placeholder="Mật khẩu">
							</div>
							<span class="help-block" id="error"></span>
						</div>

						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-unlock-alt" aria-hidden="true"></i>
									</div>
								</div>
								<input name="cpassword" type="password" class="form-control"
									placeholder="Xác nhận mật khẩu">
							</div>
							<span class="help-block" id="error"></span>
						</div>

					</div>

					<div class="row">
						<div class="form-group col-lg-6">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="fa fa-transgender-alt" aria-hidden="true"></i>
									</div>
								</div>
								<div style="margin-left: 5px;"
									class="custom-control custom-radio custom-control-inline">
									<form:radiobutton path="gioitinh" value="Nam"
										cssClass="custom-radio" checked="checked"
										cssStyle="margin-top:5px;margin-right:3px;" />
									<label for="">Nam</label>


								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<form:radiobutton path="gioitinh" value="Nữ"
										cssStyle="margin-top:5px;margin-right:3px;" />
									<label for="gioitinh">Nữ</label>
								</div>

							</div>
						</div>

					</div>
				</div>
				<div class="form-footer">
					<button type="submit" class="btn btn-info">
						<i class="fa fa-sign-in fa-2" aria-hidden="true"></i> Đăng ký
					</button>
				</div>
			</form:form>
		</div>
	</section>
	<footer>
		<div class="container-fluid" id="contfluid">
			<div class="row">
				<div class="col-md-3">
					<h4>Categories</h4>
					<p>
						<a href="about.html">About</a>
					</p>
					<p>
						<a href="normal.html">Normal</a>
					</p>
					<p>
						<a href="vip.html">VIP</a>
					</p>
					<p>
						<a href="contact.html">Contact</a>
					</p>
				</div>
				<div class="col-md-3">
					<h4>Help</h4>
					<p>
						<a href="contact.html">Track Order</a>
					</p>
					<p>
						<a href="contact.html">Return</a>
					</p>
					<p>
						<a href="contact.html">Shipping</a>
					</p>
					<p>
						<a href="contact.html">FAQs</a>
					</p>

				</div>
				<div class="col-md-3">
					<h4>Get in touch</h4>
					<p>Any question ? Let us know at Store 12 Nguyen Van Bao</p>
					<p>
						<a href="contact.html"><i class="fab fa-facebook-square fa-2x"></i></a>
						<a href="contact.html"><i class="fab fa-instagram fa-2x"></i></a>
						<a href="contact.html"><i class="fab fa-twitter fa-2x"></i></a>
					</p>
				</div>
				<div class="col-md-3">
					<h4>NewsLetter</h4>
					<form>
						<input type="email" placeholder="email@example.com" id="emailSub" /><br>
						<input type="submit" value="Subcribe" class="btn btn-primary"
							id="btnSub" />
					</form>

				</div>
			</div>
		</div>
	</footer>
	<!--JQuery for Bootstrap-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<script src="resources/js/register.js"></script>
</body>

</html>