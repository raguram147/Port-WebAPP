package demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user")
public class User implements Serializable{
	@Id
	@Column(name="userid")
	private String AdminId;
	@Column(name="name")
	private String AdminName;
	@Column(name="password")
	private String AdminPass;
	
	public User(String adminId, String adminName, String adminPass) {
		super();
		AdminId = adminId;
		AdminName = adminName;
		AdminPass = adminPass;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAdminId() {
		return AdminId;
	}
	public void setAdminId(String adminId) {
		AdminId = adminId;
	}
	public String getAdminName() {
		return AdminName;
	}
	public void setAdminName(String adminName) {
		AdminName = adminName;
	}
	public String getAdminPass() {
		return AdminPass;
	}
	public void setAdminPass(String adminPass) {
		AdminPass = adminPass;
	}
	

}
