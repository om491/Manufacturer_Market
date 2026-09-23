package ccom.nt.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ccom.nt.Entity.Company;
import ccom.nt.Entity.MAddress;
import ccom.nt.mapper.CompanyMapper;

@Repository
public class CompanyDao {

    @Autowired
    private JdbcTemplate template;

    public boolean registerCompany(Company company) {

        Object[] companyData = {
            company.getId(),
            company.getName(),
            company.getCompanyEmail(),
            company.getPhoneNo(),
            company.getPassword(),
            company.getManufacturerId()
        };

        int companyResult = template.update(
            "INSERT INTO company " +
            "(id, name, companyEmail, phoneNo, password, manufacturer_id) " +
            "VALUES (?, ?, ?, ?, ?, ?)",
            companyData
        );

        if (companyResult == 1) {

            MAddress address = company.getcAddress();

            Object[] addressData = {
                address.getVillage(),
                address.getTaluka(),
                address.getDistrict(),
                address.getPinCode(),
                company.getId()
            };

            int addressResult = template.update(
                "INSERT INTO caddress " +
                "(village, taluka, district, pinCode, company_id) " +
                "VALUES (?, ?, ?, ?, ?)",
                addressData
            );

            return addressResult == 1;
        }

        return false;
    }
    
    public boolean companyLogin(String companyEmail,String password) {
    	Object args[] = {companyEmail,password};
    	int result = template.queryForObject("select count(*) from company where companyEmail=? and password=?",Integer.class, args);
    	if(result == 1) {
    		return true;
    	}else {
    		return false;
    	}
    }

	public Company getCompany(String email) {
		String sql=
	            "SELECT " +
	                    "c.id, " +
	                    "c.name, " +
	                    "c.companyEmail, " +
	                    "c.phoneNo, " +
	                    "c.password, " +
	                    "c.manufacturer_id, " +
	                    "a.village, " +
	                    "a.taluka, " +
	                    "a.district, " +
	                    "a.pinCode " +
	                    "FROM company c " +
	                    "LEFT JOIN caddress a " +
	                    "ON c.id = a.company_id " +
	                    "WHERE c.companyEmail = ?";

		return template.queryForObject(sql,new CompanyMapper(), email);
	}

	
}