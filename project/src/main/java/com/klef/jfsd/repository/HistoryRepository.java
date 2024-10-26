package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Leavereq;


@Repository
public interface HistoryRepository extends JpaRepository<Leavereq, Integer>
{

}
