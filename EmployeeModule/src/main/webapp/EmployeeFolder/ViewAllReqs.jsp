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
    <script >
    function filterTable() {
        var input, filter, table, tr, td, i, j, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

        for (i = 0; i < tr.length; i++) {
            var display = false;
            td = tr[i].getElementsByTagName("td");
            for (j = 0; j < td.length; j++) {
                if (td[j]) {
                    txtValue = td[j].textContent || td[j].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        display = true;
                        break;
                    }
                }
            }
            tr[i].style.display = display ? "" : "none";
        }
    }
    </script>

    <div class="content-start transition">
        <div class="container-fluid dashboard">
          <div class="content-header">
            <h1>View Submitted Leave Requests</h1>
            <p>View submitted leave request forms.</p>
          </div>
          
          <div class="container mt-4">
            <div class="row">
              <div class="col-md-12">
                <h2 class="mb-4">Search </h2>
                <input type="text" id="myInput" onkeyup="filterTable()" class="form-control mr-2" placeholder="Search....">
                 <br>
                   
				<table class="table table-bordered" id="myTable">
  <thead>
    <tr>
      <th>Title</th>
      <th>Reason</th>
      <th>Leave Type</th>
      <th>Start Date</th>
      <th>End Date</th>
      <th>Number of Days</th>
      <th>Document</th>
      <th>Status of Request</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="request" items="${data}">
      <tr>
        <td>${request.title}</td>
        <td>${request.reason}</td>
        <td>${request.type}</td>
        <td>${request.startdate} ${request.starttime}</td>
        <td>${request.enddate} ${request.endtime}</td>
        <td>${request.days}</td>
        <td>
  <a href='SupportingDocument?id=${request.id}' target="_blank">
    View PDF
  </a>
</td>

        <td>
          <c:choose>
            <c:when test="${request.status == 'Approved'}">
              <span class="badge badge-success">Approved</span>
            </c:when>
            <c:when test="${request.status == 'Pending'}">
              <span class="badge badge-warning">Pending</span>
            </c:when>
            <c:when test="${request.status == 'Rejected'}">
              <span class="badge badge-danger">Rejected</span>
            </c:when>
          </c:choose>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>

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
