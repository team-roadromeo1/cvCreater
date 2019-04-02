package com.cv.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="info")

public class InfoData {

	@Column(name="name")
	private String name;
	
	@Id
	@Column(name="email")
	private String email;

	@Column(name="phone")
	private String phone;
	
	@Column(name="10th")
	private String ssc;
	
	@Column(name="10_per")
	private String ssc_per;
	
	@Column(name="10_ins")
	private String ssc_ins;
	
	@Column(name="12th")
	private String hsc;
	
	@Column(name="12_per")
	private String hsc_per;
	
	@Column(name="12_ins")
	private String hsc_ins;
	
	@Column(name="dgree")
	private String dgree;
	
	@Column(name="dgree_per")
	private String dgree_per;

	@Column(name="dgree_ins")
	private String dgree_ins;
	
    @Column(name="obj")
	private String obj;
	
	@Column(name="address")
	private String address;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSsc() {
		return ssc;
	}

	public void setSsc(String ssc) {
		this.ssc = ssc;
	}

	public String getSsc_per() {
		return ssc_per;
	}

	
	public String getSsc_ins() {
		return ssc_ins;
	}

	public void setSsc_ins(String ssc_ins) {
		this.ssc_ins = ssc_ins;
	}

	
	public void setSsc_per(String ssc_per) {
		this.ssc_per = ssc_per;
	}

	public String getHsc() {
		return hsc;
	}

	public void setHsc(String hsc) {
		this.hsc = hsc;
	}

	public String getHsc_per() {
		return hsc_per;
	}

	public void setHsc_per(String hsc_per) {
		this.hsc_per = hsc_per;
	}

	
	public String getHsc_ins() {
		return hsc_ins;
	}

	public void setHsc_ins(String hsc_ins) {
		this.hsc_ins = hsc_ins;
	}

	
	public String getDgree() {
		return dgree;
	}

	public void setDgree(String dgree) {
		this.dgree = dgree;
	}

	public String getDgree_per() {
		return dgree_per;
	}

	public void setDgree_per(String dgree_per) {
		this.dgree_per = dgree_per;
	}

	
	public String getDgree_ins() {
		return dgree_ins;
	}

	public void setDgree_ins(String dgree_ins) {
		this.dgree_ins = dgree_ins;
	}

	
	public String getObj() {
		return obj;
	}

	public void setObj(String obj) {
		this.obj = obj;
	}


	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
}
