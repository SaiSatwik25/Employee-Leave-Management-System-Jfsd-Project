package com.mod.emp.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mod.emp.model.Employee;
import com.mod.emp.model.LeaveRequest;
import com.mod.emp.service.EmployeeService;
import com.mod.emp.service.LeaveRequestService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("emp")
public class ViewController {


	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private LeaveRequestService leaveRequestService;
	
	
	@GetMapping("ViewAllReqs")
    public ModelAndView viewallreqs(HttpServletRequest req)
    {
		HttpSession session = req.getSession();
		int eid = (int) session.getAttribute("eid");	
   	    ModelAndView mv = new ModelAndView("EmployeeFolder/ViewAllReqs");
   	    mv.addObject("eid",eid);
   	    
   	    List<LeaveRequest> data= leaveRequestService.ViewLeaveReqs(eid);
   	    
   	    System.out.println("\n"+eid+"\n");
   	    for (LeaveRequest leaveRequest : data) {
   	    	System.out.println(leaveRequest.getEmpid());		
		} 
   	    mv.addObject("data",data);
   	    return mv;
    }
	
	
	@GetMapping("CheckStatus")
    public ModelAndView Check(HttpServletRequest req)
    {
		HttpSession session = req.getSession();
		int eid = (int) session.getAttribute("eid");	
   	    ModelAndView mv = new ModelAndView("EmployeeFolder/CheckStatus");
   	    mv.addObject("eid",eid);
   	    
   	    List<LeaveRequest> data= leaveRequestService.ViewLeaveReqs(eid);
   	    
   	    System.out.println("\n"+eid+"\n");
   	    for (LeaveRequest leaveRequest : data) {
   	    	System.out.println(leaveRequest.getEmpid());		
		} 
   	    mv.addObject("data",data);
   	    return mv;
    }
	
	
	
	
	@GetMapping("displayprofileimage")
	public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Employee emp =  employeeService.ViewEmpById(id);
	  byte [] imageBytes = null;
	  imageBytes = emp.getProfile().getBytes(1,(int) emp.getProfile().length());
	  return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	}
	
	@GetMapping("SupportingDocument")
	public ResponseEntity<byte[]> displaypdfdemo(@RequestParam("id") int id) throws IOException, SQLException
	{
	  LeaveRequest emp =  leaveRequestService.ViewById(id);
	  byte [] imageBytes = null;
	  imageBytes = emp.getDoc().getBytes(1,(int) emp.getDoc().length());
	  return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(imageBytes);
	}
	

}
