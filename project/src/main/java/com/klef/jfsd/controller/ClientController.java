package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Employee;
import com.klef.jfsd.model.Leavereq;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.service.AdminService;
import com.klef.jfsd.service.ManagerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin") 
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	/*@Autowired
	private ManagerService managerService;

   */ 
	
	
	@GetMapping("Adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView ();
		mv.setViewName("AdminFolder/login");
		return mv;
		
	}
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView(); 
	    
	    long ecount=adminService.empcount();
		long mcount=adminService.managercount();
	    String uname = request.getParameter("uname");
	     String pwd = request.getParameter("pwd");
	     
	    Admin admin = adminService.checkadminlogin(uname, pwd);
	    
	    System.out.println(admin==null);
	    
	    if(admin!=null) 
	     { 
	       mv.setViewName("AdminFolder/adminhome");
	       mv.addObject("ecount", ecount);
			mv.addObject("mcount", mcount);
	       
	     }
	    else
	    {
	      mv.setViewName("AdminFolder/addemployee");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	  }
	
	
	
	@GetMapping("addemployee")
	public ModelAndView updatestatus()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AdminFolder/addemployee");
		List<Employee> emplist=adminService.viewallemps();
		
		mv.addObject("empdata", emplist);
		return mv;
	}
	
	@GetMapping("setstatus")
	  public ModelAndView setstatusaction(@RequestParam("empid") int eid, @RequestParam("status") boolean status)
	  {
	    int n = adminService.updatestatus(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("AdminFolder/addemployee");
	    List<Employee> emplist =  adminService.viewallemps();
	    mv.addObject("empdata", emplist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }	
	
	
	
	@GetMapping("addmanager")
	public ModelAndView updatemanagerstatus()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AdminFolder/addmanager");
		List<Manager> managerlist=adminService.viewallmanager();
		mv.addObject("managerdata", managerlist);
		return mv;
	}
	
	@GetMapping("setmanagerstatus")
	  public ModelAndView setmanagerstatusaction(@RequestParam("managerid") int mid, @RequestParam("status") boolean status)
	  {
	    int n = adminService.updatemanagerstatus(status, mid);
	    System.out.println(n);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("AdminFolder/addmanager");
	    List<Manager> managerlist =  adminService.viewallmanager();
	    mv.addObject("managerdata", managerlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("viewallemployee")
	public ModelAndView viewemps()
	{
		List<Employee> emplist= adminService.viewallemps();
		
		ModelAndView mv= new ModelAndView("AdminFolder/viewallemployee");
		mv.addObject("empdata", emplist);
		return mv;
		
	}
	@GetMapping("viewallmanager")
	public ModelAndView viewallmanager()
	{
		List<Manager> managerlist= adminService.viewallmanager();
		
		ModelAndView mv= new ModelAndView("AdminFolder/viewallmanager");
		mv.addObject("managerdata", managerlist);
		return mv;
		
	}
	@GetMapping("logout")
	public String logout()
	{
		return "AdminFolder/logout";
	}
	
	@GetMapping("leavepolicy")
	public String leavepolicy()
	{
		return "AdminFolder/leavepolicy";
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		long ecount=adminService.empcount();
		long mcount=adminService.managercount();
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		mv.addObject("ecount", ecount);
		mv.addObject("mcount", mcount);
		
		System.out.println(ecount);
		System.out.println(mcount);
		return mv;
		
		
		
		
		
	}
	
	@RequestMapping("reqhistory")
	public ModelAndView reqhistory()
	{
		List<Leavereq>lq=adminService.reqhistory();
		ModelAndView mv= new ModelAndView("AdminFolder/reqhistory");
		mv.addObject("historydata", lq);
		return mv;
		
	}

	
	
	
	
}
