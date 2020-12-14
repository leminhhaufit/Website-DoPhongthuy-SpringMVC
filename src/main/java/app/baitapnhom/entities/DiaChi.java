package app.baitapnhom.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Nationalized;

@SuppressWarnings("serial")
@Entity
public class DiaChi implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="madc")
	private int madiachi;
	@Column(name="sonha")
	@Nationalized
	private String sonha;
	@Column(name="duong")
	@Nationalized
	private String duong;
	@Column(name="phuong")
	@Nationalized
	private String phuong;
	@Column(name="quan")
	@Nationalized
	private String quan;
	@Column(name="thanhpho")
	@Nationalized
	private String thanhpho;
	public DiaChi(String sonha, String duong, String phuong, String quan, String thanhpho) {
		super();
		this.sonha = sonha;
		this.duong = duong;
		this.phuong = phuong;
		this.quan = quan;
		this.thanhpho = thanhpho;
	}
	public DiaChi() {
		super();
	}
	public int getMadiachi() {
		return madiachi;
	}
	public void setMadiachi(int madiachi) {
		this.madiachi = madiachi;
	}
	public String getSonha() {
		return sonha;
	}
	public void setSonha(String sonha) {
		this.sonha = sonha;
	}
	public String getDuong() {
		return duong;
	}
	public void setDuong(String duong) {
		this.duong = duong;
	}
	public String getPhuong() {
		return phuong;
	}
	public void setPhuong(String phuong) {
		this.phuong = phuong;
	}
	public String getQuan() {
		return quan;
	}
	public void setQuan(String quan) {
		this.quan = quan;
	}
	public String getThanhpho() {
		return thanhpho;
	}
	public void setThanhpho(String thanhpho) {
		this.thanhpho = thanhpho;
	}
	@Override
	public String toString() {
		return "DiaChi [madiachi=" + madiachi + ", sonha=" + sonha + ", duong=" + duong + ", phuong=" + phuong
				+ ", quan=" + quan + ", thanhpho=" + thanhpho + "]";
	}
	
	

}
