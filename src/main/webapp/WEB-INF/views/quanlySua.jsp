<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý sửa</title>
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--Bootstrap 4.3.1-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--CSS-->
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/contact.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
    	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/regex.js"></script>
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
                        <a class="nav-link dropdown-toggle" href="product.html" id="dropdownId" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">Feng Shui</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownId">
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
                <span><a href="login.html"> Sign In <i class="fa fa-sign-in-alt"></i></a></span>
            </div>
        </nav>

    </header>
    <div class="row" id="banner3">
        <h1>Cart Orders</h1>
    </div>
    <section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            <h1 style="text-align:center;color:green">QUẢN LÝ SỬA</h1>
			<button class="btn btn-primary" type="button" data-toggle="collapse" style="margin-bottom:20px;" data-target="#collapseSP" aria-expanded="false" aria-controls="collapseExample">
				Quản lý sản phẩm
			  </button>
			<button class="btn btn-primary" type="button" data-toggle="collapse" style="margin-bottom:20px;" data-target="#collapseNCC" aria-expanded="false" aria-controls="collapseExample">
				Quản lý nhà cung cấp
			  </button>
			  <button class="btn btn-primary" type="button" data-toggle="collapse" style="margin-bottom:20px;" data-target="#collapseloai" aria-expanded="false" aria-controls="collapseExample">
				Quản lý loại sản phẩm
			  </button>
			  <button class="btn btn-primary" type="button" data-toggle="collapse" style="margin-bottom:20px;" data-target="#collapseNuoc" aria-expanded="false" aria-controls="collapseExample">
				Quản lý nước sản xuất
			  </button>
			<div class="collapse" id="collapseSP">
			 <div class="container">
				<div class="row"  >
					<div class="col-md-12"><h5 style="text-align:center">Sửa sản phẩm</h5></div>
					<form action="suasanpham" method="post" enctype="multipart/form-data">
                                <div class="col-md-12">
                                  		<c:set var="sp" value="${sp2}"/>
                                  		<input type="hidden" name="masp" value="${sp.masp}">
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input name="tensp" value="${sp.tensp}" type="text" id="txtten" onblur="return kiemtraTen();" class="form-control" ><span style="color:red" id="ten"></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Số lượng</label>
                                             <input name="soluongton" value="${sp.soluongton}" type="number" id="txtsl" onblur="return kiemtraSL();" class="form-control"><span style="color:red" id="sl"></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Giá nhập</label>
                                             <input name="gianhap" value="${sp.gianhap}" type="number" id="txtgianhap" onblur="return kiemtraGianhap();" class="form-control"><span style="color:red" id="gianhap"></span>
                                        </div>
										  <div class="form-group">
                                            <label>Giá bán</label>
                                             <input name="giaban" value="${sp.giaban}" type="number"  id="txtgiaban" onblur="return kiemtraGiaban();"  class="form-control"><span style="color:red" id="giaban"></span>
                                        </div>
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<label class="input-group-text" for="inputGroupSelect01">Nhà cung cấp</label>
										  </div>
										  <select class="custom-select"  name="getNhaCC" id="inputGroupSelect01">
											<option selected>Choose...</option>
											<c:forEach var="idd" items="${listNCC}">
											<option value="${idd.mancc}">${idd.tenncc}</option>
											</c:forEach>
										  </select>
										</div>
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<label class="input-group-text" for="inputGroupSelect01">Loại sản phẩm</label>
										  </div>
										  <select class="custom-select" name="getLoaiSP" id="inputGroupSelect01">
											<option selected>Choose...</option>
											<c:forEach var="idd" items="${listLoaiSPI}">
											<option value="${idd.maloai}">${idd.tenloai}</option>
											</c:forEach>
										  </select>
										</div>
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<label class="input-group-text" for="inputGroupSelect01">Nước sản xuất</label>
										  </div>
										  <select class="custom-select" name="getNuocSX" id="inputGroupSelect01">
											<option selected>Choose...</option>
											<c:forEach var="idd" items="${listNuocSXI}">
											<option value="${idd.manuoc}">${idd.tennuoc}</option>
										</c:forEach>
										  </select>
										</div>
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<span class="input-group-text" id="inputGroupFileAddon01">Hình ảnh</span>
										  </div>
										  <div class="custom-file">
											<input type="file"  name="fileAnh" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
											<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
										  </div>
										</div>
                                    
                               
								<div class="col-md-12">
								
                            <button type="submit" class="btn btn-primary" >Lưu</button>	
							</div>
                            </div>
                            </form>
			</div>
			</div>
			</div>
			</div>
		
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
			<div class="collapse" id="collapseNCC">
			 <div class="container">
				<div class="row" id="cart" >
					<div class="col-md-12"><h5 style="text-align:center">Sửa nhà cung cấp</h5></div>
					<form action="./suanhacungcap" method="post">
					<div class="col-md-12">       
						<div class="form-group">
							<c:set var="ncc" value="${ncc2}" />
							<input type="hidden" name="mancc" value="${ncc.mancc}">
							<label>Tên nhà cung cấp</label>
							<input size="10000" name="tenncc" value="${ncc.tenncc}" type="text" id="txtten2" onblur="return kiemtraTen2();" class="form-control" ><span style="color:red" id="ten2"></span>
							
						</div>
                    </div>
					<div class="col-md-12"> 
					
                    <button type="submit" class="btn btn-primary" >Lưu</button>
					</div>
					</form>
			</div>
			</div>
			</div>
		</div>
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            
			<div class="collapse" id="collapseloai">
			 <div class="container">
				<div class="row" id="cart" >	
				<div class="col-md-12"><h5 style="text-align:center">Sửa loại sản phẩm</h5></div>
				<form action="sualoaisp" method="post">
					<div class="col-md-12">       
						<div class="form-group">
							<c:set var="loai" value="${loai2}" />
							<input type="hidden" name="maloai" value="${loai.maloai}">
							<label>Tên loại sản phẩm</label>
							<input name="tenloai" value="${loai.tenloai}" type="text" id="txtten3" onblur="return kiemtraTen3();" class="form-control"><span style="color:red" id="ten3"></span>
						</div>
                    </div>
					<div class="col-md-12"> 
				
                    <button type="submit" class="btn btn-primary">Lưu</button>
					</div>
					</form>
				</div>
				</div>
				</div>
				
		</div>
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            
			<div class="collapse" id="collapseNuoc">
			 <div class="container">
				<div class="row" id="cart" >
					<div class="row" id="cart" >	
				<div class="col-md-12"><h5 style="text-align:center">Sửa nước sản xuất</h5></div>
				<form action="suanuocsx" method="post">
					<div class="col-md-12">       
						<div class="form-group">
							<c:set var="nuoc" value="${nuoc2}" />
							<input type="hidden" name="maloai" value="${nuoc.manuoc}">
							<label>Tên nước sản xuất</label>
							<input name="tennuoc" value="${nuoc.tennuoc}" type="text" id="txtten4" onblur="return kiemtraTen4();" class="form-control" ><span style="color:red" id="ten4"></span>
						</div>
                    </div>
					<div class="col-md-12"> 
					
                    <button type="submit" class="btn btn-primary">Lưu</button>
					</div>
					</form>
				</div>
                </div>
            </div>
			</div>
		</div>
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            
			<div class="collapse" id="collapseDonhang">
			 <div class="container">
				<div class="row" id="cart" >
					
					<div class="col-md-10">
					<input class="form-control" type="text" placeholder="Search" style="margin-bottom:20px;" id="search">
					
					</div>
					<div class="col-md-2">
						<button class="btn btn-outline-success" type="button" onclick="searchProduct()"><i
						class="fa fa-search"></i></button>
						</div>
			
				<div class="col-md-12">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
							 
							  <th scope="col">Mã đơn hàng</th>
							  <th scope="col">Tên khách hàng</th>
							  <th scope="col">Ngày lập</th>
							  <th scope="col">Tình trạng</th>
							  <th scope="col">Cập nhật</th>
							  <th scope="col">Hủy</th>
							</tr>
					  </thead>
							<tr>
							 
							  <td>1</td>
							
							  <td>Hậu</td>
							  <td>1/1/1111</td>
							
							 <td>
								 <select class="custom-select" id="inputGroupSelect01">
											<option selected>Mới</option>
											<option value="1">Đã giao</option>
											<option value="2">Đang giao</option>
											<option value="2">Đã xuất kho</option>
										  </select>
							
							 </td>	
							 <td><button class="btn btn-primary">Cập nhật</button>
							 </td>	
							 
							
							  
								
							 
							  
							  <td><button class="btn btn-danger">Hủy</button></td>
								
							  
							</tr>
							
					  </table>
					
				</div>
			
			</div>
			</div>
				</div>
			 
            
			
		</div>
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
	<div class="collapse" id="collapseNV">
			 <div class="container">
				<div class="row"  >
					<div class="col-md-12">
						<button class="btn btn-success" data-toggle="modal" data-target="#modelNV" style="margin-bottom:20px;" >Thêm nhân viên</button>
						</div>
					<div class="col-md-10">
					<input class="form-control" type="text" placeholder="Search" style="margin-bottom:20px;" id="search">
					
					</div>
					<div class="col-md-2">
						<button class="btn btn-outline-success" type="button" onclick="searchProduct()"><i
						class="fa fa-search"></i></button>
						</div>
				
                <div class="col-md-3" id="product1">
                    <div class="card">
                        <img class="card-img-top img-src" src="www/(40).jpg" style="width:80%" />
                        <hr>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <h5 class="card-title productName">Minh Hậu
                                    </h5>
                                </div>
                                <div class="col-md-2">
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>

                            <p class="card-text productPrice">Nhân viên</p>
							<button type="button" class="btn btn-danger">Xóa</button>
							<button class="btn btn-primary" data-toggle="modal" data-target="#modelsuaNV" id="btnCreate">Sửa</button>
                        </div>
                    </div>
					
				</div>
			</div>
			</div>
			</div>
			
			 <!-- Modal -->
            <div class="modal fade" id="modelNV" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Thêm nhân viên</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <label>Tên nhân viên</label>
                                            <input type="text" class="form-control" id="newProductName">
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="number" id="newProductPrice" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="number" id="newProductImg" class="form-control">
                                        </div>
										<div class="form-group col-lg-6">
										<div class="input-group">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-transgender-alt" aria-hidden="true"></i>
												</div>
											</div>
											<div style="margin-left: 5px;"
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" class="custom-radio" checked="checked" style="margin-top:5px;margin-right:3px;" value="Nam">
												
												<label for="">Nam</label>


											</div>
											<div class="custom-control custom-radio custom-control-inline">
												<input type="radio" class="custom-radio" checked="checked" style="margin-top:5px;margin-right:3px;" value="Nữ">
												<label for="gioitinh">Nữ</label>
											</div>

										</div>
										</div>
										  <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" id="newProductImg" class="form-control">
                                        </div> <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input type="text" id="newProductImg" class="form-control">
                                        </div>
										
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<span class="input-group-text" id="inputGroupFileAddon01">Hình ảnh</span>
										  </div>
										  <div class="custom-file">
											<input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
											<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
										  </div>
										</div>
                                    </form>
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                            <button type="button" class="btn btn-primary" onclick="createProduct()">Lưu</button>
                        </div>
                    </div>
                </div>
            </div>
			<!-- Modal -->
            <div class="modal fade" id="modelsuaNV" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Sửa sản phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <label>Tên nhân viên</label>
                                            <input type="text" class="form-control" id="newProductName">
                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="number" id="newProductPrice" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="number" id="newProductImg" class="form-control">
                                        </div>
										<div class="form-group col-lg-6">
										<div class="input-group">
											<div class="input-group-prepend">
												<div class="input-group-text">
													<i class="fa fa-transgender-alt" aria-hidden="true"></i>
												</div>
											</div>
											<div style="margin-left: 5px;"
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" class="custom-radio" checked="checked" style="margin-top:5px;margin-right:3px;" value="Nam">
												
												<label for="">Nam</label>


											</div>
											<div class="custom-control custom-radio custom-control-inline">
												<input type="radio" class="custom-radio" checked="checked" style="margin-top:5px;margin-right:3px;" value="Nữ">
												<label for="gioitinh">Nữ</label>
											</div>

										</div>
										</div>
										  <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" id="newProductImg" class="form-control">
                                        </div> <div class="form-group">
                                            <label>Địa chỉ</label>
                                            <input type="text" id="newProductImg" class="form-control">
                                        </div>
										
										<div class="input-group mb-3">
										  <div class="input-group-prepend">
											<span class="input-group-text" id="inputGroupFileAddon01">Hình ảnh</span>
										  </div>
										  <div class="custom-file">
											<input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
											<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
										  </div>
										</div>
                                    </form>
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                            <button type="button" class="btn btn-primary" onclick="createProduct()">Lưu</button>
                        </div>
                    </div>
                </div>
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