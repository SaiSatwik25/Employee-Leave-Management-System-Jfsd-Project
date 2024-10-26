package com.klef.jfsd.sdp.manager.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.manager.model.Employee;



@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{
	
}