package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.model.*;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{

}
