package databeans;

import org.genericdao.PrimaryKey;

public class Information {
	private String company;
	private String entity;
	private String entities;
	private String joint;
	private String phone;
	private String email;
	private String web;
	private String address;
	private String city;
	private String zipcode;
	private String state;	
	
	public Information() {
		this("", "", "", "", "", "", "", "", "", "", "");
	}
	
	public Information(String company, String entity, String entities,
			String joint, String phone, String email, String web,
			String address, String city, String zipcode, String state) {
		this.company = company;
		this.entity = entity;
		this.entities = entities;
		this.joint = joint;
		this.phone = phone;
		this.email = email;
		this.web = web;
		this.address = address;
		this.city = city;
		this.zipcode = zipcode;
		this.state = state;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getEntity() {
		return entity;
	}

	public void setEntity(String entity) {
		this.entity = entity;
	}

	public String getEntities() {
		return entities;
	}

	public void setEntities(String entities) {
		this.entities = entities;
	}

	public String getJoint() {
		return joint;
	}

	public void setJoint(String joint) {
		this.joint = joint;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	
}
