<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
					<a href="home" class="active">
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
                        <li><a href="auth-reset-password">Reset Password</a></li>
                    </ul>
                </li>
				<!-- Divider-->
                <li class="divider" data-text="Atrana">Operations</li>
                <li>
                    <a href="LeaveReq">
						<i class='bx bxs-notepad icon' ></i> 
						Leave Request Form
					</a>                 
                </li>
				<li>
                    <a href="ViewAllReqs">
						<i class='bx bx-columns icon' ></i> 
						View All Submitted Forms
					</a>                 
                </li>
				<li>
                    <a href="LeaveBalance">
						<i class='bx bx-columns icon' ></i> 
						Leave Balances
					</a>                 
                </li>
				<li>
                    <a href="CheckStatus">
						<i class='bx bxs-bar-chart-alt-2 icon' ></i> 
						Check Form Status
					</a>                 
                </li>
        </div>
       </div> 
	 </div>
	</div><!-- End Sidebar-->


	<div class="sidebar-overlay"></div>


	<!--Content Start-->
	<div class="content-start transition">
		<div class="container-fluid dashboard">
			<div class="content-header">
				<h1>Dashboard</h1>
				<p></p>
			</div>
			<div class="row">

				<div class="col-md-6 col-lg-3">
					<div class="card">
						<div class="card-body">
							<div class="row">
							
								<div class="col-8">
									<p>Total Leaves</p>
									<h5>24</h5>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card">
						<div class="card-body">
							<div class="row">
								
								<div class="col-8">
									<p>Leaves Available</p>
									<h5>22</h5>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card">
						<div class="card-body">
							<div class="row">
								
								<div class="col-8">
									<p>Leaves Taken</p>
								<h5>2</h5>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card">
						<div class="card-body">
							<div class="row">
								
								<div class="col-8">
									<p>Used This Month</p>
									<h5>0</h5>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-xl-4 col-md-6 col-sm-12">
					<div class="card">
						<div class="card-content">
							<div class="card-body">
								<h4 class="card-title">Leave Request Submission</h4>
								<p class="card-text">
									You can submit leave requests through the portal. They can select the type of leave (sick, vacation, personal, etc.), specify the dates, and provide a reason for the leave. This digital submission eliminates the need for physical forms and streamlines the entire leave request process.
								</p>
							</div>
							<img class="img-fluid w-100" src="assets/images/Placeholder-pana.png" alt="Card image cap">
						</div>
						<div class="card-footer d-flex justify-content-between">
							<span>Card Footer</span>
						<a href="leave_req.html">	<button class="btn btn-light-primary">See How</button></a>
						</div>
					</div>
		   </div>
		   <div class="col-md-4 col-sm-12">
			<div class="card">
				<div class="card-content">
					<img class="card-img-top img-fluid" src="assets/images/Privacy policy-pana.png" alt="Card image cap"
						style="height: 20rem" />
					<div class="card-body">
						<h4 class="card-title">View All Submitted Requests</h4>
						<p class="card-text">
							After an employee submits a leave request, it is automatically routed to their respective manager for approval. The manager can review the request, check team availability, and make an informed decision. Automated notifications are sent to both the employee and the manager, keeping them updated about the status of the request.
						</p>
						<button class="btn btn-primary block">View Forms</button>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-4 col-sm-12">
			<div class="card">
				<div class="card-content">
					<div class="card-body">
						<h4 class="card-title">Leave History</h4>
						<p class="card-text">
							You Can easily Track the leave history Based on Date or other attributes to ensure that you find all the requests at one place.
						</p>
					
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
					<img class="card-img-bottom img-fluid" src="assets/images/Task-rafiki.png"
						alt="Card image cap" style="height: 20rem; object-fit: cover;">
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
