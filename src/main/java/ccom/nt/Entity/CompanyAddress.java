package ccom.nt.Entity;

public class CompanyAddress {
	
	private String village;
	private String taluka;
	private String district;
	private int pinCode;
	
	public CompanyAddress() {
		
	}
	public CompanyAddress(String village, String taluka, String district, int pinCode) {

		this.village = village;
		this.taluka = taluka;
		this.district = district;
		this.pinCode = pinCode;

	}
	
	public void setVillage(String village) {
		this.village = village;
	}
	public void setTaluka(String taluka) {
		this.taluka = taluka;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public String getVillage() {
		return this.village;
	}
	public String getTaluka() {
		return this.taluka;
	}
	public String getDistrict() {
		return this.district;
	}
	public int getPinCode() {
		return this.pinCode;
	}
	@Override
	public String toString() {
		return this.getVillage()+" "+this.getTaluka()+" "+this.getDistrict()+" "+this.getPinCode();
	}

}
