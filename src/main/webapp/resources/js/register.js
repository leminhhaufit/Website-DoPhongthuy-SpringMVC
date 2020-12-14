$(document).ready(function()
{ 		 
		 // name validation
		  var nameregex = /^[a-zA-Z ]+$/;
		 
		 $.validator.addMethod("validname", function( value, element ) {
		     return this.optional( element ) || nameregex.test( value );
		 }); 
		 
		 // valid email pattern
		 var eregex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		 
		 $.validator.addMethod("validemail", function( value, element ) {
		     return this.optional( element ) || eregex.test( value );
		 });
		 
		 $("#register-form").validate({
					
		  rules:
		  {
				ma: {
					required: true,
					validname: true,
					minlength: 8
				},
				ten: {
					required: true,
					minlength: 4
				},
				ho: {
					required: true,
					minlength: 4
				},
				sdt: {
					required: true,
                    minlength: 10,
                    maxlength:10
				},
				email: {
					required: true,
					validemail: true
				},
				ngaysinh1: {
					required: true,
				},
				password: {
					required: true,
					minlength: 8,
					maxlength: 15
				},
				cpassword: {
					required: true,
					equalTo: '#password'
				}
		   },
		   messages:
		   {
				ma: {
					required: "Nhập tên tài khoản",
					validname: "Tên không chứa ký tự đặc biệt",
					minlength: "Tối thiểu 8 ký tự"
				},
				ngaysinh1:{
					required: "Nhập ngày sinh"
				},
				ho:{
					required: "Nhập họ",
					validname: "Tên không chứa ký tự đặc biệt",
					minlength: "Tối thiểu 4 ký tự"
				},
				ten:{
					required: "Nhập tên",
					validname: "Tên không chứa ký tự đặc biệt",
					minlength: "Tối thiểu 4 ký tự"
				},
				sdt:{
					required: "Nhập số điện thoại",
					validname: "Tên không chứa ký tự đặc biệt",
				},
			    email: {
					  required: "Nhập email",
					  validemail: "Nhập email hợp lệ (example@gmail.com)"
					   },
				password:{
					required: "Nhập mật khẩu",
					minlength: "Tối thiểu 8 ký tự"
					},
				cpassword:{
					required: "Xác nhận lại mật khẩu",
					equalTo: "Mật khẩu không khớp"
					}
		   },
		   errorPlacement : function(error, element) {
			  $(element).closest('.form-group').find('.help-block').html(error.html());
		   },
		   highlight : function(element) {
			  $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
		   },
		   unhighlight: function(element, errorClass, validClass) {
			  $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			  $(element).closest('.form-group').find('.help-block').html('');
		   },
		   
		   submitHandler: function(form) {
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
		            url: form.action,
		            type: form.method,
		            data: $(form).serialize(),
		            success: function(response) {
		            	if(response === "Tài khoản này đã tồn tại trong hệ thống"){
		            		swal({
								icon: "error",
							    title: "Tài khoản này đã tồn tại trong hệ thống",
							    text: "Xin vui lòng nhập tài khoản mới",
							    type: "error"
							})
		            	}else if(response === "Email này đã tồn tại trong hệ thống"){
		            		swal({
								icon: "error",
							    title: "Email này đã tồn tại trong hệ thống",
							    text: "Xin vui lòng nhập email mới",
							    type: "error"
							})
		            	}else{
		            		swal({
								icon: "success",
							    title: "Đăng ký tài khoản thành công",
							    text: "Thành công vui lòng đăng nhập",
							    type: "success"
							}).then(function() {
							    window.location = "checkout/shipping";
							});
		            	}
		            },
		            error:function(result) {
		            	console.log("fail");
		            }
		        });
                }
		   }); 
	})
