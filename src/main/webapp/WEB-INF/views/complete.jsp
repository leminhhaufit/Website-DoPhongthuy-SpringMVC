<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Cart Checkout</title>
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


</head>

<body>
	<jsp:include page="menu.jsp" />
	<div class="row" id="banner2">
		<h1 style="text-align: center; color: black; font-size: 36px">Cart
			Checkout</h1>
	</div>
	<section class="cartcheckout margin-t-50 margin-b-50">

		<div class="container">
			<h1 style="text-align: center; color: green">Cart Checkout</h1>
			<div id="checkoutimg">
				<img src="${pageContext.request.contextPath}/resources/www/cart(3).png" id="cartcheckout">
			</div>
			<div id="checkoutinfo">
				<p style="text-align: left; color: red; font-size: 26px">Cảm ơn bạn đã mua hàng tại HQN</p>
				<p>Your order code:</p>
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-4" id="codebill">
								<h1 style="text-align: center; color: white; font-size: 36px">${tenhd}</h1>
							</div>
						</div>
					</div>
				</div>
				
				<p>
					<img src="../resources/www/ship(1).png" id="ship">Đơn hàng của bạn sẽ được giao trong 7 ngày tới
				</p>
				<p>
					Chúng tôi đã gửi thông tin đơn hàng đến email của bạn.
					Nếu không thấy email của chúng tôi, hãy tìm kiếm trong thư mục Spam.Cảm ơn!
				</p>
				<div class="card">
					<div class="card-body" style="background-color: #d9d9d9">
						<div class="row">
							<div class="col-md-12">
								<p style="text-align: left; color: black; font-size: 18px">
									<img src="../resources/www/ship(2).png" id="ship"> Để quá trình diễn ra nhanh chóng, chúng tôi sẽ không gọi điện cho bạn để xác minh đơn hàng
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row" id="checkoutbtn">
				<div class="col-md-12">
					<form method="get" action="${pageContext.request.contextPath}/quanlydonhang">
						<button type="button" class="btn btn-primary"
							style="margin-left: 50px">Xem đơn hàng</button>
					</form>
				</div>
			</div>


		</div>
	</section>
	<jsp:include page="footer.jsp" />

	<!--JQuery for Bootstrap-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

</body>

</html>