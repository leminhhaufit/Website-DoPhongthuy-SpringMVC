package app.baitapnhom.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
@Table(name = "nhanvien")
public class NhanVien implements Serializable {
	@Id
	@Column(name = "manv", nullable = false)
	private String ma;
	
	@Column(name = "honv", nullable = false)
	@Nationalized
	private String ho;
	
	
	@Column(name = "tennv", nullable = false)
	@Nationalized
	private String ten;
	@Column(name = "sdt", nullable = false)
	private String sdt;
	@Column(name = "email", nullable = false)
	private String email;
	@Column(name = "gioitinh", nullable = false)
	private String gioitinh;
	@Column(name = "ngaysinh", nullable = false)
	private LocalDate ngaysinh;
	@OneToOne(cascade = CascadeType.ALL)
	private DiaChi diachi;
	@OneToOne
	private TaiKhoan taikhoan;

	@OneToMany(mappedBy = "nv", fetch = FetchType.EAGER) // con cho nay nua mappedBy
	@Fetch(value = FetchMode.SUBSELECT)
	private List<HoaDon> listhd;

	public NhanVien(String manv,String ho, String tennv, String sdt, String email, String gioitinh, LocalDate ngaysinh) {
		super();
		this.ma = manv;
		this.ho = ho;
		this.ten = tennv;
		this.sdt = sdt;
		this.email = email;
		this.gioitinh = gioitinh;
		this.ngaysinh = ngaysinh;
	}

	public NhanVien() {
		super();
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

	public DiaChi getDiachi() {
		return diachi;
	}

	public void setDiachi(DiaChi diachi) {
		this.diachi = diachi;
	}

	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	public List<HoaDon> getListhd() {
		return listhd;
	}

	public void setListhd(List<HoaDon> listhd) {
		this.listhd = listhd;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ma == null) ? 0 : ma.hashCode());
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
		NhanVien other = (NhanVien) obj;
		if (ma == null) {
			if (other.ma != null)
				return false;
		} else if (!ma.equals(other.ma))
			return false;
		return true;
	}

	

}
