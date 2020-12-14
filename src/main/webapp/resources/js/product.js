$(document).ready(function(){
$('#products').on('click','.col-md-3', function () {
	event.preventDefault();
    var productID=$(this).attr('id');
    console.log(productID);
    viewProduct(productID);
})


function viewProduct(id) {
    var priceId = "#" + id + " .productPrice";
    var productId = "#" + id + " .productName";
    var imgSourceId = "#" + id + " .img-src";
    var price = $(priceId).text();
    var productName = $(productId).text();
    var imgSource = $(imgSourceId).attr('src');
    $("#products").append("<button type='button' class='btn btn - primary btn - lg' data-toggle='modal' data-target='#"+id+"-modal' id='btn-modal-"+id+"' style='display:none;'>Launch</button>"
            + "<div class='modal fade' id='"+id+"-modal' tabindex='-1' role='dialog' aria-labelledby='modelTitleId' aria-hidden='true'>"
            + "<div class='modal-dialog modal-lg' role='document'>"
            + "<div class='modal-content'>"
            + "<div class='modal-header'>"
            + "<h5 class='modal-title'>Thông tin sản phẩm</h5>"
            + "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>"
            + "<span aria-hidden='true'>&times;</span>"
            + "</button>"
            + "</div>"
            + "<div class='modal-body'>"
            + "<div class='row'>"
            + "<div class='col-md-6'>"
            + "<img class='card-img-top' src='" + imgSource + "' style='width:100%' />"
            + "</div>"
            + "<div class='col-md-6'>"
            + "<h5>" + productName + "</h5>"
            + "<h5>" + price + "</h5>"
            + "<input type='hidden' id='"+id+"'>"
            + "</div>"
            + "</div>"
            + "</div>"
            + "<div class='modal-footer'>"
            + "<button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>"
            + "<button type='button' id ='please' class='btn btn-primary' name='"+id+"'>Add Cart</button>"
            + "<button type='button'  class='btn btn-danger xemchitiet' name='"+id+"'>Xem chi tiết</button>"
            + "</div>"
            + "</div>"
            + "</div>"
            + "</div>");
        var modalID="#btn-modal-"+id;
    $(modalID).trigger("click");
}

$('#search').keyup(function () {
    searchProduct();
})

function searchProduct() {
    var txtSearch = $('#search').val().toUpperCase();
    $('#products .col-md-3').each(function () {
        var element = $(this).find("h5");
        var elementValue = element.text().toUpperCase();
        if (elementValue.indexOf(txtSearch) != -1) {
            $(this).show();
        } else $(this).hide();
    })
}


$('#products').on('click', '#please',function(event) {
	event.preventDefault();
    var idProduct = $(this).attr('name');
    console.log(idProduct);
	var ItemCart = {};
	ItemCart.maSanPham = idProduct.slice(1);
	$.ajax({
		contentType:'application/json;charset=UTF-8',
		url : 'themSanPhamGioHang',
		dataType: 'json',
		type : 'post',
		data : JSON.stringify(ItemCart),
		success : function(data, textStatus, jqXHR) {
			console.log(data);
			$("#soluong").text(data);
			var dialog =  bootbox.alert({
			    message  :"<p class='alert alert-success'>Thêm sản phẩm vào giỏ hàng thành công <i class='fa fa-check' aria-hidden='true'></i></p>",
			    backdrop:true,
			})
			dialog.init(function(){
			    setTimeout(function(){
			    	bootbox.hideAll();
			    }, 700);
			});
		},
		error : function(jqXHR, textStatus, errorThrown) {
			console.log("Có lỗi xảy ra thử lại");
		},
		processData : false,
		

	})
});

$('#products').on('click', '.xemchitiet',function(event) {
    var idProduct = $(this).attr('name');
    var id = idProduct.slice(1);
	window.location = "xemchitiet/" + id;
})


	
})
