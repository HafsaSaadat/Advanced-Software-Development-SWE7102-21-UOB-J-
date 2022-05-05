package com.bolton.Nursery.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.ManyToOne;

@Entity
public class Users {
	@javax.persistence.Id
	@GeneratedValue
	private int uId;
	private String uName;
	private String uEmail;
	private String uPassword;
	private String uRole;

	@ManyToOne
	private Cart cart;

	public Users() {

	}

	public Users(String uName, String uEmail, String uPassword) {
		this.uName = uName;
		this.uEmail = uEmail;
		this.uPassword = uPassword;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuRole() {
		return uRole;
	}

	public void setuRole(String uRole) {
		this.uRole = uRole;
	}

	@Override
	public String toString() {
		return "Users [uName=" + uName + ", uEmail=" + uEmail + ", uPassword=" + uPassword + "]";
	}

}
