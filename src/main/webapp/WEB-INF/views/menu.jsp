<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	
	<nav class="navbar navbar-expand-sm navbar-light bg-light" id="header">
		<a class="navbar-brand" href="${pageContext.request.contextPath}">HQN Store</a>
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
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					id="search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="button"
					onclick="searchProduct();">
					<i class="fa fa-search"></i>
				</button>
			</form>
			<form action="${pageContext.request.contextPath}/checkout/cart" method="get">
				<button type="submit" class="btn btn-primary"
					style="margin-left: 20px">
					Cart <span id="soluong" class="badge badge-light">${soSP}</span>
				</button>
			</form>
			<span><a href="login.html"> Đăng nhập <i
					class="fa fa-sign-in-alt"></i></a></span>
		</div>
	</nav>

</header>