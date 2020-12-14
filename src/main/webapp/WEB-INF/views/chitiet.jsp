<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>${ctsp.tensp}</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" media="all" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link
	href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700'
	rel='stylesheet' type='text/css'>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/etalage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/contact.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/button.css">



</head>
<body>
	<jsp:include page="menu.jsp" />
	<!---->
	<div class="container">
		<div class="single">
			<div class="col-md-9">
				<div class="single_grid">
					<div class="grid images_3_of_2">
						<ul id="etalage">

							<li><a href=""> <img
									class="etalage_source_image img-responsive"
									src="../resources/imguploads/${ctsp.urlhinh}" alt="">
							</a></li>

						</ul>

						<div class="clearfix"></div>
					</div>
					<!---->
					<div class="span1_of_1_des">
						<div class="desc1">
							<h3>${ctsp.tensp}</h3>
							<p>Mô tả sản phẩm.</p>
							<h5><fmt:formatNumber type="number" pattern="###,###"
												value="${ctsp.giaban}" />đ</h5>
							<div class="available">
								<h4>Chọn số lượng :</h4>
								<ul>
									<li>Số lượng:
										<div class="quantity">
											<button class="plus-tnb" type="button" name="button">
												<img src="https://designmodo.com/demo/shopping-cart/plus.svg" alt="">
											</button>
											<input id="sl" type="number" name="name" value="1" max="${ctsp.soluongton}">
											<button class="minus-tnb" type="button" name="button">
												<img src="https://designmodo.com/demo/shopping-cart/minus.svg" alt="">
											</button>
										</div>
									</li>
								</ul>
								<div class="form-in">
									<a id="them" href="#" value="${ctsp.masp}" class="hvr-shutter-in-horizontal">Thêm giỏ hàng</a>
								</div>

							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>


		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.etalage.min.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/chitiet.js"></script>
		<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js
        "></script>
	<script>
		jQuery(document).ready(function($) {

			$('#etalage').etalage({
				thumb_image_width : 300,
				thumb_image_height : 400,
				source_image_width : 900,
				source_image_height : 1200,
				show_hint : true
			});

		});
		
		$('.minus-tnb').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value > 1) {
    			value = value - 1;
    		} else {
    			value = 0;
    		}

        $input.val(value);

    	});

    	$('.plus-tnb').on('click', function(e) {
    		e.preventDefault();
    		var sl = $("#sl").attr("max");
    		console.log(sl);
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value < parseInt(sl)) {
      		value = value + 1;
    		} else {
    			value = parseInt(sl);
    			swal({
					icon: "error",
				    title: "Tối đa " + sl + " đơn vị",
				    text: "",
				    type: "error"
				})
    		}

    		$input.val(value);
    	});
	</script>
</body>
</html>
