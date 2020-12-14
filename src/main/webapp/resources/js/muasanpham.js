$(document).ready(function() {
	$("#muahang").on('click',function(event) {
		event.preventDefault();
		swal({
		    title: 'Vui lòng đợi',
		    allowEscapeKey: false,
		    allowOutsideClick: false,
		    timer: 4000,
		    onOpen: () => {
		      swal.showLoading();
		    }
		  });
		$.ajax({
			contentType:'application/json;charset=UTF-8',
			url : 'mua',
			type : 'post',
			success : function(data, textStatus, jqXHR) {
				if(data === "Thành công"){
					$('<form action="donhangmua" method="post"><input type="hidden" name="name" value="value1"></input></form>').appendTo('body').submit().remove();
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("Có lỗi xảy ra thử lại");
			},
			processData : false,
		})
	});
})