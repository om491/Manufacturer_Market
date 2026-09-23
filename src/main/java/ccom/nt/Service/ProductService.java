package ccom.nt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ccom.nt.Dao.ProductDao;
import ccom.nt.Entity.Product;

@Service
public class ProductService {
	@Autowired
	private ProductDao productDao;
	public boolean addProduct(Product product) {
		return productDao.addProduct(product);

  
}
	public List<Product> getAllProducts(int companyId) {
		return productDao.getAllProducts(companyId);
	}
	public boolean deleteProduct(int id) {
		int deleted=productDao.deleteProduct(id);
		return true;
		
	}
	
}
