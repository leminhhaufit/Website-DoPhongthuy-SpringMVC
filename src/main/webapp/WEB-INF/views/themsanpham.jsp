<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="sp" action="hienthisanpham" method="POST" enctype="multipart/form-data">
		<form:input path="tensp" placeholder="Tên sản phẩm"/><br/>
		<form:input path="soluongton" placeholder="Số lượng"/><br/>
		<form:input path="gianhap" placeholder="Giá nhập"/><br/>
		<form:input path="giaban" placeholder="Giá bán"/><br/>
		NhaCC:<select name="getNhaCC">
				<c:forEach var="idd" items="${listNCC}">
					<option value="${idd.mancc}">${idd.tenncc}</option>
				</c:forEach>
			</select>
			
		LoaiSP:<select name="getLoaiSP">
				<c:forEach var="idd" items="${listLoaiSPI}">
					<option value="${idd.maloai}">${idd.tenloai}</option>
				</c:forEach>
			</select>
			
		NuocSX:<select name="getNuocSX">
				<c:forEach var="idd" items="${listNuocSXI}">
					<option value="${idd.manuoc}">${idd.tennuoc}</option>
				</c:forEach>
			</select>
		<input type="file" name="fileAnh" /><br/>
		<input type="submit" value="Upload" /> 
	</form:form>
	
	<hr>
	<p>Nước Sản Xuất</p>
	<form:form modelAttribute="nuocsx" action="themnuocsanxuat" method="post" >
		<form:input path="tennuoc" placeholder="Tên nước"/><br/>
		<input type="submit" value="Thêm" /> 
	</form:form>
	
	<hr>
	<p>Loại Sản Phẩm</p>
	<form:form modelAttribute="loaisp" action="themloaisanpham" method="post" >
		<form:select path="tenloai">
			<form:option value="Bình thường" label="Thường" />
			<form:option value="Trung bình" label="Trung bình" />
			<form:option value="Cao cấp" label="Cao cấp" />
		</form:select>
		<input type="submit" value="Thêm" /> 
	</form:form>
	
	<hr>
	<p>Nhà Cung Cấp</p>
	<form:form modelAttribute="ncc" action="themnhacungcap" method="post" >
		<form:input path="tenncc" placeholder="Tên nhà cung cấp"/><br/>
		<input type="submit" value="Thêm" /> 
	</form:form>
</body>
</html>