package ccom.nt.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccom.nt.Dao.CompanyDao;
import ccom.nt.Entity.Company;
@Service
public class CompanyService {
	@Autowired
	 private CompanyDao companyDao;
	public boolean registerCompany(Company company) {
		return companyDao.registerCompany(company);
		
	}
	public boolean companyLogin(String companyEmail,String password) {
		return companyDao.companyLogin(companyEmail, password);
	}
	public Company getCompany(String email) {
		return companyDao.getCompany(email);
	}

}
