package ccom.nt.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ccom.nt.Entity.Product;
import ccom.nt.mapper.ProductMapper;

@Repository
public class ProductDao {
	@Autowired
	private JdbcTemplate template;

	public boolean addProduct(Product product) {
		
		Object args[] = { product.getName(), product.getPrice(), product.getQuantity(),
				product.getCompany_id() };
		
		System.out.println(product.getCompany_id());
		
		String sql = "insert into product(name,price,quantity,company_id) values(?,?,?,?)";
		
		int result = template.update(sql, args);
		
		if (result == 1) {
			
			return true;
		}
		
		return false;
	}
	
	public List<Product> getAllProducts(int companyId) {
		   System.out.println("DAO Company ID = " + companyId);
		List<Product> productlist=template.query(  "SELECT * FROM product WHERE company_id = ?",new Object[] {companyId},new ProductMapper());
		  System.out.println("Products found = " + productlist.size());
		return productlist;
	}
	public int deleteProduct(int id) {
		int result = template.update("delete from product where id=?",id);
		return result;
		
	
	}
}
