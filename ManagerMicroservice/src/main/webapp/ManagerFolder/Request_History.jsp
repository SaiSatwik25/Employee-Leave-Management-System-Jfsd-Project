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
        .card {
            max-width: 300px;
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
            <div class="content-header">
                <h1>Request History</h1>
                <p>View All Approved,Rejected,Pending Leave Requests.</p>
            </div>
            
            
            <div class="cards-container">
    <c:forEach items="${historydata}" var="req">
        <div class="card text-center">
            <div class="card-header">
                Request ID: <c:out value="${req.id}" />
            </div>
            
            <div class="card-body">
                <h5 class="card-title">Title: <c:out value="${req.title}" /></h5>
                <p class="card-text">Reason: <c:out value="${req.reason}" /></p>
                <p class="card-text">Type: <c:out value="${req.type}" /></p>
                <p class="card-text">
                    Start Date: <c:out value="${req.startdate}" />
                    Start Time: <c:out value="${req.starttime}" />
                </p>
                <p class="card-text">
                    End Date: <c:out value="${req.enddate}" />
                    End Time: <c:out value="${req.endtime}" />
                </p>
                <p class="card-text">Days: <c:out value="${req.days}" /></p>
                <p class="card-text">Status: <c:out value="${req.status}" /></p>
                <p class="card-text">Employee ID: <c:out value="${req.empid}" /></p>
                <p class="card-text">Date of Applied: <c:out value="${req.date}" /></p>
            </div>
        </div>
    </c:forEach>
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
