<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Cart Order</title>
<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
</head>

<body>
	<jsp:include page="menu.jsp" />
	<div class="row" id="banner2">
		<h1 style="text-align: center; color: black; font-size: 36px">Cart
			Checkout</h1>
	</div>
	<section class="cartorder margin-b-50">
		<div class="container">
			<h1 style="text-align: center; color: green">Cart Orders</h1>
			
			<c:choose>
				<c:when test="${listTemp.size() == 0}">
					<h6 class="offset-md-4">Vui lòng thêm sản phẩm, hiển tại giỏ hàng chưa có sản phẩm</h6>
				</c:when>
				<c:otherwise>


					<div class="row offset-md-2" id="cart">
						<div class="col-md-15">
							<table class="table table-hover" id="tblCartItem">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Mã sản phẩm</th>
										<th scope="col">Hình ảnh</th>
										<th scope="col">Tên sản phẩm</th>
										<th scope="col">Giá tiền</th>
										<th scope="col">Số lượng</th>
										<th scope="col">Thao tác</th>
									</tr>
								</thead>
								<c:forEach var="sanpham" items="${listTemp}">
									<tr>
										<td>${sanpham.maSanPham}</td>
										<td><img
											src="${pageContext.request.contextPath}/resources/imguploads/${sanpham.urlHinh}"
											id="hinhcart" /></td>
										<td>${sanpham.tenSanPham}</td>
										<td><fmt:formatNumber type="number" pattern="###,###"
												value="${sanpham.giaTien}" /> VND</td>
										<form class="frmSanPham">
											<td><input class="form-control" type="number" min="0"
												max="${sanpham.slmax}" value="${sanpham.soLuong}"
												id="${sanpham.maSanPham}"></td>

											<td>
												<button type="button" class="btn btn-danger">
													<i class="fa fa-trash" aria-hidden="true"></i> Xóa
												</button>
											</td>
										</form>
									</tr>
								</c:forEach>
								<tr>
									<td colspan="3"></td>
									<td colspan="2"><i class="fa fa-money" aria-hidden="true"></i>
										Tổng tiền:</td>
									<td colspan="1" id="tongtien" class="badge badge-dark mt-1"><fmt:formatNumber
											type="number" pattern="###,###" value="${tongTien}" /> đ</td>
								</tr>
							</table>

						</div>
						<div class="col-md-5">

							<form method="GET"
								action="${pageContext.request.contextPath}/checkout/shipping">
								<c:if test="${listTemp.size() >0}">
									<button type="submit" class="btn btn-primary"
										style="margin-left: 50px">Thanh toán</button>
								</c:if>
							</form>
						</div>
					</div>
				</c:otherwise>
			</c:choose>

		</div>
	</section>
	<jsp:include page="footer.jsp" />
	<!--JQuery for Bootstrap-->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/ThaoTacSanPham.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js
        "></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		
	</script>

</body>

</html>