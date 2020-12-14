package app.baitapnhom.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
@Table(name = "sanpham")
public class SanPham implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int masp;
	@Nationalized
	private String tensp;
	
	private int soluongton;
	private double gianhap;
	private double giaban;
	
	private String urlhinh;
	
	@ManyToOne
	@JoinColumn(name = "nuocsx")
	private NuocSanXuat nuocsx;
	
	@ManyToOne
	@JoinColumn(name = "loaisp")
	private LoaiSanPham loaisp;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "nhacc")
	private NhaCungCap nhacc;
	
	@Nationalized
	@Column(columnDefinition = "NVARCHAR(MAX)")
	private String chitiet;

	public SanPham(String tensp, int soluongton, double gianhap, double giaban, String urlhinh) {
		super();
		this.tensp = tensp;
		this.soluongton = soluongton;
		this.gianhap = gianhap;
		this.giaban = giaban;
		this.urlhinh = urlhinh;
	}
	
	public SanPham(String tensp, int soluongton, double gianhap, double giaban, String urlhinh, String chitiet) {
		super();
		this.tensp = tensp;
		this.soluongton = soluongton;
		this.gianhap = gianhap;
		this.giaban = giaban;
		this.urlhinh = urlhinh;
		this.chitiet = chitiet;
	}

	public SanPham(int masp, String tensp, int soluongton, double gianhap, double giaban, String urlhinh) {
		super();
		this.masp = masp;
		this.tensp = tensp;
		this.soluongton = soluongton;
		this.gianhap = gianhap;
		this.giaban = giaban;
		this.urlhinh = urlhinh;
	}

	public SanPham() {
		super();
	}

	public int getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	public String getTensp() {
		return tensp;
	}
	
	

	public String getChitiet() {
		return chitiet;
	}

	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public int getSoluongton() {
		return soluongton;
	}

	public void setSoluongton(int soluongton) {
		this.soluongton = soluongton;
	}

	public double getGianhap() {
		return gianhap;
	}

	public void setGianhap(double gianhap) {
		this.gianhap = gianhap;
	}

	public double getGiaban() {
		return giaban;
	}

	public void setGiaban(double giaban) {
		this.giaban = giaban;
	}

	public String getUrlhinh() {
		return urlhinh;
	}

	public void setUrlhinh(String urlhinh) {
		this.urlhinh = urlhinh;
	}

	public NuocSanXuat getNuocsx() {
		return nuocsx;
	}

	public void setNuocsx(NuocSanXuat nuocsx) {
		this.nuocsx = nuocsx;
	}

	public LoaiSanPham getLoaisp() {
		return loaisp;
	}

	public void setLoaisp(LoaiSanPham loaisp) {
		this.loaisp = loaisp;
	}

	public NhaCungCap getNhacc() {
		return nhacc;
	}

	public void setNhacc(NhaCungCap nhacc) {
		this.nhacc = nhacc;
	}

	@Override
	public String toString() {
		return "SanPham [masp=" + masp + ", tensp=" + tensp + ", soluongton=" + soluongton + ", gianhap=" + gianhap
				+ ", giaban=" + giaban + ", urlhinh=" + urlhinh + ", nuocsx=" + nuocsx + ", loaisp=" + loaisp
				+ ", nhacc=" + nhacc + "]";
	}
	

	
}
