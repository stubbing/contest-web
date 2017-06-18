package bean;
// Generated 2017-5-27 17:44:09 by Hibernate Tools 3.5.0.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Schooluser generated by hbm2java
 */
public class Schooluser implements java.io.Serializable {

	private String schooluserId;
	private String password;
	private String name;
	private String phone;
	private String email;
	private Set workses = new HashSet(0);

	public Schooluser() {
	}

	public Schooluser(String schooluserId, String password, String name, String phone) {
		this.schooluserId = schooluserId;
		this.password = password;
		this.name = name;
		this.phone = phone;
	}

	public Schooluser(String schooluserId, String password, String name, String phone, String email, Set workses) {
		this.schooluserId = schooluserId;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.workses = workses;
	}

	public String getSchooluserId() {
		return this.schooluserId;
	}

	public void setSchooluserId(String schooluserId) {
		this.schooluserId = schooluserId;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set getWorkses() {
		return this.workses;
	}

	public void setWorkses(Set workses) {
		this.workses = workses;
	}

}