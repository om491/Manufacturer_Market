
package ccom.nt.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ccom.nt.Entity.MAddress;
import ccom.nt.Entity.Manufacturer;
import ccom.nt.Service.EmailService;
import ccom.nt.mapper.ManufacturerMapper;

@Repository
public class ManufacturerDao {

	@Autowired
	private JdbcTemplate template;

	@Autowired
	private EmailService emailService;

	public boolean registerManufacturer(Manufacturer manufacturer) {

		Object obj[] = { manufacturer.getId(), manufacturer.getName(), manufacturer.getEmail(),
				manufacturer.getPhoneNo(), emailService.otp };
		int addressResult = 0;
		int result = template.update("insert into manufacturer values(?,?,?,?,?)", obj);

		if (result == 1) {
			MAddress address = manufacturer.getmAddress();

			Object addressObj[] = { address.getVillage(), address.getTaluka(), address.getDistrict(),
					address.getPinCode(), manufacturer.getId() };

			addressResult = template.update("insert into address values(?,?,?,?,?)", addressObj);
		}

		if (result == 1 && addressResult == 1) {
			return true;

		}
		return false;
	}

	public boolean manufactureLogin(String email, String password) {
		Object args[] = { email, password };
		int result = template.queryForObject("select count(*) from manufacturer where email = ? and password = ?",
				Integer.class, args);
		if (result == 1) {
			return true;
		} else {
			return false;
		}

	}

	public List<Manufacturer> getAllUsers() {

		String sql = "select * from manufacturer";

		List<Manufacturer> list = template.query(sql, new ManufacturerMapper());
		return list;
	}

	public Manufacturer getManufacturer(String email) {

		String sql = "select * from manufacturer where email = ?";
		return template.queryForObject(sql, new ManufacturerMapper(), email);
	}

	// ======CHANGE PASSWORD======

	public boolean changePassword(String email, String currentPassword, String newPassword) {

		String checkSql = "SELECT COUNT(*) FROM manufacturer WHERE email = ? AND password = ?";

		int result = template.queryForObject(checkSql, Integer.class, email, currentPassword);

		if (result == 1) {

			String updateSql = "UPDATE manufacturer SET password = ? WHERE email = ?";

			int updateResult = template.update(updateSql, newPassword, email);

			return updateResult == 1;
		}

		return false;
	}

	public String getPasswordByEmail(String email) {

		String sql = "SELECT password FROM manufacturer WHERE email = ?";

		return template.queryForObject(sql, String.class, email);
	}
}