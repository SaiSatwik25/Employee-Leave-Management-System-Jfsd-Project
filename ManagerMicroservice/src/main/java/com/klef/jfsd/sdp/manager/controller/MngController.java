package com.klef.jfsd.sdp.manager.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.manager.model.Employee;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;
import com.klef.jfsd.sdp.manager.model.Manager;
import com.klef.jfsd.sdp.manager.repositories.LeaveRequestRepository;
import com.klef.jfsd.sdp.manager.service.ManagerService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("mng")
public class MngController {

	@Autowired
	private ManagerService managerService;

	// INSERT MANAGER
	@PostMapping("insertmanager")
	public ModelAndView insertaction(HttpServletRequest request, HttpServletResponse response) {
		String msg = null;
		ModelAndView mv = new ModelAndView();
		try {
			String mnid = request.getParameter("id");
			int id = Integer.parseInt(mnid);
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
			String status = request.getParameter("status");

			Manager mn = new Manager();
			mn.setMngid(id);
			mn.setName(name);
			mn.setGender(gender);
			mn.setDob(dob);
			mn.setDept(dept);
			mn.setSalary(salary);
			mn.setDesignation(desg);
			mn.setEmail(email);
			mn.setPassword(pwd);
			mn.setLocation(location);
			mn.setContact(contact);
			mn.setStatus(false);
			msg = managerService.addManager(mn);
			mv.setViewName("ManagerFolder/reg-success");

		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("ManagerFolder/displayerror");
			mv.addObject("message", msg);
		}
		return mv;
	}

	// CHECK MANAGERLOGIN
	@PostMapping("checkmnglogin")
	public ModelAndView checkmnglogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");

		Manager mn = managerService.checkmnlogin(email, pwd);
		System.out.println(mn == null);
		if (mn != null) {
			// SESSION

			HttpSession session = request.getSession();
            System.out.println("/n/n/n/n/n/n/n/n/n/n session is created /n/n/n/n/n/n/n");
			session.setAttribute("mngid", mn.getMngid());
			session.setAttribute("ename", mn.getName());
			session.setAttribute("email", mn.getEmail());
			

			// SESSION
			mv.setViewName("ManagerFolder/Mngindex");
		} else {
			mv.setViewName("ManagerFolder/Mnglogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("ViewLeaveRequests")
	public ModelAndView viewemps() {
		List<Employee> emplist = managerService.viewallemps();
		for (Employee employee : emplist) {
			System.out.println(employee.getEmpid());

		}
		ModelAndView mv = new ModelAndView("ManagerFolder/ViewLeaveRequests");
		mv.addObject("empdata", emplist);
		return mv;
	}

	@GetMapping("view_request_details")
	public ModelAndView view_request_details(@RequestParam("empid") int id) {
		List<LeaveRequest> lr = managerService.findPendingLeaveRequestsByEmpidAndDate(id);
		ModelAndView mv = new ModelAndView("ManagerFolder/view_request_details");

		for (LeaveRequest leaveRequest : lr) {
			System.out.println(leaveRequest.getTitle());
			System.out.println(leaveRequest.getId());
		}
		mv.addObject("lreq", lr);
		return mv;
	}

	@GetMapping("viewempprofile")
	public ModelAndView viewempprofile(@RequestParam("empid") int eid) {
		Employee lr = managerService.viewempbyid(eid);
		ModelAndView mv = new ModelAndView("ManagerFolder/viewempprofile");
		mv.addObject("employee", lr);
		return mv;
	}

	

	  
	  @GetMapping("resetpwd")
		public ModelAndView resetpwd(HttpServletRequest request)
		{
		  HttpSession session = request.getSession();
		  String email = (String) session.getAttribute("email");
        System.out.println(email);
//        int id = (int) session.getAttribute("mngid");
//        System.out.println(id);
        
			ModelAndView mv=new ModelAndView();
			mv.setViewName("ManagerFolder/resetpwd");
			mv.addObject("email", email);
			return mv;
		}
	  
	
	
	@PostMapping("update")
	public ModelAndView updateaction(HttpServletRequest request) {
		String msg = null;

		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		mv.addObject("mngid", session.getAttribute("mngid"));
		mv.addObject("ename", session.getAttribute("ename"));

		int id = (int) session.getAttribute("mngid");
		String email= (String) session.getAttribute("email");
		System.out.println(email);
        
		
		Manager m = managerService.viewmngbyid(id);
		try {
			String pwd = request.getParameter("pwd");
			
			Manager mn = new Manager();
			mn.setMngid(m.getMngid());
			mn.setName(m.getName());
			mn.setGender(m.getGender());
			mn.setDob(m.getDob());
			mn.setDept(m.getDept());
			mn.setSalary(m.getSalary());
			mn.setDesignation(m.getDesignation());
			mn.setEmail(m.getEmail());
			mn.setPassword(pwd);
			mn.setLocation(m.getLocation());
			mn.setContact(m.getContact());
			mn.setStatus(m.isStatus());
			mn.setProfile(m.getProfile());

			msg = managerService.ResetPwd(mn);

			mv.setViewName("ManagerFolder/Mngindex");
			mv.addObject("message", msg);

		} catch (Exception exp) {
			msg = exp.getMessage();

			mv.setViewName("updateerror");
			mv.addObject("message", msg);
		}
		return mv;

	}

	

	
	@GetMapping("setleavestatus")
	public ModelAndView setleavestatus(
	    @RequestParam("empid") int empid,
	    @RequestParam("status") String status,
	    @RequestParam("lrid") int lrid) {
	    int n = managerService.updateleavestatus(empid, status, lrid);
	    ModelAndView mv = new ModelAndView();

	    if (n > 0) {
	        List<LeaveRequest> lr = managerService.findPendingLeaveRequestsByEmpidAndDate(empid);
	        mv.addObject("lrdata", lr);
	        mv.setViewName("redirect:http://localhost:4949/mng/view_request_details?empid=" + empid);
	    }
	    else
	    {
	        mv.setViewName("redirect:http://localhost:4949/mng/view_request_details?empid=" + empid);
	    }

	    return mv;
	}
	
	
	@GetMapping("Profile")
    public ModelAndView profile(HttpServletRequest req)
    {
      HttpSession session = req.getSession();
      int mngid = (int) session.getAttribute("mngid");  
      Manager mn = managerService.viewmngbyid(mngid);
         ModelAndView mv = new ModelAndView("ManagerFolder/Profile");
         mv.addObject("mng",mn);
         mv.addObject("mngid",mngid);
        return mv;
    }

	
	
	
	
	
	
	
	
	@PostMapping("updateprofile")
    public ModelAndView updateprofile(HttpServletRequest request)
    {
    
    //,@RequestParam("fileUpload") MultipartFile file) throws IOException, SerialException, SQLException
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      
        HttpSession session = request.getSession();
      
      mv.addObject("mngid", session.getAttribute("mngid"));
      mv.addObject("name", session.getAttribute("name"));
      
      int id = (int) session.getAttribute("mngid");
      
      Manager m = managerService.viewmngbyid(id);
      
     try
     {
       String mngid = request.getParameter("id");
      int eid = Integer.parseInt(mngid);
      String name = request.getParameter("name");
        String dept = request.getParameter("department");
        String desg = request.getParameter("Designation");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        
        Manager mng = new Manager();
        mng.setMngid(eid);
        mng.setName(name);
        mng.setGender(m.getGender());
        mng.setDob(m.getDob());
        mng.setDept(dept);
        mng.setDesignation(desg);
        mng.setSalary(m.getSalary());
        mng.setEmail(m.getEmail());
        mng.setPassword(m.getPassword());
        mng.setLocation(m.getLocation());
        mng.setContact(contact);
        mng.setProfile(m.getProfile());
        mng.setStatus(m.isStatus());
        
        managerService.UpdateProfile(mng);
                
        mv.setViewName("ManagerFolder/Profile");
        mv.addObject("mng",mng);
       
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
    String s = managerService.deleteAcc(id);
     ModelAndView mv = new ModelAndView("redirect:/mng/Mngreg");              
        return mv;
    }
  
  
  
  
  @GetMapping("Request_History")
  public ModelAndView reqhistory()
  {
    List<LeaveRequest> lq = managerService.reqhistory();
    ModelAndView mv= new ModelAndView("ManagerFolder/Request_History");
    mv.addObject("historydata", lq);
    return mv;
    
  }
}

