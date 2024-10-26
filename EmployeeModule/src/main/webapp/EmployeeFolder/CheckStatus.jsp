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


    <div class="content-start transition">
        <div class="container-fluid dashboard">
          <div class="content-header">
            <h1>Leave Request History</h1>
            <p>View and edit your submitted leave request forms.</p>
          </div>
          
          <div class="container mt-4">
            <div class="row">
              <div class="col-md-12">
                
                <!-- Add the search fields -->
<form class="form-inline mb-3">
  <label for="searchDate" class="mr-2">Search by Date:</label>
  <input type="date" id="searchDate" class="form-control mr-2">
  <label for="searchTitle" class="mr-2">Search by Title:</label>
  <input type="text" id="searchTitle" class="form-control mr-2">
  <label for="searchType" class="mr-2">Search by Type of Leave:</label>
  <select id="searchType" class="form-control mr-2">
    <option value="vacation">Vacation</option>
    <option value="sick">Sick Leave</option>
    <option value="Maternity">Maternity Leave</option>
										<option value="Personal Leave">Personal Leave</option>
										<option value="Bereavement">Bereavement Leave</option>
    <!-- Add more options for other types of leave -->
  </select>
  <button type="button" class="btn btn-primary" id="searchButton">Search</button>
</form>

<!-- Table for Requests -->
<h3>Requests</h3>
<table class="table table-bordered">
  <thead>
    <tr>
      <th>Date Generated</th>
      <th>Days of Vacation</th>
      <th>Status of Request</th>
      <th>Title</th>
      <th>Type of Leave</th>
      <th>Dates</th>
    </tr>
  </thead>
  <tbody>
 <c:forEach var="request" items="${data}">
      <tr>
        <td>${request.date}</td>
        <td>${request.days}</td>
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
        <td>${request.title}</td>
        <td>${request.type}</td>
 <td>${request.startdate} ${request.starttime} to
${request.enddate} ${request.endtime}</td> 
      </tr>
    </c:forEach>
  </tbody>
</table>

        </div>
      </div>	
      </div>
      </div>
      </div>
  <script>
  document.getElementById("searchButton").addEventListener("click", function () {
      searchRequests();
  });

  function searchRequests() {
      var searchDate = document.getElementById("searchDate").value;
      var searchTitle = document.getElementById("searchTitle").value.toLowerCase(); // Convert to lowercase for case-insensitive search
      var searchType = document.getElementById("searchType").value;

      var table = document.querySelector("table tbody");
      var rows = table.getElementsByTagName("tr");

      for (var i = 0; i < rows.length; i++) {
          var row = rows[i];
          var cells = row.getElementsByTagName("td");

          var dateGenerated = cells[0].textContent;
          var title = cells[3].textContent.toLowerCase(); // Convert to lowercase for case-insensitive search
          var type = cells[4].textContent;

          var dateMatch = searchDate === "" || dateGenerated === searchDate;
          var titleMatch = searchTitle === "" || title.includes(searchTitle);
          var typeMatch = searchType === "" || type === searchType;

          if (dateMatch && titleMatch && typeMatch) {
              row.style.display = "";
          } else {
              row.style.display = "none";
          }
      }
  }
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
