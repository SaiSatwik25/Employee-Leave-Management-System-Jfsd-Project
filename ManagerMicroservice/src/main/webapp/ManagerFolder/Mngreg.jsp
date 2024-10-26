<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link rel="stylesheet" href="./style.css">
<style>
/* Your existing CSS styles */
@import
	url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Quicksand', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: #0B132B;
}

section {
	position: absolute;
	width: 100vw;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 2px;
	flex-wrap: wrap;
	overflow: hidden;
}

section::before {
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	background: linear-gradient(#0B132B, #09817f, #0B132B);
	animation: animate 5s linear infinite;
}

@
keyframes animate { 0% {
	transform: translateY(-100%);
}

100
%
{
transform
:
translateY(
100%
);
}
}
section span {
	position: relative;
	display: block;
	width: calc(6.25vw - 2px);
	height: calc(6.25vw - 2px);
	background: #1C2541;
	z-index: 2;
	transition: 1.5s;
}

section span:hover {
	background: #09817f;
	transition: 0s;
}

/* Additional styles for the registration page */
.registration {
	position: absolute;
	width: 100vw;
	height: 150vh;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 2px;
	flex-wrap: wrap;
	overflow: hidden;
}

.registration form {
	width: 800px; /* Adjust the width as needed */
	background: #0B132B;
	z-index: 1000;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px;
	border-radius: 4px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 9);
	flex-wrap: wrap;
}

.registration .form-group {
	width: calc(33.33% - 20px);
	margin-right: 20px;
	margin-bottom: 20px;
}

.registration .form-group:last-child {
	margin-right: 0;
}

.registration .form-group label {
	color: #5BC0BE;
	font-weight: 600;
}

.registration .form-group input, .registration .form-group select {
	width: 100%;
	background: #1C2541;
	border: none;
	outline: none;
	padding: 15px 10px;
	border-radius: 4px;
	color: #fff;
	font-weight: 500;
}

.registration .form-group:last-child input[type="submit"] {
	margin-top: 20px;
}
</style>
</head>

<body>
	<section>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>

		<div class="registration">

			<form method="post" action="insertmanager">
				<div
					style="margin-right: 100px; margin-left: 100px; margin-bottom: 20px;">
					<h1 style="color: #5BC0BE;">Create a New Account??</h1>
				</div>
				<div class="form-group">
					<label for="id">Manager ID</label> <input type="text" id="id"
						name="id" required>
				</div>
				<div class="form-group">
					<label for="name"> Name</label> <input type="text" id="name"
						name="name" required>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email" id="email"
						name="email">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" required>
				</div>
				<div class="form-group">
					<label for="confirm-password">Confirm Password</label> <input
						type="password" id="confirm-password" name="confirm-password"
						required>
				</div>
				<div class="form-group">
					<label for="gender">Gender</label> <select id="gender"
						name="gender">
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
				<div class="form-group">
					<label for="birthdate">Date-Of-Birth</label> <input type="date"
						id="birthdate" name="dob">
				</div>
				<div class="form-group">
					<label for="department">Department</label> <input type="text"
						id="department" name="department">
				</div>
				<div class="form-group">
					<label for="Designation">Designation</label> <input type="text"
						id="Designation" name="Designation" required>
				</div>
				<div class="form-group">
					<label for="Salary">Salary</label> <input type="text" id="salary"
						name="salary" required>
				</div>
				<div class="form-group">
					<label for="Location">Location</label> <input type="text"
						id="Location" name="location" required>
				</div>
				<div class="form-group">
					<label for="contact">Contact</label> <input type="text"
						id="contact" name="contact" required>
				</div>

          
               

                <!-- <div class="form-group">
				<tr>
					<td></td>
				</tr>

				<tr>
					<td><label>Status</label></td>
					<td><select name="status" required>
							<option value="">---Select---</option>
							<option value="APPROVED">Approved</option>
							<option value="REJECTED">Rejected</option>
							<option value="PENDING">Pending</option>
					</select></td>
				</tr>
				</div>  -->
				
				<div style="margin-right: 20px; margin-left: 80px;">
					<h3 style="color: #fff;">
						Already Have an Account?? <br> <a href="Mnglogin"><h3
								style="color: #5BC0BE;">Sign In !</h3></a>
					</h3>
				</div>
				<div class="form-group">
					<a href="EmployeeFolder/index.html"> <input
						style="background-color: #5BC0BE; color: #000; font-size: larger;"
						type="submit" value="Register">
					</a>
				</div>

			</form>
		</div>

	</section>
	<!-- partial -->

</body>

</html>
