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
	<style>
	/* Add this to your style.css or a custom CSS file */
	#timeTaken.readonly-dark-bg {
    background-color: #1B2B65; /* Change this color to your desired dark background color */
    color: #fff !important; /* Change this color to your desired text color */
}
#empId.readonly-dark-bg {
    background-color: #1B2B65; /* Change this color to your desired dark background color */
    color: #fff !important;
    text-align: center; /* Change this color to your desired text color */
}
/* Add this to your style.css or a custom CSS file */
.empid-container {
    text-align: center; /* Center the content */
}


.empid-input {
    width: 50%; /* Adjust the width as needed */
    margin: 0 auto; /* Center the input within its container */
}
/* Add this to your style.css or a custom CSS file */
.date-input,
.time-input {
    width: 48%; /* Adjust the width as needed */
    display: inline-block; /* Display the inputs inline */
    margin-right: 2%; /* Add spacing between date and time inputs */
}

/* Clear the margin-right for the last input in each row */
.date-input:last-child,
.time-input:last-child {
    margin-right: 0;
}
/* Add this to your style.css or a custom CSS file */
.row {
    margin-bottom: 10px;
	margin-left: 30px; /* Add some vertical spacing between rows */
}

.col {
    width: 48%; /* Reduce the column width to 48% to make them side by side */
    display: inline-block;
	margin-left: -128px;
}

/* Clear the margin-right for the last column in each row */
.col:last-child {
    margin-right: 0;
}

</style>
</head>
<body>
  
  <!--Topbar -->
 

	<!--Sidebar-->
	
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


	<div class="content-start transition">
		<div class="container-fluid dashboard">
			<div class="content-header">
				<h1>Leave Request Form</h1>
				<p>Submit your leave request using the form below.</p>
			</div>
		</div> 
			<div class="row">
				<center>
				<div class="col-12 col-md-6 col-lg-6">
					<div class="card" style="text-align: left;">
						<form method="post" action="submitform"  id="leaveForm" enctype="multipart/form-data" class="needs-validation" novalidate>
							<div class="card-header">
								<h4>Leave Request</h4>
							</div>
							<div class="card-body">
								<div class="mb-3 empid-container">
									<label for="empId">Employee ID</label>
									<input type="text" class="form-control empid-input readonly-dark-bg" id="empId" name="empId" value="${eid}" required readonly>
									<div class="invalid-feedback">
										Please provide your Employee ID.
									</div>
								</div>
								
								<div class="mb-3">
									<label for="title">Title</label>
									<input type="text" class="form-control" id="title" name="title" required>
									<div class="invalid-feedback">
										Please provide a title.
									</div>
								</div>
								
								<div class="mb-3">
									<label for="reason">Reason for Leave</label>
									<textarea class="form-control" id="reason" name="reason" rows="3" required></textarea>
									<div class="invalid-feedback">
										Please provide a reason for your leave.
									</div>
								</div>
								
								<div class="mb-3">
									<label for="leaveType">Leave Type</label>
									<select class="form-select" id="leaveType" name="leaveType" required>
										<option value="">Select Leave Type</option>
										<option value="sick">Sick Leave</option>
										<option value="vacation">Vacation</option>
										<option value="Maternity">Maternity Leave</option>
										<option value="Personal Leave">Personal Leave</option>
										<option value="Bereavement">Bereavement Leave</option>
										<!-- Add more options as needed -->
									</select>
									<div class="invalid-feedback">
										Please select a leave type.
									</div>
								</div>
								<!-- Add these input fields for start and end dates with times -->
								<div class="mb-3 row">
									<div class="col-lg-9">
										<label for="startDate">Start Date</label>
										<br>
										<input type="date" class="form-control date-input" id="startDate" name="startDate" required>
									</div>
									<div class="col">
										<label for="startTime">Start Time</label>
										<br>
										<input type="time" class="form-control time-input" id="startTime" name="startTime" required>
									</div>
								</div>
								
								<div class="mb-3 row">
									<div class="col-lg-9">
										<label for="endDate">End Date</label>
										<br>
										<input type="date" class="form-control date-input" id="endDate" name="endDate" required>
									</div>
									<div class="col">
										<label for="endTime">End Time</label>
										<br>
										<input type="time" class="form-control time-input" id="endTime" name="endTime" required>
									</div>
								</div>
								
								
<div class="mb-3">   
    <input type="text" class="form-control" id="numOfDays" name="numOfDays" readonly hidden>
</div>
<div class="mb-3">
    <label for="numOfDays">Number of Days</label>
    <input type="text" class="form-control readonly-dark-bg" id="timeTaken" name="timeTaken" readonly>
</div>

								<div class="mb-3">
									<label for="fileUpload">Supporting Document (Only PDF is Accepted)</label>
									<input type="file" class="form-control" id="fileUpload" name="fileUpload">
								</div>
							</div>
							<div class="card-footer text-right">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			
			</center>
		</div>
		</div>
	</div>



	
	<script>
		function calculateTotalDaysAndTime() {
			const startDate = new Date(document.getElementById("startDate").value);
			const startTime = document.getElementById("startTime").value;
			const endDate = new Date(document.getElementById("endDate").value);
			const endTime = document.getElementById("endTime").value;
		
			// Combine date and time for start and end
			const startDateTime = new Date(startDate.toDateString() + " " + startTime);
			const endDateTime = new Date(endDate.toDateString() + " " + endTime);
		
			const timeDifference = endDateTime - startDateTime;
			const totalDays = Math.floor(timeDifference / (1000 * 60 * 60 * 24)); // Calculate days
			const totalHours = Math.floor((timeDifference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); // Calculate hours
			const totalMinutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60)); // Calculate minutes
		
			document.getElementById("numOfDays").value = totalDays;
			document.getElementById("timeTaken").value = totalDays + " days " + totalHours + " hours " + totalMinutes + " minutes";
		}
		
		document.getElementById("startDate").addEventListener("change", calculateTotalDaysAndTime);
		document.getElementById("endDate").addEventListener("change", calculateTotalDaysAndTime);
		document.getElementById("startTime").addEventListener("change", calculateTotalDaysAndTime);
		document.getElementById("endTime").addEventListener("change", calculateTotalDaysAndTime);
		</script>
		
		
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
