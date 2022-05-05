package com.bolton.Nursery.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.ManyToOne;

@Entity
public class Plant {
	@javax.persistence.Id
	@GeneratedValue
	private int pID;
	private String pName;
	private String pDesc;
	private double pQty;
	private double pPrice;
	private String pCategory;

	@ManyToOne
	private Cart cart;

	public Plant() {

	}

	public Plant(String pName, String pDesc, double pQty, double pPrice, String pCategory) {
		this.pName = pName;
		this.pDesc = pDesc;
		this.pQty = pQty;
		this.pPrice = pPrice;
		this.pCategory = pCategory;
	}

	public int getpID() {
		return pID;
	}

	public void setpID(int pID) {
		this.pID = pID;
	}

	@Override
	public String toString() {
		return "Plant " + pName + ", Details " + pDesc + ", Quantity= " + pQty + ", Price= " + pPrice + ", Category= "
				+ pCategory;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpCategory() {
		return pCategory;
	}

	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
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
