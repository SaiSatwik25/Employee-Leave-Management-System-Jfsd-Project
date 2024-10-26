package com.klef.jfsd.sdp.manager.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.sdp.manager.model.LeaveRequest;

@Repository
public interface LeaveRequestRepository extends CrudRepository<LeaveRequest, Integer> {

	public LeaveRequest findByEmpid(int empid);
	
	  
	  @Query("SELECT lr FROM LeaveRequest lr WHERE lr.status = 'Pending' " +
	  "AND lr.empid = :empid " + "AND lr.date BETWEEN :yesterday AND :today")
	  public List<LeaveRequest> findPendingLeaveRequestsByEmpidAndDate(
	 
	  @Param("empid") int empid,
	  
	  @Param("yesterday") LocalDate yesterday,
	  
	  @Param("today") LocalDate today);
	 

//	@Query("SELECT lr FROM LeaveRequest lr WHERE lr.status = 'Pending' AND lr.empid = :empid AND lr.date = :today")
//	public List<LeaveRequest> findPd(@Param("empid") int empid, @Param("today") LocalDate today);

}