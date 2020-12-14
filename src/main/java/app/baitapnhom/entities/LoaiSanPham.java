package app.baitapnhom.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
public class LoaiSanPham implements Serializable {
	@Id
	private String maloai;
	@Nationalized
	private String tenloai;
	
	@OneToMany(mappedBy = "loaisp")
	private List<SanPham> listsp;
	public LoaiSanPham() {
		super();
	}
	public LoaiSanPham(String tenloai) {
		super();
		this.tenloai = tenloai;
	}
	public LoaiSanPham(String maloai, String tenloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	@Override
	public String toString() {
		return "LoaiSanPham [maloai=" + maloai + ", tenloai=" + tenloai + "]";
	}

	
}
