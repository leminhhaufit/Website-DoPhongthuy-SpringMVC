$(document).ready(function() {
	$(".dungdexoa").on('click',function(event) {
		event.preventDefault();
	    var ma = $(event.target).attr('id');
	    if(ma == null){
	    	
	    }
	    var mang = ma.split('-');
	    console.log(mang[0]);
	    if(mang[0] !== 'MANCC'){
	    	console.log("aaa");
	    	return;
	    }else{
	    	var NhaCungCap = {};
		    NhaCungCap.mancc = mang[1];
			$.ajax({
				contentType:'application/json;charset=UTF-8',
				url : 'quanly/xoancc',
				type : 'POST',
				data : JSON.stringify(NhaCungCap),
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					if(data === "OK"){
						swal({
							icon: "success",
						    title: "Xóa thành công",
						    text: "",
						    type: "success"
						}).then(function(){
							window.location = "quanly";
						})
					}
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(errorThrown);
					swal({
						icon: "error",
					    title: "Xóa thất bại",
					    text: "Nhà cung cấp đang sử dụng",
					    type: "error"
					})
				},
				processData : false,
			})
	    }
	    
	});
})
$(document).ready(function() {
	$(".dungdexoa2").on('click',function(event) {
		event.preventDefault();
	    var ma = $(event.target).attr('id');
	    if(ma == null){
	    	
	    }
	    var mang = ma.split('-');
	    console.log(mang[0]);
	    if(mang[0] !== 'MALOAI'){
	    	console.log("aaa");
	    	return;
	    }else{
	    	var LoaiSanPham = {};
	    	LoaiSanPham.maloai = mang[1];
			$.ajax({
				contentType:'application/json;charset=UTF-8',
				url : 'quanly/xoaloai',
				type : 'POST',
				data : JSON.stringify(LoaiSanPham),
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					if(data === "OK"){
						swal({
							icon: "success",
						    title: "Xóa thành công",
						    text: "",
						    type: "success"
						}).then(function(){
							window.location = "quanly";
						})
					}
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(errorThrown);
					swal({
						icon: "error",
					    title: "Xóa thất bại",
					    text: "Loại sản phẩm đang sử dụng",
					    type: "error"
					})
				},
				processData : false,
			})
	    }
	    
	});
})
$(document).ready(function() {
	$(".dungdexoa3").on('click',function(event) {
		event.preventDefault();
	    var ma = $(event.target).attr('id');
	    if(ma == null){
	    	
	    }
	    var mang = ma.split('-');
	    console.log(mang[0]);
	    if(mang[0] !== 'MANUOC'){
	    	console.log("aaa");
	    	return;
	    }else{
	    	var NuocSanXuat = {};
	    	NuocSanXuat.manuoc = mang[1];
			$.ajax({
				contentType:'application/json;charset=UTF-8',
				url : 'quanly/xoanuoc',
				type : 'POST',
				data : JSON.stringify(NuocSanXuat),
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					if(data === "OK"){
						swal({
							icon: "success",
						    title: "Xóa thành công",
						    text: "",
						    type: "success"
						}).then(function(){
							window.location = "quanly";
						})
					}
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(errorThrown);
					swal({
						icon: "error",
					    title: "Xóa thất bại",
					    text: "Nước đang sử dụng",
					    type: "error"
					})
				},
				processData : false,
			})
	    }
	    
	});
})
$(document).ready(function() {
	$(".dungdexoa4").on('click',function(event) {
		event.preventDefault();
	    var ma = $(event.target).attr('id');
	    if(ma == null){
	    	
	    }
	    var mang = ma.split('-');
	    console.log(mang[0]);
	    if(mang[0] !== 'MASP'){
	    	console.log("aaa");
	    	return;
	    }else{
	    	var SanPham = {};
	    	SanPham.masp = mang[1];
			$.ajax({
				contentType:'application/json;charset=UTF-8',
				url : '../quanly/xoaSP',
				type : 'POST',
				data : JSON.stringify(SanPham),
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					if(data === "OK"){
						swal({
							icon: "success",
						    title: "Xóa thành công",
						    text: "",
						    type: "success"
						}).then(function(){
							window.location = "./";
						})
					}
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log(errorThrown);
					swal({
						icon: "error",
					    title: "Xóa thất bại",
					    text: "Sản phẩm đang sử dụng",
					    type: "error"
					})
				},
				processData : false,
			})
	    }
	    
	});
})