package ccom.nt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccom.nt.Dao.ManufacturerDao;
import ccom.nt.Entity.Manufacturer;

@Service
public class ManufacturerService {

	@Autowired
	private ManufacturerDao manufacturerdao;

	public boolean registerManufacturer(Manufacturer manufacturer) {
		return manufacturerdao.registerManufacturer(manufacturer);
	}

	public boolean manufactureLogin(String email, String password) {

		return manufacturerdao.manufactureLogin(email, password);
	}

	public List<Manufacturer> getAllUsers() {

		return manufacturerdao.getAllUsers();

	}

	public Manufacturer getManufacturer(String email) {

		return manufacturerdao.getManufacturer(email);
	}

	public boolean changePassword(String email, String currentPassword, String newPassword) {

		return manufacturerdao.changePassword(email, currentPassword, newPassword);
	}

	public String getPassword(String email, String currentPassword, String newPassword) {
		return manufacturerdao.getPasswordByEmail(email);
		
	}

}
