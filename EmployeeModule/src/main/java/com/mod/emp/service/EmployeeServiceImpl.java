package com.mod.emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.mod.emp.model.Employee;
import com.mod.emp.repository.EmployeeRepository;

import jakarta.mail.internet.MimeMessage;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	
	@Override
	public String addemployee(Employee emp) {
		employeeRepository.save(emp);
		sendConfirmationEmail(emp);
		return "Employee Added Successfully And Email is Sent Sucessfully";
	}

	@Override
	public void sendConfirmationEmail(Employee emp) {
		
		 try {
	            MimeMessage message = javaMailSender.createMimeMessage();
	            MimeMessageHelper helper = new MimeMessageHelper(message, true);
	            helper.setTo(emp.getEmail());
	            helper.setSubject("Registration Successful");
	            helper.setText("Hello " + emp.getName() + ",\n\nYour registration was successful.");
	            javaMailSender.send(message);
	        } catch (Exception e) 
	        {
	            e.printStackTrace();
	        }
		
	}
	
	@Override
	public Employee checkemplogin(String email, String pwd) 
	{
		return employeeRepository.checkemplogin(email, pwd);
	}

	@Override
	public Employee ViewEmpById(int id) {
		return employeeRepository.findById(id).get();
	}

	@Override
	public String ResetPwd(Employee e) {
		Employee emp = employeeRepository.findById(e.getEmpid()).get();    
	    
		emp.setEmpid(e.getEmpid());
	    emp.setName(e.getName());
	    emp.setGender(e.getGender());
	    emp.setDob(e.getDob());
	    emp.setDept(e.getDept());
	    emp.setSalary(e.getSalary());
	    emp.setDesignation(e.getDesignation());
	    emp.setEmail(e.getEmail());
	    emp.setPassword(e.getPassword());
	    emp.setLocation(e.getLocation());
	    emp.setContact(e.getContact());
	    emp.setStatus(e.isStatus());
	    emp.setProfile(e.getProfile());
	    
	    employeeRepository.save(e);
		return null;
	}
	
	@Override
	public String UpdateProfile(Employee e) {
		Employee emp = employeeRepository.findById(e.getEmpid()).get();    
	    
		emp.setEmpid(e.getEmpid());
	    emp.setName(e.getName());
	    emp.setGender(e.getGender());
	    emp.setDob(e.getDob());
	    emp.setDept(e.getDept());
	    emp.setSalary(e.getSalary());
	    emp.setDesignation(e.getDesignation());
	    emp.setEmail(e.getEmail());
	    emp.setPassword(e.getPassword());
	    emp.setLocation(e.getLocation());
	    emp.setContact(e.getContact());
	    emp.setStatus(e.isStatus());
	    emp.setProfile(e.getProfile());
	    
	    employeeRepository.save(e);
		return null;
	}

	@Override
	public String deleteAcc(int e) {
		
		employeeRepository.deleteById(e);
		return "EmployeeDeletedSucessfully";
	}
	

}
