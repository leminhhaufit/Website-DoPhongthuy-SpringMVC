<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Địa chỉ thanh toán</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.all.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/thanhphan.css">
</head>
<body>
	<div class="container">
		<div class="row p-3 mb-2 bg-white rounded">
			<div class="col-md-12">
				<h5 class="text-center">HÌNH THỨC THANH TOÁN</h5>
			</div>
		</div>
		<div class="row  p-3 mb-5 bg-white rounded" style="">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h6>Hình thức thanh toán</h6>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<p>Giao hàng trực tiếp</p>
							<p class="text-success">
								Ước tính ngày giao: <strong>${date}</strong>
							</p> <c:forEach var="lsp" items="${listItemInCart}">
								<div class="card">
									<div class="card-header">
										<strong>Sản phẩm</strong>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item">Số lượng : ${lsp.soLuong} *
											${lsp.tenSanPham} <img alt="" width="20%" height="20%"
											src="${pageContext.request.contextPath}/resources/imguploads/${lsp.urlHinh}">
										</li>
										<li class="list-group-item">Giao tiêu chuẩn : 5000đ</li>

									</ul>
								</div>
								<p></p>
							</c:forEach>
						</li>

					</ul>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h6>THÔNG TIN GIAO HÀNG</h6>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="card">
								<div class="card-header font-weight-bold">Địa chỉ giao hàng</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">Tên: ${nguoi.ho} ${nguoi.ten}</li>
									<li class="list-group-item">Địa chỉ: ${diachi.sonha}, ${diachi.duong}, ${diachi.phuong}, ${diachi.quan},
														${diachi.thanhpho}</li>
									<li class="list-group-item">Số điện thoại: ${nguoi.sdt}</li>
								</ul>
							</div>
							
							<p></p>
							<div class="card">
								<div class="card-header font-weight-bold">Đơn hàng (${listItemInCart.size()} sản phẩm)</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item">
										<c:forEach var="sp" items="${listItemInCart}">
											<p><strong>${sp.soLuong}</strong> * ${sp.tenSanPham} = <fmt:formatNumber type="number" pattern="###,###" value="${sp.soLuong * sp.giaTien}" /> ₫</p>
											<hr/>
										</c:forEach>
										<p>Tiền phụ phí (5000đ/sản phẩm):  <fmt:formatNumber type="number" pattern="###,###" value="${listItemInCart.size() * 5000}" /> ₫</p>
										<hr/>
										<p><strong>Tổng tiền: </strong> <strong class="text-danger"><fmt:formatNumber type="number" pattern="###,###" value="${tongTien + listItemInCart.size() * 5000}" /></strong> </p>
									</li>
									
									
								</ul>
							</div>
						</li>

					</ul>
					
					
				</div>

			</div>
			
			<div class="col-md-12 text-center">
			<br/>
				<button type="submit" class="btn btn-danger col-md-12 " id="muahang"><strong>ĐẶT MUA</strong></button>
			</div>
		</div>
		
	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/muasanpham.js"></script>

</body>
</html>