package com.klef.jfsd.sdp.manager.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;
import com.klef.jfsd.sdp.manager.repositories.EmployeeRepository;
import com.klef.jfsd.sdp.manager.repositories.LeaveRequestRepository;
import com.klef.jfsd.sdp.manager.repositories.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired	
	private ManagerRepository managerRepository;

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private LeaveRequestRepository leaveRequestRepository;
	
	@Override
	public String addManager(Manager mn) 
	{
	    managerRepository.save(mn);
	    return "Manager Added Successfully";
	}

	@Override
	public Manager checkmnlogin(String email, String pwd) 
	{
		return managerRepository.checkmnlogin(email, pwd);
	}

	
	@Override
	public List<Employee> viewallemps()
	{
		return employeeRepository.findAll();
	}

	@Override
	public Employee viewempbyid(int empid) 
	{
		Optional<Employee> obj = employeeRepository.findById(empid);    
	    
	    if(obj.isPresent())
	    {
	      Employee emp = obj.get();
	      return emp;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public LeaveRequest findByEmpid(int empid) 
	{
		return leaveRequestRepository.findByEmpid(empid);
	}

	@Override
	public List<LeaveRequest> findPendingLeaveRequestsByEmpidAndDate(int id) 
	{
		LocalDate today = LocalDate.now();
		// Get Yesterday's Date
		LocalDate yesterday = LocalDate.now().minusDays(1);


		return leaveRequestRepository.findPendingLeaveRequestsByEmpidAndDate(id, yesterday, today);	
		//return leaveRequestRepository.findPd(id, today);
	}

	 @Override
	  public String ResetPwd(Manager m)
	 {
	    Manager mn = managerRepository.findById(m.getMngid()).get();    
	      
	    mn.setMngid(m.getMngid());
	    mn.setName(m.getName());
	    mn.setGender(m.getGender());
	    mn.setDob(m.getDob());
	    mn.setDept(m.getDept());
	    mn.setSalary(m.getSalary());
	    mn.setDesignation(m.getDesignation());
	    mn.setEmail(m.getEmail());
	    mn.setPassword(m.getPassword());
	    mn.setLocation(m.getLocation());
	    mn.setContact(m.getContact());
	    mn.setStatus(m.isStatus());
	    mn.setProfile(m.getProfile());

	      
	      managerRepository.save(m);
	      
	      
	    return null;
	  }

	@Override
	public Manager viewmngbyid(int mngid) 
	{
    Optional<Manager> obj = managerRepository.findById(mngid);    
	    
	    if(obj.isPresent())
	    {
	      Manager mn = obj.get();
	      return mn;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public int updateleavestatus(int empid, String status,int id) {
	
		return managerRepository.updateleavestatus(empid, status,id);
	}

	@Override
	  public String deleteAcc(int id) {
	    
	    managerRepository.deleteById(id);
	    return "ManagerDeletedSucessfully";
	  }

	@Override
	  public String UpdateProfile(Manager mng) {
	    Manager mn = managerRepository.findById(mng.getMngid()).get();    
	      
	      mn.setMngid(mn.getMngid());
	      mn.setName(mn.getName());
	      mn.setGender(mn.getGender());
	      mn.setDob(mn.getDob());
	      mn.setDept(mn.getDept());
	      mn.setSalary(mn.getSalary());
	      mn.setDesignation(mn.getDesignation());
	      mn.setEmail(mn.getEmail());
	      mn.setPassword(mn.getPassword());
	      mn.setLocation(mn.getLocation());
	      mn.setContact(mn.getContact());
	      mn.setStatus(mn.isStatus());
	      mn.setProfile(mn.getProfile());
	      
	      managerRepository.save(mn);
	    return null;
	  }

	@Override
	public List<LeaveRequest> reqhistory() 
	{
		return (List<LeaveRequest>) leaveRequestRepository.findAll();
	}
}
