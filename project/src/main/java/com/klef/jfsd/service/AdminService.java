package com.klef.jfsd.service;

import java.util.List;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Employee;
import com.klef.jfsd.model.Leavereq;
import com.klef.jfsd.model.Manager;

public interface AdminService
{
	public List<Employee> viewallemps();
	public List<Manager> viewallmanager();
	public Admin checkadminlogin(String auname, String apwd);
	public int updatestatus(boolean status, int empid);
	public int updatemanagerstatus(boolean status, int managerid);
	
	
	public long empcount();
	public long managercount();
	public List<Leavereq> reqhistory();
}
