<%@ page contentType="text/html;" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
 
<link type="text/css" rel="stylesheet" href="css/style.css"> 
 
<style> 
<style>
  /* Add styles for the table */
  table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    background-color: #FFA500; /* Orange background color for the table */
    border: 2px solid #FFA500;
  }

  th, td {
    padding: 10px;
    text-align: center;
    border: 1px solid #000;
  }

  /* Style the table header row */
  table tr th {
    background-color: #9400D3; /* Dark violet background color for th */
    color: white;
    font-weight: bold;
  }

  /* Style alternate rows with different background colors */
  table tr:nth-child(even) {
    background-color: #e0e0e0;
  }

  /* Style the "ACTIVE" and "INACTIVE" cells */
  td[bgcolor="green"], td[bgcolor="red"] {
    color: white;
    font-weight: bold;
  }

  /* Style the links for "Active" and "InActive" */
  table a {
    text-decoration: none;
    padding: 5px 10px;
    border: 1px solid transparent;
    border-radius: 4px;
    cursor: pointer;
    margin: 0 5px;
  }

  table a:hover {
    background-color: #0074D9;
    color: white;
  }

  /* Center align the table */
  table {
    margin: 0 auto;
  }

  /* Style the page header */
  h1 {
    text-align: center;
  }

  /* Style the message */
  span.blink {
    color: blue;
    animation: blink 1s linear infinite;
  }

  @keyframes blink {
    0% { opacity: 1; }
    50% { opacity: 0; }
    100% { opacity: 1; }
  }
</style>

</style> 
</head> 
<body   style="background-color:858ae3;
   
    "> 
 
  <script>
    const mobileScreen = window.matchMedia("(max-width: 990px )");
$(document).ready(function () {
    $(".dashboard-nav-dropdown-toggle").click(function () {
        $(this).closest(".dashboard-nav-dropdown")
            .toggleClass("show")
            .find(".dashboard-nav-dropdown")
            .removeClass("show");
        $(this).parent()
            .siblings()
            .removeClass("show");
    });
    $(".menu-toggle").click(function () {
        if (mobileScreen.matches) {
            $(".dashboard-nav").toggleClass("mobile-show");
        } else {
            $(".dashboard").toggleClass("dashboard-compact");
        }
    });
});
 </script>

        <div class='dashboard'>
    <div class="dashboard-nav">
        <header><a href="#!" class="menu-toggle"><i class="fas fa-bars"></i></a><a href="#" class="brand-logo"><i
                class="fas fa-anchor"></i> <span> Leave Management System</span></a></header>
        <nav class="dashboard-nav-list"><a href="addemployee" class="dashboard-nav-item"><i class="fas fa-home"></i> Add Employee</a>
            <a href="addmanager" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i> Add Manager  </a>
            <a href="viewallemployee" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i> View All Employees  </a>
             <a href="viewallmanager" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i> View All Managers  </a>
          <a href="reqhistory" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i> Leave Requests History </a>
          <a href="leavepolicy" class="dashboard-nav-item active"><i class="fas fa-tachometer-alt"></i> Leave policy </a>
          <a  href="logout" class="dashboard-nav-item"><i class="fas fa-sign-out-alt"></i> Logout </a>
        </nav>     
    </div>
    <div style="margin-left: 450px; ">
        <h1 >
          Add Employee
        </h1>
<br>
 
 
<br> 

<span class="blink">
<h3 align=center style="color:blue">${message}</h3>
</span>

 
<h3 align="center"><u>Update Status</u></h3> 
 
<table align=center  border=3>  
<tr bgcolor="black" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>GENDER</td> 
<td>DEPARTMENT</td> 
<td>EMAIL ID</td> 
<td>CONTACT NO</td> 
<td>STATUS</td>
<td>ACTION</td>
</tr> 
 
<c:forEach items="${empdata}"  var="emp"> 
<tr style="color: black"> 
<td><c:out value="${emp.empid}" /></td> 
<td><c:out value="${emp.name}" /></td> 
<td><c:out value="${emp.gender}" /></td> 
<td><c:out value="${emp.dept}" /></td> 
<td><c:out value="${emp.email}" /></td> 
<td><c:out value="${emp.contact}" /></td> 

<c:if test="${emp.status==true}" >
<td bgcolor="green">ACCEPT</td>
</c:if>
<c:if test="${emp.status==false}" >
<td bgcolor="red">REJECT</td>
</c:if>

<td>
<a href='<c:url value="setstatus?empid=${emp.empid}&status=true"></c:url>'><b style="color: green"> ACCEPT</b></a>
<a href='<c:url value="setstatus?empid=${emp.empid}&status=false"></c:url>'><b style="color: red"> REJECT</b></a>
</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>