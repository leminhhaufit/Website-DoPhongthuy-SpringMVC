$(document).ready(function() {
	$(document).on('change',function(event) {
	    var id = $(event.target).attr('id');
	    var sl = $(event.target).val();
	    var max = $(event.target).attr('max');
	    if(parseInt(sl) > parseInt(max) || parseInt(sl) < 0){
	    	console.log(max);
	    	$(event.target).val(max);
	    	sl = max;
	    	swal({
				icon: "error",
			    title: "Tối đa " + max + " sản phẩm",
			    text: "",
			    type: "error"
			})
	    }
	    var ItemCart = {};
		ItemCart.maSanPham = id;
		ItemCart.soLuong = sl;
		$.ajax({
			contentType:'application/json;charset=UTF-8',
			url : 'updateCartItem',
			dataType: 'json',
			type : 'post',
			data : JSON.stringify(ItemCart),
			success : function(data, textStatus, jqXHR) {
				var tien = numeral(data).format('0,0');
				$('#tongtien').html(tien);
				var dialog =  bootbox.alert({
				    message  :"<p class='alert alert-success'>Cập nhật giỏ hàng thành công <i class='fa fa-check' aria-hidden='true'></i></p>",
				    backdrop:true,
				})
				dialog.init(function(){
				    setTimeout(function(){
				    	bootbox.hideAll();
				    }, 1500);
				});
				setTimeout(function(){ location.reload(); }, 1500);
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("Có lỗi xảy ra thử lại");
			},
			processData : false,
		})
	});
})