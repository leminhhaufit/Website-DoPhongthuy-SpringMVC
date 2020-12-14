package app.baitapnhom.ServiceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.baitapnhom.dao.ThaoTacSanPhamDAO;
import app.baitapnhom.service.ThaoTacSanPhamService;

@Service
public class ThaoTacSanPhamServiceImpl<T> implements ThaoTacSanPhamService<T>{
	
	@Autowired
	private ThaoTacSanPhamDAO<T> thaoTacSP;

	@Override
	@Transactional
	public boolean Them(T t) {
		return thaoTacSP.Them(t);
	}

	@Override
	@Transactional
	public boolean Sua(T t) {
		return thaoTacSP.Sua(t);
	}

	@Override
	@Transactional
	public List<T> getTatCa(Class<T> clazz) {
		return thaoTacSP.getTatCa(clazz);
	}

}
