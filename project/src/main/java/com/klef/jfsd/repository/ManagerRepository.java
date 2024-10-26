package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.model.Employee;
import com.klef.jfsd.model.Manager;

public interface ManagerRepository extends JpaRepository<Manager, Integer>
{

}
