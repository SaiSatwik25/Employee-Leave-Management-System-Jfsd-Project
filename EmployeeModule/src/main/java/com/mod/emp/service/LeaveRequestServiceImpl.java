package com.mod.emp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.mod.emp.model.Employee;
import com.mod.emp.model.LeaveRequest;
import com.mod.emp.repository.EmployeeRepository;
import com.mod.emp.repository.LeaveRequestRepository;

import jakarta.mail.internet.MimeMessage;

@Service
public class LeaveRequestServiceImpl implements LeaveRequestService{
	
	    @Autowired
	    private EmployeeService employeeService;
	
	    @Autowired
	    private JavaMailSender javaMailSender;
	    
	    @Autowired
		private LeaveRequestRepository leaveRequestRepository;
		
		@Override
		public String addForm(LeaveRequest form) {
			 leaveRequestRepository.save(form);
			 sendEmail(form);
			 return "LeaveForm";
		}
		
		public void sendEmail(LeaveRequest lf) {
		    // Get employee details
		    Employee emp = employeeService.ViewEmpById(lf.getEmpid());
		    
		    // Extract date and time values
		    String d1 = lf.getStartdate();
		    String t1 = lf.getStarttime();
		    String d2 = lf.getEnddate();
		    String t2 = lf.getEndtime();

		    // Prepare email content
		    String msg = "Hello " + emp.getName();
		    String txt = "Your Leave Application Details:";

		    try {
		        MimeMessage message = javaMailSender.createMimeMessage();
		        MimeMessageHelper helper = new MimeMessageHelper(message, true);
		        helper.setTo(emp.getEmail());
		        helper.setSubject("Leave Application Successful");
		        helper.setText(
		            msg + "\n\n" + txt + "\n\n\n" +
		            "Subject: " + lf.getTitle() + "\n" +
		            "Dated From: " + d1+" "+t1 + " To " + d2+" "+t2+ "\n" +
		            "Reason: " + lf.getReason() + "\n" +
		            "Total Leave Days: " + lf.getDays() + " days" + "\n" +
		            "Your application was successfully submitted." + "\n\n" +
		            "We'll get back to you in a few days"
		        );
		        javaMailSender.send(message);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}

		@Override
		public LeaveRequest ViewById(int id) {
			
			return leaveRequestRepository.findById(id).get();
		}

		@Override
		public List<LeaveRequest> ViewLeaveReqs(int id) {
			
			return leaveRequestRepository.findByEmpid(id);
		}


}
