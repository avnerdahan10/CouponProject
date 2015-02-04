package beans;

import java.util.Collection;

public class Company {
	
	//
	// Variables.
	//
	
	private long id;
	private String compName;
	private String password;
	private String email;
	private Collection<Coupon> coupons;
	
	//Company constructor.
	public Company(long id, String compName, 
			String password, String email)
	{
		this.id= id;
		this.compName = compName;
		this.password = password;
		this.email = email;
	}
	
	//
	// Getters & Setters.
	//
	
	//@return the id.
	 public long getId() {
		return id;
	}

	//@param id the id to set.
	 public void setId(long id) {
		this.id = id;
	}

	//@return the compName.
	public String getCompName() {
		return compName;
	}

	//@param compName the compName to set.
	public void setCompName(String compName) {
		this.compName = compName;
	}

	//@return the password.
	public String getPassword() {
		return password;
	}

	//@param password the password to set.
	public void setPassword(String password) {
		this.password = password;
	}

	//@return the email.
	public String getEmail() {
		return email;
	}

	//@param email the email to set.
	public void setEmail(String email) {
		this.email = email;
	}

	//@return the coupons.
	public Collection<Coupon> getCoupons() {
		return coupons;
	}

	//@param coupons the coupons to set.
	public void setCoupons(Collection<Coupon> coupons) {
		this.coupons = coupons;
	}

	//toString method.
	@Override
	public String toString() {
		return "Company [ID= " + id + ", Company Name= " + compName + ", Password= "
				+ password + ", Email= " + email + ", Coupons= " + coupons + "]";
	}
	
	
	
	
	
	

}
