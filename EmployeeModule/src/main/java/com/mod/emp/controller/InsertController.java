package com.mod.emp.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mod.emp.model.Employee;
import com.mod.emp.model.LeaveRequest;
import com.mod.emp.service.EmployeeService;
import com.mod.emp.service.LeaveRequestService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("emp")
public class InsertController 
{
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private LeaveRequestService leaveRequestService;
  
	@PostMapping("insertemp")
	public ModelAndView insertaction(HttpServletRequest request,@RequestParam("profile-image") MultipartFile file) throws IOException, SerialException, SQLException
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
		try
		{
			String empid = request.getParameter("id");
			int id = Integer.parseInt(empid);
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String dob = request.getParameter("dob");
		    String dept = request.getParameter("department");
		    String desg = request.getParameter("Designation");
		    String sal = request.getParameter("salary");
		    double salary = Double.parseDouble(sal);
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("password");
		    String location = request.getParameter("location");
		    String contact = request.getParameter("contact");
		    
		    byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    Employee emp=new Employee();
		    emp.setEmpid(id);
		    emp.setName(name);
		    emp.setGender(gender);
		    emp.setDob(dob);
		    emp.setDept(dept);
		    emp.setSalary(salary);
		    emp.setDesignation(desg);
		    emp.setEmail(email);
		    emp.setPassword(pwd);
		    emp.setLocation(location);
		    emp.setContact(contact);
		    emp.setStatus(false);
		    emp.setProfile(blob);
		    
		    msg=employeeService.addemployee(emp);
		    System.out.println(msg);
		    mv.setViewName("EmployeeFolder/EmpLogin");
			
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email = request.getParameter("email");
	     String pwd = request.getParameter("password");
	     
	    Employee emp =  employeeService.checkemplogin(email, pwd);
	    System.out.println(emp==null);
	    if(emp!=null)
	    {
	    	// SESSION 
	    	
	    	HttpSession session = request.getSession();
	    	
	    	session.setAttribute("eid",emp.getEmpid());
	    	session.setAttribute("ename", emp.getName());
	    	session.setAttribute("email", emp.getEmail());
	    	
	    	// SESSION
	      mv.setViewName("EmployeeFolder/EmpIndex");
	    }
	    else
	    {
	      mv.setViewName("EmployeeFolder/LoginFail");
	      mv.addObject("message","Login Failed");
	    }

	    return mv;
	}
	
	@PostMapping("submitform")
	public ModelAndView submit(HttpServletRequest request,@RequestParam("fileUpload") MultipartFile file) throws IOException, SerialException, SQLException
	{
		 HttpSession session = request.getSession();
		  int eid = (int) session.getAttribute("eid");
		  String ename = (String) session.getAttribute("ename");
		  String email = (String) session.getAttribute("email");
		  
		String msg=null;
		
		ModelAndView mv=new ModelAndView();
		try
		{
			
			String name = request.getParameter("title");
		    String type = request.getParameter("leaveType");
			String reason = request.getParameter("reason");
		    String st = request.getParameter("startDate");
		    String sttime = request.getParameter("startTime");
		    String ed = request.getParameter("endDate");
		    String endtime = request.getParameter("endTime");
		    String days = request.getParameter("timeTaken");
		    
		    byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    
		    LeaveRequest lf =new LeaveRequest();
		    
		    lf.setId(lf.getId());
		    lf.setTitle(name);
		    lf.setType(type);
		    lf.setReason(reason);
		    lf.setStartdate(st);
		    lf.setStarttime(sttime);
		    lf.setEnddate(ed);
		    lf.setEndtime(endtime);
		    lf.setDays(days);
		    lf.setStatus("Pending");
		    lf.setEmpid(eid);
		    lf.setDate(LocalDate.now());
		    lf.setDoc(blob);
		    
		    msg=leaveRequestService.addForm(lf);
		    mv.setViewName("EmployeeFolder/LeaveReq");
			
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	
}
