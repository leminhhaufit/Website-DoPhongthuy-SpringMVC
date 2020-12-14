package app.baitapnhom.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
@Table(name = "khachhang")
public class KhachHang implements Serializable {
	@Id
	private String ma;
	@Nationalized
	private String ho;

	@Nationalized
	private String ten;

	private String sdt;
	private String email;
	@Nationalized
	private String gioitinh;
	private LocalDate ngaysinh;
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	@CollectionTable()
	private List<DiaChi> listdiachi;

	@OneToOne
	private TaiKhoan taikhoan;

	@OneToMany(mappedBy = "kh", fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<HoaDon> listhoadon;

	public KhachHang() {
		super();
	}

	public KhachHang(String makh, String hokh, String tenkh, String sdt, String email, String gioitinh,
			LocalDate ngaysinh) {
		super();
		this.ma = makh;
		this.ho = hokh;
		this.ten = tenkh;
		this.sdt = sdt;
		this.email = email;
		this.gioitinh = gioitinh;
		this.ngaysinh = ngaysinh;
	}

	public KhachHang(String tenkh, String hokh, String sdt, String email, String gioitinh, LocalDate ngaysinh) {
		super();
		this.ten = tenkh;
		this.ho = hokh;
		this.sdt = sdt;
		this.email = email;
		this.gioitinh = gioitinh;
		this.ngaysinh = ngaysinh;
	}

	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public LocalDate getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(LocalDate ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public List<DiaChi> getListdiachi() {
		return listdiachi;
	}

	public void setListdiachi(List<DiaChi> listdiachi) {
		this.listdiachi = listdiachi;
	}

	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	public List<HoaDon> getListhoadon() {
		return listhoadon;
	}

	public void setListhoadon(List<HoaDon> listhoadon) {
		this.listhoadon = listhoadon;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
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
		KhachHang other = (KhachHang) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		return true;
	}

}
