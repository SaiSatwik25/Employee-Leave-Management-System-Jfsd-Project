package com.mod.emp.model;

import jakarta.persistence.*;

@Entity
@Table(name = "lbempmap")
public class LeaveBalanceEmpMapping 
{
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
       private int id;
	   
	   @ManyToOne
	   @JoinColumn(name = "emp_id")
	   private Employee emp;
	   
	   @ManyToOne
	   @JoinColumn(name = "lvb_id")
	   private LeaveBalance lvb;

	   
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public LeaveBalance getLvb() {
		return lvb;
	}

	public void setLvb(LeaveBalance lvb) {
		this.lvb = lvb;
	}
}
