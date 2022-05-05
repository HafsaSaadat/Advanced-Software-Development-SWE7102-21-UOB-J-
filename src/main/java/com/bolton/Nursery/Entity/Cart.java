package com.bolton.Nursery.Entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.OneToMany;

@Entity
public class Cart {

	@javax.persistence.Id
	@GeneratedValue
	private int cID;
	private int pID;
	private String pName;
	private String pDesc;
	private double pQty;
	private double pPrice;
	private String uName;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Plant> plant;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Users> users;

	public Cart() {

	}

	public Cart(int pID, String pName, String pDesc, double pQty, double pPrice, String uName) {
		this.pID = pID;
		this.pName = pName;
		this.pDesc = pDesc;
		this.pQty = pQty;
		this.pPrice = pPrice;
		this.uName = uName;
	}

	public int getcID() {
		return cID;
	}

	public void setcID(int cID) {
		this.cID = cID;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public int getpID() {
		return pID;
	}

	public void setpID(int pID) {
		this.pID = pID;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpDesc() {
		return pDesc;
	}

	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}

	public double getpQty() {
		return pQty;
	}

	public void setpQty(double pQty) {
		this.pQty = pQty;
	}

	public double getpPrice() {
		return pPrice;
	}

	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}

	@Override
	public String toString() {
		return "Cart [pID=" + pID + ", pName=" + pName + ", pDesc=" + pDesc + ", pQty=" + pQty + ", pPrice=" + pPrice
				+ ", uName=" + uName + "]";
	}

}
