package com.mod.emp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mod.emp.model.Manager;

public interface ManagerRepository extends JpaRepository<Manager, Integer>{

}
