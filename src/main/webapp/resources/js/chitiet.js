$('#them').on('click',function(event) {
	event.preventDefault();
    var idProduct = $(this).attr('value');
    console.log(idProduct);
	var ItemCart = {};
	ItemCart.maSanPham = idProduct;
	$.ajax({
		contentType:'application/json;charset=UTF-8',
		url : '../themSanPhamGioHang',
		dataType: 'json',
		type : 'post',
		data : JSON.stringify(ItemCart),
		success : function(data, textStatus, jqXHR) {
			console.log(data);
			$("#soluong").text(data);
			swal({
				icon: "success",
			    title: "",
			    text: "Thêm giỏ hàng thành công",
			    type: "success"
			})
			
		},
		error : function(jqXHR, textStatus, errorThrown) {
			console.log("Có lỗi xảy ra thử lại");
		},
		processData : false,
		

	})
});