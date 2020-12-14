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
    <title>Quản lý</title>
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
            <h1 style="text-align:center;color:green">Quản lý</h1>
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
			  <button class="btn btn-primary" type="button" data-toggle="collapse" style="margin-bottom:20px;" data-target="#collapseDonhang" aria-expanded="false" aria-controls="collapseExample">
				Quản lý đơn hàng
			  </button>
			  
			<div class="collapse" id="collapseSP">
			 <div class="container">
				<div class="row" id="cart">
				
					<div class="col-md-12">
						<button class="btn btn-success" data-toggle="modal" data-target="#modelId1" style="margin-bottom:20px;" >Thêm sản phẩm</button>
						</div>
					<form:form action="${pageContext.request.contextPath}/admin/quanly/{tensp}" method="get" modelAttribute="sp">
						<div class="col-md-10" >
							<div class="form-group">
								<form:input class="form-control" path="tensp" type="text" placeholder="Search" style="margin-bottom:20px;"></form:input>
							 
							</div>
						</div>
						<div class="col-md-2">
						<button class="btn btn-outline-success" type="submit" ><i
						class="fa fa-search"></i></button>
						</div>
					</form:form>
				</div>
              
	         
	         <div class="row" id="cart">
	            <c:forEach var="sp" items="${listSPController}">
	            	<div class="col-md-3" id="${sp.masp}" >
	                    <div class="card">
	                    	 
	                        <img class="card-img-top img-src" src="${pageContext.request.contextPath}/resources/imguploads/${sp.urlhinh}" style="width:80%" />
	                        <hr>
	                        <div class="card-body">
	                            <div class="row">
	                                <div class="col-md-10">
	                                    <h5 class="card-title productName">${sp.tensp}
	                                    </h5>
	                                    
	                                </div>
	                                <div class="col-md-2">
	                                    <i class="far fa-heart"></i>
	                                </div>
	                            </div>
	
	                            <p class="card-text productPrice"> ${sp.giaban} VND</p>
	                           <button id="MASP-${sp.masp}" class="btn btn-danger dungdexoa4">Xóa</button>
	                            <a href="<c:url value='suasp?masp=${sp.masp}' />"><button class="btn btn-primary" type="submit" >Sửa</button></a>
								
	                        </div>
	                    </div>
	
	                </div>
	            
	            </c:forEach>
	           <%--   <c:set var="err" value="${err}" />
	                            <c:if test="${err==true}">
								  <script>alert("Xóa thành công");
								</script></c:if> --%>
	                            
			 </div>
			
			</div>
			</div>
			
			 <!-- Modal -->
            <div class="modal fade" id="modelId1" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Thêm sản phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="${pageContext.request.contextPath}/admin/themsanpham" method="post"  enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                  
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input name="tensp" type="text" id="txtten" onblur="return kiemtraTen();" class="form-control" ><span style="color:red" id="ten"></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Số lượng</label>
                                             <input name="soluongton" type="number" id="txtsl" onblur="return kiemtraSL();" class="form-control"><span style="color:red" id="sl"></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Giá nhập</label>
                                             <input name="gianhap" type="number" id="txtgianhap" onblur="return kiemtraGianhap();" class="form-control"><span style="color:red" id="gianhap"></span>
                                        </div>
										  <div class="form-group">
                                            <label>Giá bán</label>
                                             <input name="giaban" type="number" id="txtgiaban" onblur="return kiemtraGiaban();"  class="form-control"><span style="color:red" id="giaban"></span>
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
                                    
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
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
            
			<div class="collapse" id="collapseNCC">
			 <div class="container">
				<div class="row" id="cart" >
					<div class="col-md-12">
						<button class="btn btn-success" data-toggle="modal" data-target="#modelNCC" style="margin-bottom:20px;" >Thêm nhà cung cấp</button>
						</div><br>
						<form:form action="quanly/{tenncc}" method="get" modelAttribute="ncc">
					<div class="col-md-10">
					<form:input path="tenncc" class="form-control" type="text" placeholder="Search" style="margin-bottom:20px;" id="search"></form:input>
					
					</div>
					<div class="col-md-2">
						<button class="btn btn-outline-success" type="submit" ><i
						class="fa fa-search"></i></button>
						</div>
						</form:form>
				<div class="col-md-12">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
							 
							  <th scope="col">Mã nhà cung cấp</th>
							  <th scope="col">Tên nhà cung cấp</th>
							 <th scope="col">Xóa</th>
							  <th scope="col">Sửa</th>
							</tr>
					  </thead>
					 	 <c:forEach var="ncc" items="${listNCC2}">
							<tr>
							  <td>${ncc.mancc}</td>
							  <td>${ncc.tenncc}</td>
							
							  <td><button id="MANCC-${ncc.mancc}" class="btn btn-danger dungdexoa">Xóa</button></td>
							 	
							<td> <a href="<c:url value='quanly/suancc?mancc=${ncc.mancc}' />"><button class="btn btn-primary" type="submit">Sửa</button></a></td>	
							</tr>
							</c:forEach>
					  </table>
					
				</div>
			
			</div>
			</div>
				</div>
			 <!-- Modal -->
            <div class="modal fade" id="modelNCC" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                    <form action="themnhacungcap" method="post" >
                        <div class="modal-header">
                            <h5 class="modal-title">Thêm nhà cung cấp</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body">
                            <div class="row">
                            
                                <div class="col-md-12">
                                  
                                        <div class="form-group">
                                            <label>Tên nhà cung cấp</label>
                                           
	                                            <input name="tenncc" type="text" id="txtten2" onblur="return kiemtraTen2();" class="form-control" ><span style="color:red" id="ten2"></span>
	                                            
	                                           
                                        </div>
                                   
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                            <button type="submit" class="btn btn-primary" >Lưu</button>
                        </div> 
                        </form>
                    </div>
                </div>
            </div>
			<!-- Modal -->
            <div class="modal fade" id="modelsuaNCC" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Sửa nhà cung cấp</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <label>Tên nhà cung cấp</label>
                                            <input type="text" class="form-control" id="newProductName">
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
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            
			<div class="collapse" id="collapseloai">
			 <div class="container">
				<div class="row" id="cart" >
					<div class="col-md-12">
						<button class="btn btn-success" data-toggle="modal" data-target="#modelLoai" style="margin-bottom:20px;">Thêm loại sản phẩm</button>
						</div><br>
						<form:form action="../quanly/{tenloai}" method="post" modelAttribute="loaisp">
					<div class="col-md-10">
					<form:input class="form-control" path="tenloai" type="text" placeholder="Search" style="margin-bottom:20px;" id="search" ></form:input>
					
					</div>
					<div class="col-md-2">
						<button class="btn btn-outline-success" type="submit"><i
						class="fa fa-search"></i></button>
						</div><br>
			</form:form>
				<div class="col-md-12">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
							 
							  <th scope="col">Mã loại sản phẩm</th>
							  <th scope="col">Tên loại sản phẩm</th>
							 <th scope="col">Xóa</th>
							  <th scope="col">Sửa</th>
							</tr>
					  </thead>
					  
							<c:forEach	var="loai" items="${listLoaiSPI2}">
							<tr>
							 
							  <td>${loai.maloai}</td>
							
							  <td>${loai.tenloai}</td>
							 
							  
								
							 
							  
						 	<td><button id="MALOAI-${loai.maloai}" class="btn btn-danger dungdexoa2">Xóa</button></td>
								<td> <a href="<c:url value='quanly/sualoai?maloai=${loai.maloai}' />"><button class="btn btn-primary" type="submit">Sửa</button></a></td>	
							  
							</tr>
							</c:forEach>
					  </table>
					
				</div>
			
			</div>
			</div>
				</div>
			 <!-- Modal -->
            <div class="modal fade" id="modelLoai" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                    <form action="themloaisanpham" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title">Thêm loại sản phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                   
                                        <div class="form-group">
                                            <label>Tên loại sản phẩm</label>
                                            <input type="text" name="tenloai" id="txtten3" onblur="return kiemtraTen3();" class="form-control" ><span style="color:red" id="ten3"></span>
                                        </div>
                                   
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                            <button type="submit" class="btn btn-primary" >Lưu</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
			<!-- Modal -->
            <div class="modal fade" id="modelsuaLoai" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Sửa loại sản phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <label>Tên loại sản phẩm</label>
                                            <input type="text" class="form-control" id="newProductName">
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
	</section>
	<section class="cartorder margin-t-50 margin-b-50">
        <div class="container">
            
			<div class="collapse" id="collapseNuoc">
			 <div class="container">
				<div class="row" id="cart" >
					<div class="col-md-12">
						<button class="btn btn-success" data-toggle="modal" data-target="#modelNuoc" style="margin-bottom:20px;" >Thêm nước sản xuất</button>
						</div>
						<form:form action="quanly/{tennuoc}" method="post" modelAttribute="nuocsx">
					<div class="col-md-10">
					<form:input path="tennuoc" class="form-control" type="text" placeholder="Tìm nước theo tên" style="margin-bottom:20px;" id="search"></form:input>
					
					</div>
					<div class="col-md-2">
						<button class="btn btn-outline-success" type="submit" ><i
						class="fa fa-search"></i></button>
						</div>
					</form:form>
					
				<div class="col-md-12">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
							 
							  <th scope="col">Mã nước sản xuất</th>
							  <th scope="col">Tên nước sản xuất</th>
							 <th scope="col">Xóa</th>
							  <th scope="col">Sửa</th>
							</tr>
					  </thead>
					  <c:forEach var="nuocsx" items="${listNuocSXI2}">
							<tr>
							 
							  <td>${nuocsx.manuoc}</td>
							
							  <td>${nuocsx.tennuoc}</td>
							 <td><button id="MANUOC-${nuocsx.manuoc}" class="btn btn-danger dungdexoa3">Xóa</button></td>
							<td> <a href="<c:url value='quanly/suanuoc?manuoc=${nuocsx.manuoc}' />"><button class="btn btn-primary" type="submit">Sửa</button></a></td>	
							</tr>
							</c:forEach>
					  </table>
					
				</div>
			
			</div>
			</div>
				</div>
			 <!-- Modal -->
            <div class="modal fade" id="modelNuoc" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                    <form action="themnuocsanxuat" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title">Thêm nước sản xuất</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                   
                                        <div class="form-group">
                                            <label>Tên nước sản xuất</label>
                                            <input name="tennuoc" type="text" id="txtten4" onblur="return kiemtraTen4();" class="form-control" ><span style="color:red" id="ten4"></span>
                                        </div>
                                    
                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                            <input type="submit" class="btn btn-primary" value="Lưu">
                        </div>
                        </form>
                    </div>
                </div>
            </div>
           
			<!-- Modal -->
            <div class="modal fade" id="modelsuaNuoc" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Sửa nước sản xuất</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <label>Tên nước sản xuất</label>
                                            <input type="text" class="form-control" id="newProductName">
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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/control.js"></script>

</body>

</html>