package com.mod.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mod.emp.model.Employee;
import com.mod.emp.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Path;

@Controller
@RequestMapping("emp")
public class EmpController 
{
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("Emplogin")
    public ModelAndView emplogin()
    {
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/EmpLogin");
   	 return mv;
    }
	
	
    @GetMapping("Empreg")
    public ModelAndView empreg()
    {
 	 ModelAndView mv = new ModelAndView("EmployeeFolder/EmpReg");
 	 return mv;
    }
	@GetMapping("home")
    public ModelAndView demo()
    {
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/EmpIndex");
   	 return mv;
    }
	
	@GetMapping("LeaveReq")
    public ModelAndView leavereq(HttpServletRequest req)
    {
		HttpSession session = req.getSession();
		  int eid = (int) session.getAttribute("eid");
//		  Employee eid = employeeService.ViewEmpById(id);
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/LeaveReq");
   	 mv.addObject("eid",eid);
   	 return mv;
    }
	
	@GetMapping("auth-logout")
    public ModelAndView authlogout(HttpServletRequest req)
    {
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/auth-logout");
   	 logout(req.getSession());
   	 return mv;
    }
	
	@GetMapping("auth-reset-password")
    public ModelAndView authreset(HttpServletRequest req)
    {
		 HttpSession session = req.getSession();
		  String email = (String) session.getAttribute("email");	  
      	 ModelAndView mv = new ModelAndView("EmployeeFolder/auth-reset-password");
     	 mv.addObject("email",email);
   	     return mv;
    }
	@GetMapping("Profile")
    public ModelAndView profile(HttpServletRequest req)
    {
		  HttpSession session = req.getSession();
		  int eid = (int) session.getAttribute("eid");	
		  Employee emp = employeeService.ViewEmpById(eid);
      	 ModelAndView mv = new ModelAndView("EmployeeFolder/Profile");
      	 mv.addObject("emp",emp);
      	 mv.addObject("eid",eid);
     	 return mv;
    }	
	
	@GetMapping("Image")
    public ModelAndView image(HttpServletRequest req)
    {
		  HttpSession session = req.getSession();
		  int eid = (int) session.getAttribute("eid");	
		  Employee emp = employeeService.ViewEmpById(eid);
      	 ModelAndView mv = new ModelAndView("EmployeeFolder/Image");
      	 mv.addObject("emp",emp);
      	 mv.addObject("eid",eid);
     	 return mv;
    }	
	
	@GetMapping("LeaveBalance")
    public ModelAndView leavebal()
    {
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/LeaveBalance");
   	 return mv;
    }
//	@GetMapping("CheckStatus")
//    public ModelAndView checkStatus()
//    {
//   	 ModelAndView mv = new ModelAndView("EmployeeFolder/CheckStatus");
//   	 return mv;
//    }
	
    public ModelAndView logout(HttpSession session) {
        session.invalidate(); // This line will invalidate the session
        ModelAndView mv = new ModelAndView();
        mv.setViewName("EmployeeFolder/EmpLogin"); // You can redirect to your index or login page
        return mv;
    }
	
    @GetMapping("LoginFailed")
    public ModelAndView emploginfail()
    {
   	 ModelAndView mv = new ModelAndView("EmployeeFolder/LoginFail");
   	 return mv;
    }
	
}
