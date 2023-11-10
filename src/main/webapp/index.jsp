<!DOCTYPE html>

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
h1 {text-align: center;}
body, html {

  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {

  box-sizing: border-box;
}

.bg-img {
  /* The image used */


  background-image: url("https://i.pinimg.com/originals/b4/4c/66/b44c665c88d2d14d1b4a6904bd133acb.gif");
  min-height: 500px;

  /* Center and scale the image nicely */

  background-position: left;
  background-repeat: no-repeat;
  background-size: 855px 465px;
  position: relative;
}

/* Add styles to the form container */

.container {

  position: absolute;

  right: 0;
  margin: 05px;
  margin-top: 18px;
  min-height: 463px;
  max-width: 400px;
  padding: 78px;
  background-color: orange;

}


/* Full-width input fields */

input[type=text], input[type=password] {
  width: 100%;

  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}


input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


/* Set a style for the submit button */

.btn {

  background-color: #04AA6D;
  color: red;
  padding: 16ppx 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {

  opacity: 1;
}

span.psw {

    text-decoration: none;
}


/* Change styles for span and cancel button on extra small screens */

@media screen and (max-width: 200px) {

    span.psw {

       display: block;

       float: none;

       text-decoration: none;

    }
</style>
</head>
<body>

<h1>One_Click_Travel</h1>
<div class="bg-img" >

  	<form action="Login" method="post" class="container">
        <h2>Login</h2>

	    <label><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required>
  
	    <label><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" required>
   
	    <button type="submit">Login</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
          
	    <span class="psw"><a href="forgotpassword.jsp">Forgot password?</a>
	    <br><br> <b> New User? </b> &nbsp&nbsp&nbsp&nbsp<a href="register.jsp" id="register"> Sign_Up </a> </span>
	  </div>
</form>
</body>
</html>


