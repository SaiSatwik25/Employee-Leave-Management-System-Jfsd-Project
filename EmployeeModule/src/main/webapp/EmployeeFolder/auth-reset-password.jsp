<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Reset Password - LeaveConnect</title>

    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="assets/modules/bootstrap-5.1.3/css/bootstrap.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Boostrap Icon-->
    <link rel="stylesheet" href="assets/modules/bootstrap-icons/bootstrap-icons.css">
  </head>
  <body>

    <div id="auth" class="d-flex justify-content-center align-items-center min-vh-100">
      <div class="col-lg-7 col-12">
        <div id="auth-right">
          <h1 class="auth-title">Reset Password</h1>
          <p class="auth-subtitle mb-5">Fill in the fields below ${email}</p>

          <form method="post" action="update">
            <div class="form-group position-relative has-icon-left mb-4">
              <input type="text" class="form-control form-control-xl" placeholder="Email" name="email" value="${email}" required="required">
              <div class="form-control-icon">
                <i class="bi bi-envelope"></i>
              </div>
            </div>

            <div class="form-group position-relative has-icon-left mb-4">
              <input type="password" class="form-control form-control-xl" name="pwd" placeholder="New Password" required="required">
              <div class="form-control-icon">
                <i class="bi bi-shield-lock"></i>
              </div>
            </div>

            <div class="form-group position-relative has-icon-left mb-4">
              <input type="password" class="form-control form-control-xl" placeholder="Confirm Password" required="required">
              <div class="form-control-icon">
                <i class="bi bi-shield-lock"></i>
              </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block btn-lg shadow-lg mt-5">Send</button>
          </form>

          <div class="text-center mt-5 text-lg fs-4">
            <p class='text-gray-600'>Remember your account? <a href="Emplogin" class="font-bold">Log in</a>.</p>
          </div>

          <!-- Back button -->
          <div class="text-center mt-3">
            <a href="home" class="btn btn-primary">Back</a>
          </div>
        </div>
      </div>
    </div>

    <!-- General JS Scripts -->
    <script src="assets/js/atrana.js"></script>

    <!-- JS Libraries -->
    <script src="assets/modules/jquery/jquery.min.js"></script>
    <script src="assets/modules/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="assets/modules/popper/popper.min.js"></script>

    <!-- Template JS Files -->
    <script src="assets/js/script.js"></script>
    <script src="assets/js/custom.js"></script>
  </body>
</html>
