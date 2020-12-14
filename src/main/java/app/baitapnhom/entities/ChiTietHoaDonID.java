package app.baitapnhom.entities;

import java.io.Serializable;

import javax.persistence.Embeddable;

@SuppressWarnings("serial")
@Embeddable
public class ChiTietHoaDonID implements Serializable {
	private String hoadon;
	private int sanpham;
	public ChiTietHoaDonID() {
		super();
	}
	public ChiTietHoaDonID(String hoadon, int sanpham) {
		super();
		this.hoadon = hoadon;
		this.sanpham = sanpham;
	}
	public String getHoadon() {
		return hoadon;
	}
	public void setHoadon(String hoadon) {
		this.hoadon = hoadon;
	}
	public int getSanpham() {
		return sanpham;
	}
	public void setSanpham(int sanpham) {
		this.sanpham = sanpham;
	}
	@Override
	public String toString() {
		return "ChiTietHoaDonID [hoadon=" + hoadon + ", sanpham=" + sanpham + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hoadon == null) ? 0 : hoadon.hashCode());
		result = prime * result + sanpham;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChiTietHoaDonID other = (ChiTietHoaDonID) obj;
		if (hoadon == null) {
			if (other.hoadon != null)
				return false;
		} else if (!hoadon.equals(other.hoadon))
			return false;
		if (sanpham != other.sanpham)
			return false;
		return true;
	}
	
	
	

}
