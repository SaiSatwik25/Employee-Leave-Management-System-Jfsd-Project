package com.klef.jfsd.sdp.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.service.ManagerService;

@Controller
@RequestMapping("mng")
public class JspfilesController 
{
	@Autowired
	private ManagerService managerService;
	
	@GetMapping("Mngindex")
	public ModelAndView Mngindex()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerFolder/Mngindex");
		return mv;
	}
	
	
	
	
	
	
     //MANAGER REGISTRATION
	@GetMapping("Mngreg")
	public ModelAndView mnregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerFolder/Mngreg");
		return mv;
	}

	
	//MANAGER REGISTRATION SUCCESS
	@GetMapping("reg-success")
	public ModelAndView regsucesss()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerFolder/reg-success");
		return mv;
	}
	
	//MANAGER LOGIN
	@GetMapping("Mnglogin")
	public ModelAndView Mnglogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerFolder/Mnglogin");
		return mv;
	}
	
		
		@GetMapping("auth-logout")
	    public ModelAndView authlogout()
	    {
	      ModelAndView mv = new ModelAndView("ManagerFolder/auth-logout");
	      return mv;
	    }
	  
	  @GetMapping("auth-reset-password")
	    public ModelAndView authreset()
	    {
	      ModelAndView mv = new ModelAndView("ManagerFolder/auth-reset-password");
	      return mv;
	    }
	  	  
}
	  
	  
