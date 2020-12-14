package app.baitapnhom.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.baitapnhom.entities.TaiKhoan;



@Service
public class UserService implements UserDetailsService {
	@Autowired
	private IManageUser manageUser;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		TaiKhoan tk = manageUser.findUser(username);
		if (tk == null) {
			return null;
		}
		 boolean enabled = true;
		 boolean accountNonExpired = true;
		 boolean credentialsNonExpired = true;
		 boolean accountNonLocked = true;
		 
		 return new User(username, tk.getPassword(), enabled, accountNonExpired, credentialsNonExpired,
			        accountNonLocked, tk.getAuthorities());
	}
	
	

}
