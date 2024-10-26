package com.mod.emp.model;

import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name = "lbal")
public class LeaveBalance 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String LeaveType;
	
	@Column(nullable = false)
	private int balancecount;

	@Column(nullable = false)
	private String description;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBalancecount() {
		return balancecount;
	}
	public void setBalancecount(int balancecount) {
		this.balancecount = balancecount;
	}
	public String getLeaveType() {
		return LeaveType;
	}
	public void setLeaveType(String leaveType) {
		LeaveType = leaveType;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
