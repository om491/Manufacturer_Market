package ccom.nt.Entity;

public class Manufacturer {
	
	private int id;
	private String name;
	private String email;
	private long phoneNo;
	private String password;
	private MAddress mAddress;
	
	public Manufacturer() {
		
	}

	public Manufacturer(int id, String name, String email, long phoneNo, String password, MAddress mAddress) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.mAddress = mAddress;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public MAddress getmAddress() {
		return mAddress;
	}

	public void setmAddress(MAddress mAddress) {
		this.mAddress = mAddress;
	}

	@Override
	public String toString() {
		return this.getId()+" "+this.getName()+" "+this.getEmail()+" "+this.getPhoneNo()+" "+this.getPassword()+" "+this.getmAddress();
	}
	
	
}
