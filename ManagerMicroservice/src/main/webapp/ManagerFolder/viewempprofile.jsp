<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LeaveConnect</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/modules/bootstrap-5.1.3/css/bootstrap.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="assets/modules/fontawesome6.1.1/css/all.css">
    <!-- Boxicons CSS -->
    <link rel="stylesheet" href="assets/modules/boxicons/css/boxicons.min.css">
    <!-- Apexcharts CSS -->
    <link rel="stylesheet" href="assets/modules/apexcharts/apexcharts.css">
    <!-- Custom CSS for inline flex -->
    <style>
        .cards-container {
            display: inline-flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        ..card {
    width: 300px; /* Adjust the width of your card as needed */
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
    </style>
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
           <!--  <div class="content-header">
                <h1>Employee Leave Details</h1>
                <p>Submitted Employee Leave Details Yesterday And Today</p>
            </div> -->
            <div class="container">
        <h1>Employee Profile</h1>
        <br>
        <div class="row" align="center" style="margin-left: 100px;">
            
                <div class="col-md-7" align="center" style="width:930px">
                
                    <div class="card mb-4" align="center" style="width:930px">
<%--                         <img src="data:image/jpeg;base64,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"card-img-top" alt="Profile Image">
 --%>                     <div class="card-body" style="display: flex;">
              
                          <img  width="300px" height="300px" src="data:image/jpeg;base64,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" alt="Profile Photo" class="card-profile-photo">
                       
                           <div style="margin-left: 130px">
                            <h5 class="card-title">${employee.name}</h5>
                            <p class="card-text">Employee ID: ${employee.empid}</p>
                            <p class="card-text">Gender: ${employee.gender}</p>
                            <p class="card-text">Date of Birth: ${employee.dob}</p>
                            <p class="card-text">Department: ${employee.dept}</p>
                            <p class="card-text">Designation: ${employee.designation}</p>
                            <p class="card-text">Salary: $${employee.salary}</p>
                            <p class="card-text">Location: ${employee.location}</p>
                            <p class="card-text">Email: ${employee.email}</p>
                            <p class="card-text">Contact: ${employee.contact}</p>
                            <p class="card-text">Status: ${employee.status}</p>
                            </div>
                        </div>
                    </div>
                </div>
            
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
    <!-- JS Libraries -->
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
