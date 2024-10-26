<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>LeaveConnect</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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
            <h1>Leave Balance Counts</h1>
            <p>Check Your Leave Balances</p>
          </div>
          
          <style>
            /* Additional CSS styles for larger numbers in the balance boxes */
            .balance-number {
              font-size: 36px; /* Adjust the font size as needed */
              color: #333; /* Dark color */
            }
          </style>
          
          <div class="container mt-4">
            <div class="row">
              <div class="col-md-4">
                <!-- Box for Total Balances -->
                <div class="content-box text-center">
                  <h4>Total Balances Remaining</h4>
                  <p class="balance-number">14</p> <!-- Display balance number -->
                </div>
              </div>
              <br>
              <div class="col-md-4">
                <!-- Box for Total Applied This Month -->
                <div class="content-box text-center">
                  <h4>Total Applied This Month</h4>
                  <p class="balance-number">6</p> <!-- Display balance number -->
                </div>
              </div>
              <br>
              <div class="col-md-4">
                <!-- Box for Total Applied Last Month -->
                <div class="content-box text-center">
                  <h4>Total Applied Last Month</h4>
                  <p class="balance-number">14</p> <!-- Display balance number -->
                </div>
              </div>
            </div>
          <!--  <div class="row mt-4">
              <h4 style="margin-left: 410px; margin-top: 30px;">Search by Type</h4>
              <div style="margin-left: 380px; margin-top: 20px;"  class="col-md-3">
 
                <div class="content-box text-center">
                 
                  <div class="form-group">
                    <label for="leaveType">Select Leave Type</label>
                    <select class="form-control" id="leaveType">
                      <option value="vacation">Vacation</option>
                      <option value="sick">Sick Leave</option>
                      <option value="personal">Personal Leave</option>
                   
                    </select>
                  </div>
                  <button class="btn btn-primary mt-2">Search</button>
                </div>
              </div> -->
            </div>
          </div>
          
          
        
          <script>
            document.getElementById("searchButton").addEventListener("click", function() {
              // Get the selected date from the input field
              const searchDate = document.getElementById("searchDate").value;
        
              // Here, you can use JavaScript to filter and populate the table rows based on the search date
              // For demonstration purposes, I'll add a placeholder row
        
              const tableBody = document.getElementById("tableBody");
              tableBody.innerHTML = `
                <tr>
                  <td>${searchDate}</td>
                  <td>5</td>
                  <td><span class="badge badge-warning">Pending</span></td>
                </tr>
              `;
            });
          </script>
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
