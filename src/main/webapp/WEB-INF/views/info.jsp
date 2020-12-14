<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>INFO</title>
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
	<br />
	<br />
	<br />
	<br />
	<section class="cartorder">
		<div class="container">
			<h1 style="text-align: center; color: green">Thông tin cá nhân</h1>
			<div class="row" id="tt">
				<div class="col-md-3">
					<ul id="ulcart">
						<li><img width="80%" height="80%"
							src="http://via.placeholder.com/550x550/ffb366/ffffff?text=${nguoi.ho} ${nguoi.ten}"
							style="border-radius: 100%" id="hinhavatar2" />
							<div class="h4">${nguoi.ho}${nguoi.ten}</div> <br></li>
						<li><img
							src="https://img.icons8.com/ios/30/000000/guest-male.png" /> <a
							href="#">Thông tin cá nhân</a></li>
						<br>
						<li><img
							src="https://img.icons8.com/ios/30/000000/purchase-order.png" />
							<a href="${pageContext.request.contextPath}/quanlydonhang">Quản lý đơn hàng</a></li>
						<br>
						<li><img
							src="https://img.icons8.com/ios/30/000000/export.png" /> <a
							href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
					</ul>
				</div>
				<c:set var="str1" value="${nguoi.getClass().name}" />
				<c:set var="str2" value="${fn:split(str1, '.')}" />
				<div class="col-md-9">
					<div class="form-group">
						<label>Số điện thoại</label>
						<div class="input-group mb-3">
							<input type="text" class="form-control"
								placeholder="Số điện thoại" aria-describedby="button-addon2"
								value="${nguoi.sdt}">
							<div class="input-group-append">
								<button class="btn btn-warning" type="button" id="button-addon2">Gửi
									mã xác thực</button>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="emailU">Email address</label> <input type="email"
							class="form-control" id="emailU" placeholder="name@example.com"
							value="${nguoi.email}">
					</div>
					<br>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="exampleRadios"
							id="exampleRadios1" value="Nam"
							${nguoi.gioitinh == "Nam" ? "checked" :""}> <label
							class="form-check-label" for="exampleRadios1"
							style="margin-right: 60px"> Nam </label> <input
							class="form-check-input" type="radio" name="exampleRadios"
							id="exampleRadios2" value="Nữ"
							${nguoi.gioitinh == "Nữ" ? "checked" :""}> <label
							class="form-check-label" for="exampleRadios2"> Nữ </label>
					</div>
					<br>
					<div class="form-group">
						<label>Ngày sinh</label> <input type="date" id="newProductImg"
							class="form-control">
					</div>
					<button class="btn btn-info" type="button" data-toggle="collapse"
						style="margin-bottom: 20px;" data-target="#collapseDC"
						aria-expanded="false" aria-controls="collapseExample">
						<img src="https://img.icons8.com/wired/30/000000/address.png" />
						Địa chỉ
					</button>
					<div class="collapse" id="collapseDC">
						<div class="container">
							<div class="row">


								<c:choose>
									<c:when test="${str2[3].equals('NhanVien')}">
										<div class="col-md-3" id="product1">
											<div class="card">
												<div class="card-body">
													<div class="row">
														<div class="col-md-12">
															<input class="form-check-input" type="radio"
																style="margin-left: 5px" st name="dc"
																id="exampleRadios1" value="option1" checked><br>
															<label> Thành phố:
																<h5 class="card-title productName">${nguoi.diachi.thanhpho}</h5>
															</label> <label> Quận: ${nguoi.diachi.quan}</label> <label>
																Phường: ${nguoi.diachi.phuong}</label> <label> Đường -
																số nhà: ${nguoi.diachi.sonha}, ${nguoi.diachi.duong}</label>
														</div>
													</div>
													
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach var="dckh" items="${nguoi.listdiachi}"
											varStatus="loop">
											<div class="col-md-3" id="product1">
												<div class="card">
													<div class="card-body">
														<div class="row">
															<div class="col-md-12">
																<input class="form-check-input" type="radio"
																	style="margin-left: 5px" st name="dc"
																	id="exampleRadios1" value="option1" checked><br>
																<label> Thành phố:
																	<h5 class="card-title productName">${dckh.thanhpho}</h5>
																</label> <label>Quận: ${dckh.quan}</label> <label>
																	Phường: ${dckh.phuong}</label> <label> Đường - số nhà:
																	${dckh.sonha}, ${dckh.duong}</label>
															</div>
														</div>
														<c:choose>
															<c:when test="${loop.index == 0}">
																<button class="btn btn-primary" data-toggle="modal"
																	data-target="#modelDC" id="btnCreate">Sửa</button>
															</c:when>
															<c:otherwise>
																<button type="button" class="btn btn-danger">Xóa</button>
																<button class="btn btn-primary" data-toggle="modal"
																	data-target="#modelDC" id="btnCreate">Sửa</button>

															</c:otherwise>
														</c:choose>

													</div>
												</div>
											</div>
										</c:forEach>
										<div class="col-md-3" id="product1">
											<div class="card">
												<div class="card-body">
													<div class="row">
														<div class="col-md-12">
															<button class="btn btn-light" data-toggle="modal"
																data-target="#modelDC" style="margin-bottom: 20px;">
																<img
																	src="https://img.icons8.com/ios/100/000000/plus-math.png" />
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>

									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<br>
					<!-- Modal -->
					<div class="modal fade" id="modelDC" tabindex="-1" role="dialog"
						aria-labelledby="modelTitleId" aria-hidden="true">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Thêm địa chỉ</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">
											<form>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<label class="input-group-text" for="inputGroupSelect01">Tên
															thành phố/Tĩnh</label>
													</div>
													<select name="thanhpho" id="tinh"
														class="com selectpicker form-control">
														<c:forEach var="idd" items="${listTP}">
															<option value="${idd.ID}">${idd.title}</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Quận/Huyện:</label>
														<select name="getHuyen" id="huyen"
															class="cach form-control">
															<option>Chọn quận/huyện</option>
														</select>

													</div>
													<span class="help-block" id="error"></span>
												</div>

												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Phường/Xã: </label>
														<select name="getxa" id="xa" class="cach form-control">
															<option>Chọn phường/xã</option>
														</select>

													</div>
													<span class="help-block" id="error"></span>
												</div>



												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Địa chỉ nhà:</label>
														<div class="cach form-group">
															<textarea style="margin-left: 10px;" class="form-control"
																id="nha" rows="3"></textarea>
														</div>

													</div>
													<span class="help-block" id="error"></span>
												</div>


												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Số đường:</label>
														<div class="cach form-group">
															<textarea style="margin-left: 10px;" class="form-control"
																id="duong" rows="3"></textarea>
														</div>

													</div>
													<span class="help-block" id="error"></span>
												</div>

											</form>
										</div>


									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Thoát</button>
									<button type="button" id="themdc" class="btn btn-primary"
										onclick="createProduct()">Lưu</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->

				</div>
				<div class="col-md-3"></div>
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<button type="button" class="btn btn-success">Lưu thay đổi</button>
				</div>
			</div>
		</div>
	</section>
	<br>
	<jsp:include page="footer.jsp" />
	<!--JQuery for Bootstrap-->
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
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/diachi.js"></script>

</body>

</html>