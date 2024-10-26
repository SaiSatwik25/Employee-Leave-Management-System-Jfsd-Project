<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>LeaveConnect</title>

	<!-- Bootstrap CSS-->
	<link rel="stylesheet" href="assets/modules/bootstrap-5.1.3/css/bootstrap.css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- FontAwesome CSS-->
	<link rel="stylesheet" href="assets/modules/fontawesome6.1.1/css/all.css">
	<!-- Boxicons CSS-->
	<link rel="stylesheet" href="assets/modules/boxicons/css/boxicons.min.css">
	<!-- Apexcharts  CSS -->
	<link rel="stylesheet" href="assets/modules/apexcharts/apexcharts.css">
</head>
<body>
  
  <!--Topbar -->
 

	<!--Sidebar-->
	<div class="sidebar transition overlay-scrollbars animate__animated  animate__slideInLeft">
        <div class="sidebar-content"> 
        	<div id="sidebar">
			
			<!-- Logo -->
			<div class="logo">
					<h2 class="mb-0">LeaveConnect</h2>
			</div>

            <ul class="side-menu">
                <li>
					<a href="Mngindex" class="active">
						<i class='bx bxs-dashboard icon' ></i> Dashboard
					</a>
				</li>
				<li>
                    <a href="#">
						<i class='bx bxs-user icon' ></i> 
						Auth 
						<i class='bx bx-chevron-right icon-right' ></i>
					</a>
                    <ul class="side-dropdown">
						<li><a href="auth-logout">Logout</a></li>
                        <li><a href="Profile">View Profile</a></li>
                        <li><a href="resetpwd">Reset Password</a></li>
                    </ul>
                </li>
				<!-- Divider-->
				<li class="divider" data-text="Atrana">Operations</li>
                <li>
                    <a href="ViewLeaveRequests">
						<i class='bx bxs-notepad icon' ></i> 
						View Leave Requests
					</a>                 
                </li>
				
				
                
                <li>
                    <a href="Request_History">
						<i class='bx bx-columns icon' ></i> 
						Request History
					</a>                 
                </li>
        </div>
       </div> 
	 </div>
	</div><!-- End Sidebar-->


	<div class="content-start transition">
		<div class="container-fluid dashboard">
			<div class="content-header">
				<h1>View Requests Forms</h1>
				<p>Submitted Employee Leave Details Yesterday And Today</p>
			</div>
	        <div class="row">

				<div class="container mt-5">
					<h1>All Requests</h1>
					<table class="table">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Designation</th>
      <th style="text-align: center;">View</th>
      <th style="text-align: center;">Actions</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${empdata}" var="emp">
      <tr>
        <td><c:out value="${emp.empid}" /></td>
        <td><c:out value="${emp.name}" /></td>
        <td><c:out value="${emp.designation}" /></td>
        <td style="text-align: center;">
          <a href="view_request_details?empid=${emp.empid}" class="btn btn-primary">View Request Details</a>
        </td>
       <td style="text-align: center;">
          <a href="viewempprofile?empid=${emp.empid}" class="btn btn-primary">View Profile</a>
        </td> 
        
        
      </tr>
    </c:forEach>
  </tbody>
</table>
					
	</div>
				
				
		</div>
		</div>
	</div>

	

	<!-- Footer -->				
	<footer>
		<div class="footer">
			<div class="float-start">
				<p>2023 &copy; All rights Reserved by SDP-Team</p>
			</div>
		</div>
	</footer>


	<!-- Preloader -->
	<div class="loader">
		<div class="spinner-border text-light" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	
	<!-- Loader -->
	<div class="loader-overlay"></div>

	<!-- General JS Scripts -->
	<script src="assets/js/atrana.js"></script>

	<!-- JS Libraies -->
	<script src="assets/modules/jquery/jquery.min.js"></script>
	<script src="assets/modules/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
	<script src="assets/modules/popper/popper.min.js"></script>

	<!-- Chart Js -->
	<script src="assets/modules/apexcharts/apexcharts.js"></script>
	<script src="assets/js/ui-apexcharts.js"></script>

    <!-- Template JS File -->
	<script src="assets/js/script.js"></script>
	<script src="assets/js/custom.js"></script>
 </body>
</html>
