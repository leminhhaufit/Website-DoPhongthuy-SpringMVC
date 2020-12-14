package app.baitapnhom.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

@SuppressWarnings("serial")
@Entity
@Table(name="taikhoan")
public class TaiKhoan implements Serializable{
	@Id
	private String username;
	private String password;
	private int enabled;
	
	@ElementCollection
	@CollectionTable(
			name = "authorites",
			joinColumns = @JoinColumn(name ="username"),
			uniqueConstraints = @UniqueConstraint(columnNames = {"username","authority"})
			)
	@Column(name = "authority",nullable = false)
	private List<String> autho;
	
	public TaiKhoan(String username, String password, int enabled) {
		super();
		this.username = username;
		this.password = password;
		this.enabled = enabled;
	}

	public TaiKhoan() {
		super();
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	

	public List<String> getAutho() {
		return autho;
	}

	public void setAutho(List<String> autho) {
		this.autho = autho;
	}
	
	 @Transient
	  public List<GrantedAuthority> getAuthorities() {
	    List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
	    for (String role: this.getAutho()) {
	      authorities.add(new SimpleGrantedAuthority(role));
	      System.out.println(role);
	    }
	    return authorities;
	  }

	@Override
	public String toString() {
		return "Authorites [username=" + username + ", password=" + password + ", enabled=" + enabled + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((username == null) ? 0 : username.hashCode());
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
		TaiKhoan other = (TaiKhoan) obj;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	
	
}
