<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LeaveConnect</title>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #A8DADC;
  }
  
  .pending-card {
    background-color: #0B132B;
    color: white;
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }
  
  .back-button {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #6FFFE9;
    color: #0B132B;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .back-button:hover {
    background-color: #6FFFE9;
  }
</style>
<title>Approval Pending</title>
</head>
<body>
  <div class="pending-card">
    <h2>Approval Pending</h2>
    <p>${message}</p>
    <p>Your approval is still pending. Once it's approved, you will be able to log in.</p>
    <button class="back-button" onclick="location.href='Emplogin'">Back to Login</button>
  </div>
</body>
</html>
