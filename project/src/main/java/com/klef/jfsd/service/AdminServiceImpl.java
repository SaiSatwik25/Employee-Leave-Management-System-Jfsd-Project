package com.klef.jfsd.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Employee;
import com.klef.jfsd.model.Leavereq;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.EmployeeRepository;
import com.klef.jfsd.repository.HistoryRepository;
import com.klef.jfsd.repository.ManagerRepository;

import cn.apiclub.captcha.Captcha;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository ;
	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private ManagerRepository managerRepository;
	@Autowired
	private HistoryRepository historyRepository;

	@Override
	
	public Admin checkadminlogin(String auname, String apwd) 
	{
		return adminRepository.checkadminlogin(auname, apwd);
	}
	@Override
	
	public List<Employee> viewallemps() 
	{

		return employeeRepository.findAll();
	}
	@Override
	public List<Manager> viewallmanager() 
	{
		
		return managerRepository.findAll();
	}
	@Override
	public int updatestatus(boolean status, int empid) {
		return adminRepository.updatestatus(status, empid);
	}
	@Override
	public int updatemanagerstatus(boolean status, int managerid) {
		return adminRepository.updatemanagerstatus(status, managerid);
	}
	
	
	@Override
	public long empcount() 
	{
	
		return employeeRepository.count();
	}
	@Override
	public long managercount() 
	{
	
		return managerRepository.count();
	}
	@Override
	public List<Leavereq> reqhistory() {
		
		return historyRepository.findAll();
	}
	

}
