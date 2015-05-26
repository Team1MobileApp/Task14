package databeans;

import org.genericdao.PrimaryKey;

public class Information {
	private String name;
	private String happy;
	private String age;
	private String gender;
	private String description;
	
	public Information() {
		this("", "", "", "", "");
	}
	
	public Information(String name, String happy, 
			String age, String gender, String description) {
		this.name = name;
		this.happy = happy;
		this.age = age;
		this.gender = gender;
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHappy() {
		return happy;
	}

	public void setHappy(String happy) {
		this.happy = happy;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
