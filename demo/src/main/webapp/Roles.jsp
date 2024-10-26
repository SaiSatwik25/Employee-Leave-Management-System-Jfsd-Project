<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Choose Your Role</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #0B132B;
  }
  
  .role-container {
    display: flex;
    justify-content: center;
    align-items: center;
  
  }
  
  
  .role-card {
    width: 200px;
    height: 300px;
    margin: 10px;
    padding: 20px;
    text-align: center;
    color: white;
    border-radius: 10px;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    transition: transform 0.3s ease;
  }
  
  .role-card:hover {
    transform: scale(1.1);
  }
  
  .admin {
    background-color: #1C2541;
  }
  
  .employee {
    background-color: #3A506B;
  }
  
  .manager {
    background-color: #5BC0BE;
  }
  
  .role-icon {
    font-size: 48px;
  }
  
  .role-name {
    font-size: 24px;
    margin-top: 10px;
  }
  
  .choose-button {
    background-color: #f1faee;
    color: #0B132B;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  .ch {
    background-color: #000000;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  
  .choose-button:hover {
    background-color: #a8dadc;
  }
  .card {
    width: 80%; /* You can adjust the width as needed */
    background-color: #A8DADC;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 0 auto;
  }
</style>
</head>
<body>
 
<div class="role-container card">
    <h2>Choose Your Desired Role <br><strong>&</strong><br>Sign In<br><br>   <a href="index"><button class="ch">BACK TO HOME</button></a></h2>
    <br><br>
  
  <div class="role-card admin">
    <i class="fas fa-crown role-icon"></i>
    <div class="role-name">Admin</div>
    <a href="/admin/Adminlogin"><button class="choose-button">Choose</button></a>
  </div>
  
  <div class="role-card employee">
    <i class="fas fa-user-tie role-icon"></i>
    <div class="role-name">Employee</div>
    <a href="/emp/Emplogin"><button class="choose-button">Choose</button></a>
  </div>
  
  <div class="role-card manager">
    <i class="fas fa-users role-icon"></i>
    <div class="role-name">HR/Manager</div>
    <a href="/mng/Mnglogin"><button class="choose-button">Choose</button></a>
  </div>
</div>
</body>
</html>
