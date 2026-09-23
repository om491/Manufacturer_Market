package ccom.nt.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccom.nt.Dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	public boolean adminLogin(String email, String password) {
		
		return adminDao.adminLogin(email,password);
	}

}
