<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
  .success-card {
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
<title>Registration Success</title>
</head>
<body>
  <div class="success-card">
    <h2>Logout Successful!</h2>
    <p>You have successfully Logged Out From Your Account</p>
    <button class="back-button" onclick="location.href='/role'">Back to Login</button>
  </div>
</body>
</html>
