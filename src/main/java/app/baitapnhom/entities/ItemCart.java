package app.baitapnhom.entities;

public class ItemCart {
	private int maSanPham;
	private String tenSanPham;
	private int soLuong;
	private String urlHinh;
	private double giaTien;
	private double tongTien;

	public ItemCart(int maSanPham, String tenSanPham, int soLuong, String urlHinh, double giaTien, double tongTien) {
		super();
		this.maSanPham = maSanPham;
		this.tenSanPham = tenSanPham;
		this.soLuong = soLuong;
		this.urlHinh = urlHinh;
		this.giaTien = giaTien;
		this.tongTien = tongTien;
	}

	public ItemCart(String tenSanPham, int soLuong, String urlHinh, double giaTien, double tongTien) {
		super();
		this.tenSanPham = tenSanPham;
		this.soLuong = soLuong;
		this.urlHinh = urlHinh;
		this.giaTien = giaTien;
		this.tongTien = tongTien;
	}

	public ItemCart() {
		super();
	}

	public int getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(int maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getUrlHinh() {
		return urlHinh;
	}

	public void setUrlHinh(String urlHinh) {
		this.urlHinh = urlHinh;
	}

	public double getGiaTien() {
		return giaTien;
	}

	public void setGiaTien(double giaTien) {
		this.giaTien = giaTien;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	private int slmax;
	

	public int getSlmax() {
		return slmax;
	}

	public void setSlmax(int slmax) {
		this.slmax = slmax;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + maSanPham;
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
		ItemCart other = (ItemCart) obj;
		if (maSanPham != other.maSanPham)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ItemCart [maSanPham=" + maSanPham + ", tenSanPham=" + tenSanPham + ", soLuong=" + soLuong + ", giaTien="
				+ giaTien + ", tongTien=" + tongTien + "]";
	}

}
