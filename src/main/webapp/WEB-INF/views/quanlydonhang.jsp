<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý đơn hàng</title>
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--Bootstrap 4.3.1-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/contact.css">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">


</head>

<body>
    <header>

        <nav class="navbar navbar-expand-sm navbar-light bg-light" id="header">
            <a class="navbar-brand" href="index.html">HQN Store</a>
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="product.html" id="dropdownId1" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">Feng Shui</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownId1">
                            <a class="dropdown-item" href="normal.html">Normal</a>
                            <a class="dropdown-item" href="vip.html">VIP</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="stores.html">Store</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" id="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="searchProduct()"><i
                            class="fa fa-search"></i></button>
                
				
					<button type="button" class="btn btn-primary" style="margin-left:20px">
					  Cart <span class="badge badge-light">1</span>
					</button>
				 </form>
                <span><a href="login.html" hidden> Sign In <i class="fa fa-sign-in-alt"></i></a></span>
				 <div>
				 <ul  class="navbar-nav ">
				 <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle"  id="dropdownId1" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
							<img src="www/(49).jpg" id="hinhavatar" />
							</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownId1">
                            <a class="dropdown-item" href="normal.html">ThÃ´ng tin cÃ¡ nhÃ¢n</a>
                            <a class="dropdown-item" href="vip.html">ÄÄng xuáº¥t</a>
                        </div>
                    </li>
					</ul>
				 </div>
				 
            </div>
        </nav>

    </header>
    <div class="row" id="banner2">
        <h1>Cart Orders</h1>
    </div>
    <section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            <h1 style="text-align:center;color:green">ÄÆ¡n hÃ ng cá»§a tÃ´i</h1>
			<div class="row" id="tt" >
				<div class="col-md-3">
					<ul id="ulcart">
						<li>
							<img src="www/(49).jpg" id="hinhavatar2" />
							<small>TÃ i khoáº£n cá»§a</small>
							<div class="h4">Minh Háº­u</div><br>
						</li>
						<li>
							<img src="https://img.icons8.com/ios/30/000000/guest-male.png"/>
							<a href="#">ThÃ´ng tin cÃ¡ nhÃ¢n</a>
						</li><br>
						<li>
							<img src="https://img.icons8.com/ios/30/000000/purchase-order.png"/>
							<a href="#">Quáº£n lÃ½ ÄÆ¡n hÃ ng</a>
						</li><br>
						<li>
							<img src="https://img.icons8.com/ios/30/000000/export.png"/>
							<a href="#">ÄÄng xuáº¥t</a>
						</li>
					</ul>
				</div>
				<div class="col-md-9">
					
						<div class="inner"><table class="table table-hover">
						<thead><tr><th>MÃ£ ÄÆ¡n hÃ ng</th><th>NgÃ y mua</th><th>Sáº£n pháº©m</th><th>Tá»ng tiá»n</th><th>Tráº¡ng thÃ¡i ÄÆ¡n 
						hÃ ng</th></tr></thead><tbody><tr><td><a href="/sales/order/view/450100533">450100533</a></td><td>20/01/2020</td><td>Bá» dÃ¡n báº£o vá» Äáº¿ giÃ y The Mix Ultimate 
						Sole Protector - miáº¿ng dÃ¡n Äáº¿ giÃ y chá»ng mÃ²n</td><td>279.000 â«</td><td>Giao hÃ ng thÃ nh cÃ´ng</td></tr><tr><td><a 
						href="/sales/order/view/581038336">581038336</a></td><td>24/03/2018</td><td>CÃ¢y NÆ°á»c NÃ³ng Láº¡nh  Apechome - APH1010 - Báº¡c</td><td>2.599.000 â«</td><td>Giao 
						hÃ ng thÃ nh cÃ´ng</td></tr><tr><td><a href="/sales/order/view/98722792">98722792</a></td><td>15/08/2016</td><td>Chuyá»n Nhá» Trong Tháº¿ Giá»i Lá»n (TÃ¡i Báº£n 
					2015)...vÃ  01 sáº£n pháº©m khÃ¡c</td><td>98.000 â«</td><td>Giao hÃ ng thÃ nh cÃ´ng</td></tr></tbody></table></div>
			</div>
		</div>
		</div>
	</section>
    <footer>
        <div class="container-fluid" id="contfluid">
            <div class="row">
                <div class="col-md-3">
                    <h4>Categories</h4>
                    <p><a href="about.html">About</a></p>
                    <p><a href="normal.html">Normal</a></p>
					 <p><a href="vip.html">VIP</a></p>
                    <p><a href="contact.html">Contact</a></p>
                </div>
                <div class="col-md-3">
                    <h4>Help</h4>
                    <p><a href="contact.html">Track Order</a></p>
                    <p><a href="contact.html">Return</a></p>
                    <p><a href="contact.html">Shipping</a></p>
                    <p><a href="contact.html">FAQs</a></p>
                </div>
                <div class="col-md-3">
                    <h4>Get in touch</h4>
                    <p>Any question ? Let us know at Store 12 Nguyen Van Bao</p>
                    <p><a href="contact.html"><i class="fab fa-facebook-square fa-2x"></i></a> <a href="contact.html"><i
                                class="fab fa-instagram fa-2x"></i></a> <a href="contact.html"><i
                                class="fab fa-twitter fa-2x"></i></a> </p>
                </div>
                <div class="col-md-3">
                    <h4>NewsLetter</h4>
                    <form>
                        <input type="email" placeholder="email@example.com" id="emailSub" /><br>
                        <input type="submit" value="Subcribe" class="btn btn-primary" id="btnSub" />
                    </form>

                </div>
            </div>
        </div>
    </footer>
    <!--JQuery for Bootstrap-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>

</html>