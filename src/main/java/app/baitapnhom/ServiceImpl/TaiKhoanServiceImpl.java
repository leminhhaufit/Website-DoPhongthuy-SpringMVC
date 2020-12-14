package app.baitapnhom.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.baitapnhom.dao.TaiKhoanDAO;
import app.baitapnhom.entities.TaiKhoan;
import app.baitapnhom.service.TaiKhoanService;

@Service
public class TaiKhoanServiceImpl implements TaiKhoanService {

	@Autowired
	private TaiKhoanDAO tkDAO;
	@Override
	@Transactional
	public void themTaiKhoan(TaiKhoan tk) {
		tkDAO.themTaiKhoan(tk);
		
	}

}
