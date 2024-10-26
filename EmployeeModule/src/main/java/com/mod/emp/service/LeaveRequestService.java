package com.mod.emp.service;

import java.util.List;

import com.mod.emp.model.LeaveRequest;

public interface LeaveRequestService {
	
	public String addForm(LeaveRequest form);
	public LeaveRequest ViewById(int id);
	public List<LeaveRequest> ViewLeaveReqs(int id);
	public void sendEmail(LeaveRequest lf);
}
