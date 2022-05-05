package com.bolton.Nursery.Entity;

import javax.persistence.GeneratedValue;

public class Order {

	@javax.persistence.Id
	@GeneratedValue
	private int oID;
	@javax.persistence.Id
	private String uName;
	private int pID;
	private String pName;
	private String pDesc;
	private double pQty;
	private double pPrice;

	public Order(String uName, int pID, String pName, String pDesc, double pQty, double pPrice) {
		this.uName = uName;
		this.pID = pID;
		this.pName = pName;
		this.pDesc = pDesc;
		this.pQty = pQty;
		this.pPrice = pPrice;
	}

	@Override
	public String toString() {
		return "Order [oID=" + oID + ", uName=" + uName + ", pID=" + pID + ", pName=" + pName + ", pDesc=" + pDesc
				+ ", pQty=" + pQty + ", pPrice=" + pPrice + "]";
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

}
