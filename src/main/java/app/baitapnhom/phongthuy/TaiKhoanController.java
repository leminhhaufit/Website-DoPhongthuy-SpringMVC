package app.baitapnhom.phongthuy;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import app.baitapnhom.dao.EmailDAO;
import app.baitapnhom.entities.KhachHang;
import app.baitapnhom.entities.TaiKhoan;
import app.baitapnhom.service.TaiKhoanService;
import app.baitapnhom.service.ThaoTacSanPhamService;

@Controller
public class TaiKhoanController {
	
	@Autowired
	private TaiKhoanService tkService;
	
	@Autowired
	private  ThaoTacSanPhamService<TaiKhoan> thaoTacTaiKhoan;
	@Autowired 
	private ThaoTacSanPhamService<KhachHang> thaoTacKhachHang;

	EmailDAO emailDAO = new EmailDAO();

	@PostMapping("/taikhoandangky")
	@ResponseBody
	public String dangkytaikhoan(@ModelAttribute("khachhang") KhachHang kh,@RequestParam("ngaysinh1") String ngaysinh,@RequestParam("password") String password) {
		System.out.println(password);
		System.out.println(kh.getEmail());
		List<TaiKhoan> listTaiKhoan = thaoTacTaiKhoan.getTatCa(TaiKhoan.class);
		TaiKhoan taiKhoan = new TaiKhoan();
		taiKhoan.setUsername(kh.getMa());
		taiKhoan.setPassword("{noop}" +password);
		taiKhoan.setEnabled(1);
		taiKhoan.setAutho(Arrays.asList("ROLE_KHACHHANG"));
		if(listTaiKhoan.contains(taiKhoan))
			return "Tài khoản này đã tồn tại trong hệ thống";
		else {
			kh.setNgaysinh(LocalDate.parse(ngaysinh));
			List<KhachHang> listKhachHangs = thaoTacKhachHang.getTatCa(KhachHang.class);
			if(listKhachHangs.contains(kh) ){
				return "Email này đã tồn tại trong hệ thống";
			}
			else {
				
				tkService.themTaiKhoan(taiKhoan);
				kh.setTaikhoan(taiKhoan);
				thaoTacKhachHang.Them(kh);
				emailDAO.sendEmail(kh.getEmail(), "Đăng ký tài khoản_HQNShop", "Đăng ký tài khoản thành công\nThông tin tài khoản:\nUsername: " + kh.getMa() + "\n" + "Password: " + password);
				return "Thêm tài khoản thành công";
			}
			
		}
	}

}
