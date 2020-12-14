package app.baitapnhom.dao;

import java.util.List;

import app.baitapnhom.entities.LoaiSanPham;
import app.baitapnhom.entities.NhaCungCap;
import app.baitapnhom.entities.NuocSanXuat;

public interface LayThongTinDAO {
	public NhaCungCap getNhaCUngCap(String id);
	public LoaiSanPham getLoaiPham(String id);
	public NuocSanXuat getNuocSanXuat(String id);
	
	public List<NhaCungCap> getNhaCUngCapByName(String tenncc);
	public List<LoaiSanPham> getLoaiPhamByName(String tenloai);
	public List<NuocSanXuat> getNuocSanXuatByName(String tenNuoc);
	public boolean deleteNCC(String id);
	public boolean deleteLoai(String id);
	public boolean deleteNuoc(String id);
	

}
