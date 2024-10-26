package com.mod.emp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.mod.emp.model.LeaveRequest;

public interface LeaveRequestRepository extends CrudRepository<LeaveRequest, Integer>{

	 List<LeaveRequest> findByEmpid(int empid);
	 
}
