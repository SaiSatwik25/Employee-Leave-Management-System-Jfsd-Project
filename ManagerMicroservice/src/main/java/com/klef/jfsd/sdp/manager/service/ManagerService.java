package com.klef.jfsd.sdp.manager.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;

public interface ManagerService 
{
	public String addManager(Manager mn);
	public Manager checkmnlogin(String email,String pwd);
	public List<Employee> viewallemps();
	public Employee viewempbyid(int eid);
	public LeaveRequest findByEmpid(int empid);
	
    public Manager viewmngbyid(int mngid);
	public String ResetPwd(Manager mn);
	
	public List<LeaveRequest> findPendingLeaveRequestsByEmpidAndDate(int id);
	public int updateleavestatus(int empid,String status,int id);
	public String deleteAcc(int id);
	public String UpdateProfile(Manager mng);
	
	
	public List<LeaveRequest> reqhistory();
	
	
	
}   
