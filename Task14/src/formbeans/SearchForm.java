package formbeans;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FormBean;

public class SearchForm extends FormBean{
	
	private String name;
	private String gender;
	private String age;
	private String happy;
	private String location;
	private String description;
	
	// get
	public String getDescription() {
		return description;
	}
		
	// set
	public void setDescription(String s) {
		description = s;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String l) {
		location = l;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getHappy() {
		return happy;
	}

	public void setHappy(String happy) {
		this.happy = happy;
	}

	@Override
	// error
	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();
			
		if (location == null) {
			errors.add("Location is required");
		}		
		if (description == null) {
			errors.add("Description is required");
		}
		return errors;	
	}	
}