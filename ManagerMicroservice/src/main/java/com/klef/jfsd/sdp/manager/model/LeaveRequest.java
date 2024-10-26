package com.klef.jfsd.sdp.manager.model;

import java.sql.Blob;
import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


import java.sql.Blob;
import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "lreq")
public class LeaveRequest {

  @Id
  @GeneratedValue(strategy =GenerationType.IDENTITY)
    private int id;
  
  @Column(nullable = false)
  private String title;
  
  @Column(nullable = false)
    private String reason;
  
  @Column(nullable = false)
  private String type;
  
  @Column(nullable = false)
    private String startdate;
  
  @Column(nullable = false)
    private String starttime;
  
  @Column(nullable = false)
    private String enddate;
  
  @Column(nullable = false)
    private String endtime;
  
  @Column(nullable = false)
    private String days; // should be calculated at javascript
    
  @Column(nullable = false)
    private String status;
  
  @Column(nullable = false)
  private int empid;
  
  @Column(nullable = false)
  private LocalDate date;
  
  private Blob doc;
  
  

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getReason() {
    return reason;
  }

  public void setReason(String reason) {
    this.reason = reason;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getStartdate() {
    return startdate;
  }

  public void setStartdate(String startdate) {
    this.startdate = startdate;
  }

  public String getStarttime() {
    return starttime;
  }

  public void setStarttime(String starttime) {
    this.starttime = starttime;
  }

  public String getEnddate() {
    return enddate;
  }

  public void setEnddate(String enddate) {
    this.enddate = enddate;
  }

  public String getEndtime() {
    return endtime;
  }

  public void setEndtime(String endtime) {
    this.endtime = endtime;
  }

  public String getDays() {
    return days;
  }

  public void setDays(String days) {
    this.days = days;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public int getEmpid() {
    return empid;
  }

  public void setEmpid(int empid) {
    this.empid = empid;
  }

  public LocalDate getDate() {
    return date;
  }

  public void setDate(LocalDate date) {
    this.date = date;
  }

  public Blob getDoc() {
    return doc;
  }

  public void setDoc(Blob doc) {
    this.doc = doc;
  }


}