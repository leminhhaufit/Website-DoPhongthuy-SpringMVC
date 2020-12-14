package app.baitapnhom.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
@Table(name = "hoadon")
public class HoaDon implements Serializable {
	@Id
	private String mahd;
	
	@ManyToOne
	@JoinColumn(name = "manv")
	private NhanVien nv;
	
	@ManyToOne
	@JoinColumn(name = "makh")
	private KhachHang kh;
	
	private LocalDate ngaylap;
	
	@Nationalized
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String chuy;
	
	@OneToMany(mappedBy = "hoadon", fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	private List<ChiTietHoaDon> listcthd;
	public HoaDon() {
		super();
	}
	public HoaDon(LocalDate ngaylap, String chuy) {
		super();
		this.ngaylap = ngaylap;
		this.chuy = chuy;
	}
	public HoaDon(NhanVien nv, KhachHang kh, LocalDate ngaylap, String chuy) {
		super();
		this.nv = nv;
		this.kh = kh;
		this.ngaylap = ngaylap;
		this.chuy = chuy;
	}
	
	
	public HoaDon(String mahd, LocalDate ngaylap, String chuy) {
		super();
		this.mahd = mahd;
		this.ngaylap = ngaylap;
		this.chuy = chuy;
	}
	public HoaDon(String mahd, NhanVien nv, LocalDate ngaylap, String chuy) {
		super();
		this.mahd = mahd;
		this.nv = nv;
		this.ngaylap = ngaylap;
		this.chuy = chuy;
	}
	public HoaDon(String mahd, KhachHang kh, LocalDate ngaylap, String chuy) {
		super();
		this.mahd = mahd;
		this.kh = kh;
		this.ngaylap = ngaylap;
		this.chuy = chuy;
	}
	public String getMahd() {
		return mahd;
	}
	public void setMahd(String mahd) {
		this.mahd = mahd;
	}
	public NhanVien getNv() {
		return nv;
	}
	public void setNv(NhanVien nv) {
		this.nv = nv;
	}
	public KhachHang getKh() {
		return kh;
	}
	public void setKh(KhachHang kh) {
		this.kh = kh;
	}
	public LocalDate getNgaylap() {
		return ngaylap;
	}
	public void setNgaylap(LocalDate ngaylap) {
		this.ngaylap = ngaylap;
	}
	public String getChuy() {
		return chuy;
	}
	public void setChuy(String chuy) {
		this.chuy = chuy;
	}
	
	public List<ChiTietHoaDon> getListcthd() {
		return listcthd;
	}
	public void setListcthd(List<ChiTietHoaDon> listcthd) {
		this.listcthd = listcthd;
	}
	@Override
	public String toString() {
		return "HoaDon [mahd=" + mahd + ", nv=" + nv + ", kh=" + kh + ", ngaylap=" + ngaylap + ", chuy=" + chuy + "]";
	}
	
	

}
