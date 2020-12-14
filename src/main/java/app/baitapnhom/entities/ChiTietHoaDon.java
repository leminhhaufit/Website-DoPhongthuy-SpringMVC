package app.baitapnhom.entities;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "chitiethoadon")
@IdClass(ChiTietHoaDonID.class)
public class ChiTietHoaDon implements Serializable{
	@Id
	@ManyToOne
	@JoinColumn(name = "mahd")
	private HoaDon hoadon;
	
	@Id
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "masp")
	private SanPham sanpham;
	
	private int soluong;
	private double dongia;
	
	
	public ChiTietHoaDon(HoaDon hoadon, SanPham sanpham, int soluong, double dongia) {
		super();
		this.hoadon = hoadon;
		this.sanpham = sanpham;
		this.soluong = soluong;
		this.dongia = dongia;
	}

	

	public ChiTietHoaDon(SanPham sanpham, int soluong, double dongia) {
		super();
		this.sanpham = sanpham;
		this.soluong = soluong;
		this.dongia = dongia;
	}



	public ChiTietHoaDon(int soluong, double dongia) {
		super();
		this.soluong = soluong;
		this.dongia = dongia;
	}



	public ChiTietHoaDon() {
		super();
	}


	public HoaDon getHoadon() {
		return hoadon;
	}


	public void setHoadon(HoaDon hoadon) {
		this.hoadon = hoadon;
	}


	public SanPham getSanpham() {
		return sanpham;
	}


	public void setSanpham(SanPham sanpham) {
		this.sanpham = sanpham;
	}


	public int getSoluong() {
		return soluong;
	}


	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}


	public double getDongia() {
		return dongia;
	}


	public void setDongia(double dongia) {
		this.dongia = dongia;
	}


	@Override
	public String toString() {
		return "ChiTietHoaDon [hoadon=" + hoadon + ", sanpham=" + sanpham + ", soluong=" + soluong + ", dongia="
				+ dongia + "]";
	}
	
	
	
	
	
}
