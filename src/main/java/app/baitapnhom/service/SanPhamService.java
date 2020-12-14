package app.baitapnhom.service;

import java.util.List;

import app.baitapnhom.entities.SanPham;

public interface SanPhamService {
	public List<SanPham> getTatCaSanPham();
	public boolean themSanPham(SanPham sp);
	public SanPham getSanPhamByID(int id);
	
	
	public List<SanPham> getSPbyName(String tensp);
	public boolean suaSanPham(SanPham sp);
	public boolean deleteSanPham(int id);

}
