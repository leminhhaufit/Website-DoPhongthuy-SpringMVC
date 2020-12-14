package app.baitapnhom.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
public class NuocSanXuat implements Serializable{
	@Id
	private String manuoc;
	@Nationalized
	private String tennuoc;
	
	
	@OneToMany(mappedBy = "nuocsx")
	private List<SanPham> listsp;
	
	public NuocSanXuat(String manuoc, String tennuoc) {
		super();
		this.manuoc = manuoc;
		this.tennuoc = tennuoc;
	}
	public NuocSanXuat(String tennuoc) {
		super();
		this.tennuoc = tennuoc;
	}
	public NuocSanXuat() {
		super();
	}
	public String getManuoc() {
		return manuoc;
	}
	public void setManuoc(String manuoc) {
		this.manuoc = manuoc;
	}
	public String getTennuoc() {
		return tennuoc;
	}
	public void setTennuoc(String tennuoc) {
		this.tennuoc = tennuoc;
	}
	
	
}
