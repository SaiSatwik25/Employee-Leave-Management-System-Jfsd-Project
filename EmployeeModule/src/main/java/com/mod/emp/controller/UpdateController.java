package com.mod.emp.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mod.emp.model.Employee;
import com.mod.emp.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("emp")
public class UpdateController 
{
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@PostMapping("update")
	  public ModelAndView updateaction(HttpServletRequest request)
	  {
	    String msg = null;
	    
	    ModelAndView mv = new ModelAndView();
	    
	      HttpSession session = request.getSession();
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	    Employee e = employeeService.ViewEmpById(id);
	   try
	   {
	     String pwd = request.getParameter("pwd");
	     
	      Employee emp = new Employee();
	      emp.setEmpid(e.getEmpid());
	      emp.setName(e.getName());
	      emp.setGender(e.getGender());
	      emp.setDob(e.getDob());
	      emp.setDept(e.getDept());
	      emp.setDesignation(e.getDesignation());
	      emp.setSalary(e.getSalary());
	      emp.setEmail(e.getEmail());
	      emp.setPassword(pwd);
	      emp.setLocation(e.getLocation());
	      emp.setContact(e.getContact());
	      emp.setProfile(e.getProfile());
	      emp.setStatus(e.isStatus());
	      
	      
	      msg = employeeService.ResetPwd(emp);

	      mv.setViewName("EmployeeFolder/EmpIndex");
	      mv.addObject("message",msg);
	     
	   }
	   catch(Exception exp)
	   {
	     msg = exp.getMessage();
	     
	     mv.setViewName("updateerror");
	      mv.addObject("message",msg);
	   }
	    return mv;

	  }
	
	@PostMapping("updateprofile")
	  public ModelAndView updateprofile(HttpServletRequest request)
	  {
		
		//,@RequestParam("fileUpload") MultipartFile file) throws IOException, SerialException, SQLException
	    String msg = null;
	    
	    ModelAndView mv = new ModelAndView();
	    
	      HttpSession session = request.getSession();
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	    Employee e = employeeService.ViewEmpById(id);
	    
	   try
	   {
		   String empid = request.getParameter("id");
			int eid = Integer.parseInt(empid);
			String name = request.getParameter("name");
		    String dept = request.getParameter("department");
		    String desg = request.getParameter("Designation");
		    String email = request.getParameter("email");
		    String contact = request.getParameter("contact");
//		    
//		    byte[] bytes = file.getBytes();
//			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
//		    
//	     
	      Employee emp = new Employee();
	      emp.setEmpid(eid);
	      emp.setName(name);
	      emp.setGender(e.getGender());
	      emp.setDob(e.getDob());
	      emp.setDept(dept);
	      emp.setDesignation(desg);
	      emp.setSalary(e.getSalary());
	      emp.setEmail(e.getEmail());
	      emp.setPassword(e.getPassword());
	      emp.setLocation(e.getLocation());
	      emp.setContact(contact);
	      emp.setProfile(e.getProfile());
	      emp.setStatus(e.isStatus());
	      
	      employeeService.UpdateProfile(emp);
	      	      
	      mv.setViewName("EmployeeFolder/Profile");
	      //mv.setViewName("redirect:/emp/EmployeeFolder/Profile" + emp);
	      mv.addObject("emp",emp);
	     
	   }
	   catch(Exception exp)
	   {
	     msg = exp.getMessage();
	     
	     mv.setViewName("updateerror");
	      mv.addObject("message",msg);
	   }
	    return mv;

	  }
	  
	@GetMapping("delete")
	  public ModelAndView delete(@RequestParam("id") int id)
	  {
		String s = employeeService.deleteAcc(id);
		 ModelAndView mv = new ModelAndView("redirect:/emp/Empreg");	            
	      return mv;
	  }
}


