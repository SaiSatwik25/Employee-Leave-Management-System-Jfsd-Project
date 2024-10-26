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
                <h1>Employee Leave Details</h1>
                <p>Submitted Employee Leave Details Yesterday And Today</p>
            </div>
            
            
            <div class="cards-container">
                <!-- Loop through your leave request data -->
                <c:forEach items="${lreq}" var="lr">
                    <div class="card text-center">
                       <div class="card-header">
        <!-- Profile Photo (Gravatar Avatar) -->
        <img src="data:image/jpeg;base64,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" alt="Profile Photo" class="card-profile-photo">
    </div>
                        <div class="card-body">
                            <h5 class="card-title">Type of Leave: ${lr.type}</h5>
                            <p class="card-text">Reason: ${lr.reason}</p>
                            <p class="card-text">From: ${lr.startdate} ${lr.starttime} to ${lr.enddate} ${lr.endtime}</p>
                            <p class="card-text">Duration: ${lr.days} days</p>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <p class="mb-0">Remaining Leaves: 10 days</p>
                                </div>
                                <div class="col">
                                    <a href='<c:url value="setleavestatus?empid=${lr.empid}&status=Approved&lrid=${lr.id}"></c:url>'><button class="btn btn-success float-left">Approve</button></a>
                                    <a href='<c:url value="setleavestatus?empid=${lr.empid}&status=Rejected&lrid=${lr.id}"></c:url>'><button class="btn btn-danger float-right">Reject</button></a>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
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
