package app.baitapnhom.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.baitapnhom.dao.LayThongTinDAO;
import app.baitapnhom.entities.LoaiSanPham;
import app.baitapnhom.entities.NhaCungCap;
import app.baitapnhom.entities.NuocSanXuat;
import app.baitapnhom.service.LayThongTinService;

@Service
public class LayThongTinServiceImpl implements LayThongTinService{
	
	@Autowired
	private LayThongTinDAO dao;

	@Override
	@Transactional
	public NhaCungCap getNhaCUngCap(String id) {
		return dao.getNhaCUngCap(id);
	}

	@Override
	@Transactional
	public LoaiSanPham getLoaiPham(String id) {
		return dao.getLoaiPham(id);
	}

	@Override
	@Transactional
	public NuocSanXuat getNuocSanXuat(String id) {
		return dao.getNuocSanXuat(id);
	}
	
	
	
	@Override
	@Transactional
	public List<NhaCungCap> getNhaCUngCapByName(String tenncc) {
		
		return dao.getNhaCUngCapByName(tenncc);
	}

	@Override
	@Transactional
	public List<LoaiSanPham> getLoaiPhamByName(String tenloai) {
		
		return dao.getLoaiPhamByName(tenloai);
	}

	@Override
	@Transactional
	public List<NuocSanXuat> getNuocSanXuatByName(String tenNuoc) {
		
		return dao.getNuocSanXuatByName(tenNuoc);
	}

	@Override
	@Transactional
	public boolean deleteNCC(String id) {
		return dao.deleteNCC(id);
		
	}

	@Override
	@Transactional
	public boolean deleteLoai(String id) {
		return dao.deleteLoai(id);
		
	}

	@Override
	@Transactional
	public boolean deleteNuoc(String id) {
		return dao.deleteNuoc(id);
		
	}

}
