package com.klef.jfsd.sdp.manager.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.manager.model.Manager;

import jakarta.transaction.Transactional;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>
{
	@Query("select m from Manager m where email=?1 and password=?2")
	public Manager checkmnlogin(String email,String pwd);
	
	
	@Query("update LeaveRequest set status=?2 where empid=?1 and id=?3")
	@Modifying
	@Transactional
	public int updateleavestatus(int empid, String status,int id);
	
	

}
