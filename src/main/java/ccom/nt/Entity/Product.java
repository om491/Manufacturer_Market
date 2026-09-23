package ccom.nt.Entity;

public class Product {

	private int id;
	private String name;
	private float price;
	private int quantity;
	private int company_id;

	public Product() {

	}

	public Product(int id, String name, float price, int quantity,int company_id) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.company_id = company_id;
	}


	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", company_id="
				+ company_id + "]";
	}

	
	
}
