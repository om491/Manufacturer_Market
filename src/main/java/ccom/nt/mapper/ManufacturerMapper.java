package ccom.nt.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import ccom.nt.Entity.Manufacturer;

public class ManufacturerMapper implements RowMapper<Manufacturer> {

	@Override
	public Manufacturer mapRow(ResultSet rs, int rowNum) throws SQLException {

		Manufacturer manufacturer = new Manufacturer();

		manufacturer.setId(rs.getInt("id"));
		manufacturer.setName(rs.getString("name"));
		manufacturer.setEmail(rs.getString("email"));
		manufacturer.setPhoneNo(rs.getLong("phoneNo"));
		manufacturer.setPassword(rs.getString("password"));

		return manufacturer;
	}
}