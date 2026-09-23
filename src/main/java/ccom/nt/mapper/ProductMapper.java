package ccom.nt.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ccom.nt.Entity.Product;

public class ProductMapper implements RowMapper<Product> {

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
	Product product = new Product();
	product.setId(rs.getInt("id"));
	product.setName(rs.getString("name"));
	product.setPrice(rs.getFloat("price"));;
	product.setQuantity(rs.getInt("quantity"));
	product.setCompany_id(rs.getInt("company_id"));
	
	return product;
	}

}
