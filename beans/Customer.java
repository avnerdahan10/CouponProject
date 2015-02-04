package beans;

import java.util.Collection;

public class Customer {
	
	//
	// Varivables.
	//
	
	private long id;
	private String custName;
	private String password;
	private Collection<Coupon> coupons;


	//Customer constructor.
	public Customer(long id, String custName, String password,
			Collection<Coupon> coupons) 
	{
		super();
		this.id = id;
		this.custName = custName;
		this.password = password;
		this.coupons = coupons;
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


	//@return the custName.
	public String getCustName() {
		return custName;
	}


	//@param custName the custName to set.
	public void setCustName(String custName) {
		this.custName = custName;
	}


	//@return the password.
	public String getPassword() {
		return password;
	}


	//@param password the password to set.
	public void setPassword(String password) {
		this.password = password;
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
		return "Customer [ID= " + id + ", Customer Name= " + custName + ", Password= "
				+ password + ", Coupons= " + coupons + "]";
	}
	
	
	
}
