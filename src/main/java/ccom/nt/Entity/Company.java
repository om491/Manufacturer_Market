package ccom.nt.Entity;

public class Company {

	private int id;
	private String name;
	private String companyEmail;
	private long phoneNo;
	private String password;
	private int manufacturerId;

	private MAddress cAddress;

	public Company() {

	}

	public Company(int id, String name, String companyEmail, long phoneNo, String password, MAddress cAddress) {
		this.id = id;
		this.name = name;
		this.companyEmail = companyEmail;
		this.phoneNo = phoneNo;
		this.password = password;
		this.cAddress = cAddress;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setcAddress(MAddress cAddress) {
		this.cAddress = cAddress;
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public String getCompanyEmail() {
		return this.companyEmail;
	}

	public long getPhoneNo() {
		return this.phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public MAddress getcAddress() {
		return cAddress;
	}

	public int getManufacturerId() {
		return manufacturerId;
	}

	public void setManufacturerId(int manufacturerId) {
		this.manufacturerId = manufacturerId;
	}

	@Override
	public String toString() {
		return this.getId() + " " + this.getName() + " " + this.getCompanyEmail() + " " + this.getPassword() + " "
				+ this.getManufacturerId() + " " + this.getcAddress().getVillage() + " "
				+ this.getcAddress().getTaluka() + " " + this.getcAddress().getDistrict() + " "
				+ this.getcAddress().getPinCode();
	}

}
