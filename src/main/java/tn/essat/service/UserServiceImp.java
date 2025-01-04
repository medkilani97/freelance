package tn.essat.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tn.essat.dao.IRole;
import tn.essat.dao.IUser;
import tn.essat.model.Role;
import tn.essat.model.User;
@Service
public class UserServiceImp implements IUserService {
	@Autowired
	IUser dao ;
	@Autowired
	IRole dao_role;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User u=dao.findByUsername(username);
		if (u==null)
		{throw new  UsernameNotFoundException("User name doesn't exist"); 
		}  	
		return u ;
	}

	public User findByUsername(String username) {
		
		return dao.findByUsername(username);
	}
	
}
