package com.mod.emp.service;

import org.springframework.stereotype.Service;

import com.mod.emp.model.Employee;


public interface EmployeeService {
	
	public String addemployee(Employee emp);
	void sendConfirmationEmail(Employee emp);
	public Employee checkemplogin(String email,String pwd);	
	public Employee ViewEmpById(int id);
	
	public String ResetPwd(Employee emp);
	public String UpdateProfile(Employee e);
    public String deleteAcc(int id);
}
