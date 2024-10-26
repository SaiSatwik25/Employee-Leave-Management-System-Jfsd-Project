package com.mod.emp.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mod.emp.model.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer>
{
	@Query("select e from Employee e where email=?1 and password=?2 and status=true")
	public Employee checkemplogin(String email,String pwd);
	
	
}
