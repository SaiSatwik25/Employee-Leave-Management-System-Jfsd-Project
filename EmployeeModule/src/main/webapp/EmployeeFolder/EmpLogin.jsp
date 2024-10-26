<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>


<html lang="en"> 


 <head> 


  <meta charset="UTF-8"> 


  <title>LeaveConnect</title> 


  <link rel="stylesheet" href="./style.css"> 

  <style>

    @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap');

*

{

  margin: 0;

  padding: 0;

  box-sizing: border-box;

  font-family: 'Quicksand', sans-serif;

}

body 

{

  display: flex;

  justify-content: center;

  align-items: center;

  min-height: 100vh;

  background: #0B132B;

}

section 

{

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

section::before 

{

  content: '';

  position: absolute;

  width: 100%;

  height: 100%;

  background: linear-gradient(#0B132B,#09817f,#0B132B);

  animation: animate 5s linear infinite;

}

@keyframes animate 

{

  0%

  {

    transform: translateY(-100%);

  }

  100%

  {

    transform: translateY(100%);

  }

}

section span 

{

  position: relative;

  display: block;

  width: calc(6.25vw - 2px);

  height: calc(6.25vw - 2px);

  background: #1C2541;

  z-index: 2;

  transition: 1.5s;

}

section span:hover 

{

  background: #09817f;

  transition: 0s;

}


section .signin

{

  position: absolute;

  width: 400px;

  background: #0B132B;  

  z-index: 1000;

  display: flex;

  justify-content: center;

  align-items: center;

  padding: 40px;

  border-radius: 4px;

  box-shadow: 0 15px 35px rgba(0,0,0,9);

}

section .signin .content 

{

  position: relative;

  width: 100%;

  display: flex;

  justify-content: center;

  align-items: center;

  flex-direction: column;

  gap: 40px;

}

section .signin .content h2 

{

  font-size: 2em;

  color: #5BC0BE;

  text-transform: uppercase;

}

section .signin .content .form 

{

  width: 100%;

  display: flex;

  flex-direction: column;

  gap: 25px;

}

section .signin .content .form .inputBox

{

  position: relative;

  width: 100%;

}

section .signin .content .form .inputBox input 

{

  position: relative;

  width: 100%;

  background: #1C2541;

  border: none;

  outline: none;

  padding: 25px 10px 7.5px;

  border-radius: 4px;

  color: #fff;

  font-weight: 500;

  font-size: 1em;

}

section .signin .content .form .inputBox i 

{

  position: absolute;

  left: 0;

  padding: 15px 10px;

  font-style: normal;

  color: #aaa;

  transition: 0.5s;

  pointer-events: none;

}

.signin .content .form .inputBox input:focus ~ i,

.signin .content .form .inputBox input:valid ~ i

{

  transform: translateY(-7.5px);

  font-size: 0.8em;

  color: #fff;

}

.signin .content .form .links 

{

  position: relative;

  width: 100%;

  display: flex;

  justify-content: space-between;

}

.signin .content .form .links a 

{

  color: #fff;

  text-decoration: none;

}

.signin .content .form .links a:nth-child(2)

{

  color: #5BC0BE;

  font-weight: 600;

}

.signin .content .form .inputBox input[type="submit"]

{

  padding: 10px;

  background: #5BC0BE;

  color: #1C2541;

  font-weight: 600;

  font-size: 1.35em;

  letter-spacing: 0.05em;

  cursor: pointer;

}

input[type="submit"]:active

{

  opacity: 0.6;

}

@media (max-width: 900px)

{

  section span 

  {

    width: calc(10vw - 2px);

    height: calc(10vw - 2px);

  }

}

@media (max-width: 600px)

{

  section span 

  {

    width: calc(20vw - 2px);

    height: calc(20vw - 2px);

  }

}

.captcha-box { 
  margin-top: 20px; /* Adjust the margin as needed */ 
  text-align: left; 
  font-size: 1.5em; /* Increase font size for visibility */ 
  color: #45f3ff; /* Change the color as needed */ 
}
  </style>


 </head> 


 <body> <!-- partial:index.partial.html --> 


  <section> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> 


   <div class="signin"> 


    <div class="content"> 


     <h2>Sign In</h2> 


     <div class="form" > 


      <div class="inputBox"> 
      
        <form method="post" action="checkemplogin" onsubmit="return checkCaptcha();">
        
       <input type="email" name="email" required> <i>Email</i> 
      </div> 
      <div class="inputBox"> 
       <input type="password" name="password" required> <i>Password</i> 
      </div> 

 <div class="captcha-box">
                <div class="captcha">
                    <!-- CAPTCHA text goes here -->
                </div>
                <input type="text" id="userInput" placeholder="Enter CAPTCHA" required="required">
            </div>
            
      <div class="links"> <a href="#">Forgot Password</a><br> <a href="Empreg">Don't Have an account??<br>Signup Instead!</a> 

      </div> 
      
      <div class="inputBox"> 

       <input type="submit" value="Login"> 

    </form>
<script type="text/javascript">
function generateCaptchaText(length) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let captchaText = '';
    for (let i = 0; i < length; i++) {
        const randomIndex = Math.floor(Math.random() * characters.length);
        captchaText += characters[randomIndex];
    }
    return captchaText;
}

// Function to update the CAPTCHA text and clear user input
function updateCaptcha() {
    const captchaElement = document.querySelector('.captcha');
    const userInputElement = document.getElementById('userInput');

    // Generate a new CAPTCHA text
    const newCaptchaText = generateCaptchaText(5);

    // Update the CAPTCHA text
    captchaElement.textContent = newCaptchaText;

    // Clear user input
    userInputElement.value = '';
}

// Function to check if the user input matches the CAPTCHA
function checkCaptcha() {
    const captchaElement = document.querySelector('.captcha');
    const userInputElement = document.getElementById('userInput');

    if (userInputElement.value === captchaElement.textContent) {
        // Optionally, update the CAPTCHA text for the next verification
        updateCaptcha();
        return true; // Allow the form to submit
    } else {
        alert('CAPTCHA verification failed. Please try again.');
        // Update the CAPTCHA text to create a new CAPTCHA
        updateCaptcha();
        return false; // Prevent the form from submitting
    }
}

// Initialize the CAPTCHA
updateCaptcha();

</script>


      </div> 


     </div> 


    </div> 

   </div> 

  </section> <!-- partial --> 

 </body>

</html>