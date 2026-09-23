package ccom.nt.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ccom.nt.Entity.Company;
import ccom.nt.Entity.MAddress;

public class CompanyMapper implements RowMapper<Company>{

	@Override
	public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
		Company company=new Company();
		company.setId(rs.getInt("id"));
		company.setName(rs.getString("name"));
		company.setCompanyEmail(rs.getString("companyEmail"));
		company.setPhoneNo(rs.getLong("phoneNo"));
		company.setPassword(rs.getString("password"));
		company.setManufacturerId(rs.getInt("manufacturer_id"));
		
		  MAddress address = new MAddress();

	        address.setVillage(rs.getString("village"));
	        address.setTaluka(rs.getString("taluka"));
	        address.setDistrict(rs.getString("district"));
	        address.setPinCode(rs.getInt("pinCode"));

	        company.setcAddress(address);
		return company;
	}
	
}

