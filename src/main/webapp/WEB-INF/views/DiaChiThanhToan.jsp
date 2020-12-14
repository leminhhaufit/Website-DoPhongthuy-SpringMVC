<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div class="row p-3 mb-5 bg-white rounded" style="">
			<%-- <div class="col-md-6">
				<h6 class="text-center">THÔNG TIN TÀI KHOẢN</h6>
				<div class="form-group">
					<label for="ho"><h6>HỌ</h6> </label> <input type="text" id="ho"
						placeholder="" class="form-control" value="${nguoi.ho}"
						disabled="disabled">
				</div>

				<div class="form-group">
					<label for="ten"><h6>TÊN</h6></label> <input type="text" id="ten"
						placeholder="" class="form-control" value="${nguoi.ten}"
						disabled="disabled">
				</div>

				<div class="form-group">
					<label for=email><h6>EMAIL</h6></label> <input type="text"
						disabled="disabled" id="email" placeholder="" class="form-control"
						value="${nguoi.email}">
				</div>

				<div class="form-group">
					<label for="sdt"><h6>SỐ ĐIỆN THOẠI</h6></label> <input type="text"
						disabled="disabled" id="sdt" placeholder="" class="form-control"
						value="${nguoi.sdt}">
				</div>
				<button id="getL" type="button"
					class="btn btn-success col-md-12 hide">GET LIST FRIENDS</button>

			</div> --%>
			<div class="col-md-12">

				<h3 class="text-center">ĐỊA CHỈ THANH TOÁN</h3>
				<c:set var="str1" value="${nguoi.getClass().name}" />
				<c:set var="str2" value="${fn:split(str1, '.')}" />

				<c:choose>
					<c:when test="${str2[3].equals('NhanVien')}">
						<p>Chức năng: mua sản phẩm cho tài khoản quản lý</p>
						<c:choose>
							<c:when test="${nguoi.diachi != null}">
								<h6>2. Địa chỉ giao hàng</h6>
								<div class="card bg-light">
									<div class="card-body text-center">
										<strong>${nguoi.ho} ${nguoi.ten}</strong>
										<div class="card-body text-center">
											<p class="card-text">
												<span class="badge badge-info">Địa chỉ <i
													class="fa fa-address-card-o" aria-hidden="true"></i></span>:
												${nguoi.diachi.sonha}, ${nguoi.diachi.duong},
												${nguoi.diachi.phuong}, ${nguoi.diachi.quan},
												${nguoi.diachi.thanhpho}
											</p>
											<p>
												<span class="badge badge-info">Số điện thoại: <i
													class="fa fa-phone-square" aria-hidden="true"></i></span>
												${nguoi.sdt}
											</p>

											<button type="button" class="btn btn-primary btn-giao" value="${nguoi.diachi.madiachi}">Giao
												đến địa chỉ này</button>
											<button type="submit" class="btn edit-address">Sửa</button>
											<span class="default"><svg stroke="currentColor"
													fill="currentColor" stroke-width="0" viewBox="0 0 512 512"
													height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
																	<path
														d="M256 8C119.033 8 8 119.033 8 256s111.033 248 248 248 248-111.033 248-248S392.967 8 256 8zm0 48c110.532 0 200 89.451 200 200 0 110.532-89.451 200-200 200-110.532 0-200-89.451-200-200 0-110.532 89.451-200 200-200m140.204 130.267l-22.536-22.718c-4.667-4.705-12.265-4.736-16.97-.068L215.346 303.697l-59.792-60.277c-4.667-4.705-12.265-4.736-16.97-.069l-22.719 22.536c-4.705 4.667-4.736 12.265-.068 16.971l90.781 91.516c4.667 4.705 12.265 4.736 16.97.068l172.589-171.204c4.704-4.668 4.734-12.266.067-16.971z"></path></svg><span> Địa
													chỉ mặc định</span></span>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<p>Bạn chưa có địa chỉ (vui lòng thêm một địa chỉ thanh
									toán)</p>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${!empty nguoi.listdiachi}">
								<h6>2. ĐỊA CHỈ GIAO HÀNG</h6>
								<div class="row">
									<c:forEach var="dc" items="${nguoi.listdiachi}"
										varStatus="loop">

										<div class="col-md-6">
											<div class="card bg-light">
												<strong>${nguoi.ho} ${nguoi.ten}</strong>
												<div class="card-body text-center">
													<p class="card-text">
														<span class="badge badge-info">Địa chỉ <i
															class="fa fa-address-card-o" aria-hidden="true"></i></span>:
														${dc.sonha}, ${dc.duong}, ${dc.phuong}, ${dc.quan},
														${dc.thanhpho}
													</p>
													<p>
														<span class="badge badge-info">Số điện thoại: <i
															class="fa fa-phone-square" aria-hidden="true"></i></span>
														${nguoi.sdt}
													</p>
													<c:choose>
														<c:when test="${loop.index == 0}">
															<button type="submit" class="btn btn-primary btn-giao" value="${dc.madiachi}">Giao
																đến địa chỉ này</button>
															<button type="submit" class="btn edit-address">Sửa</button>
															<span class="default"><svg stroke="currentColor"
																	fill="currentColor" stroke-width="0"
																	viewBox="0 0 512 512" height="1em" width="1em"
																	xmlns="http://www.w3.org/2000/svg">
																	<path
																		d="M256 8C119.033 8 8 119.033 8 256s111.033 248 248 248 248-111.033 248-248S392.967 8 256 8zm0 48c110.532 0 200 89.451 200 200 0 110.532-89.451 200-200 200-110.532 0-200-89.451-200-200 0-110.532 89.451-200 200-200m140.204 130.267l-22.536-22.718c-4.667-4.705-12.265-4.736-16.97-.068L215.346 303.697l-59.792-60.277c-4.667-4.705-12.265-4.736-16.97-.069l-22.719 22.536c-4.705 4.667-4.736 12.265-.068 16.971l90.781 91.516c4.667 4.705 12.265 4.736 16.97.068l172.589-171.204c4.704-4.668 4.734-12.266.067-16.971z"></path></svg><span>Địa
																	chỉ mặc định</span></span>
														</c:when>
														<c:otherwise>
															<button type="submit" class="btn btn-primary btn-giao" value="${dc.madiachi}">Giao
																đến địa chỉ này</button>
															<button type="submit" class="btn btn-danger">Xóa</button>
															<button type="submit" class="btn edit-address">Sửa</button>
														</c:otherwise>
													</c:choose>



												</div>
											</div>
											<br />
										</div>

									</c:forEach>
								</div>

							</c:when>
							<c:otherwise>
								<p>Bạn chưa có địa chỉ (vui lòng thêm một địa chỉ thanh
									toán)</p>
								<div class="">
									<div class="signup-form-container">
										<!-- form start -->
										<form method="post" role="form" id="register-form"
											autocomplete="off" action="themDiaChi">

											<div class="form-header">
												<h5 class="form-title">
													<i class="fa fa-user"></i> THÊM ĐỊA CHỈ
												</h5>

											</div>

											<div class="form-body">

												<div class="form-group">
													<div class="input-group">
														<div class="input-group-prepend">
															<div class="input-group-text">
																<span class="fa fa-1x fa-user-circle"></span>
															</div>
														</div>

														<input type="text" class="" placeholder="Họ tên"
															disabled="disabled" value="${nguoi.ho} ${nguoi.ten}">
													</div>
													<span class="help-block" id="error"></span> <span id="dup"></span>
												</div>


												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Tỉnh/Thành
															phố:</label> <select name="thanhpho" id="tinh"
															class="com selectpicker">
															<c:forEach var="idd" items="${listTP}">
																<option value="${idd.ID}">${idd.title}</option>
															</c:forEach>
														</select>

													</div>
													<span class="help-block" id="error"></span>
												</div>

												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Quận/Huyện:</label>
														<select name="getHuyen" id="huyen" class="cach">
															<option>Chọn quận/huyện</option>
														</select>

													</div>
													<span class="help-block" id="error"></span>
												</div>

												<div class="form-group">
													<div class="input-group">
														<label class="tonghop" for="thanhpho">Phường/Xã: </label>
														<select name="getxa" id="xa" class="cach">
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

											</div>
											<div class="form-footer">
												<button type=button id="themdc" class="btn btn-primary">
													<i class="fa fa-sign-in fa-2" aria-hidden="true"></i> Thêm
												</button>
											</div>
										</form>
									</div>
								</div>

							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
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
		src="${pageContext.request.contextPath}/resources/js/diachi.js"></script>
</body>
</html>