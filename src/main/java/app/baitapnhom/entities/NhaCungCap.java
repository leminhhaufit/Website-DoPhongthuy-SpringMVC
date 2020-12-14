package app.baitapnhom.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
public class NhaCungCap implements Serializable{
	@Id
	private String mancc;
	@Nationalized
	private String tenncc;
	
	@OneToMany(mappedBy = "nhacc",fetch = FetchType.EAGER)
	private List<SanPham> listsp;
	public NhaCungCap(String mancc, String tenncc) {
		super();
		this.mancc = mancc;
		this.tenncc = tenncc;
	}
	public NhaCungCap(String tenncc) {
		super();
		this.tenncc = tenncc;
	}
	public NhaCungCap() {
		super();
	}
	public String getMancc() {
		return mancc;
	}
	public void setMancc(String mancc) {
		this.mancc = mancc;
	}
	public String getTenncc() {
		return tenncc;
	}
	public void setTenncc(String tenncc) {
		this.tenncc = tenncc;
	}
	public List<SanPham> getListsp() {
		return listsp;
	}
	public void setListsp(List<SanPham> listsp) {
		this.listsp = listsp;
	}
	
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((mancc == null) ? 0 : mancc.hashCode());
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
		NhaCungCap other = (NhaCungCap) obj;
		if (mancc == null) {
			if (other.mancc != null)
				return false;
		} else if (!mancc.equals(other.mancc))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "NhaCungCap [mancc=" + mancc + ", tenncc=" + tenncc + "]";
	}
	
	
	
	
	
}
