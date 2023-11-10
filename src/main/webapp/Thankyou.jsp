<!DOCTYPE html>
<html lang="en">
<head>
<title>ThankYou</title>

<link rel="preconnect" href="https://fonts.gstatic.com">

<!--Stylesheet-->
<style media="screen">
*,
*:before,
*:after{
padding: 0;
margin: 0;
box-sizing: border-box;
}
body{
background-color: #1A5F7A;
}
h2{text-align : center;}
.background{
width: 430px;
height: 520px;
position: absolute;
transform: translate(-50%,-50%);
left: 50%;
top: 50%;
}
.background .shape{
height: 200px;
width: 200px;
position: absolute;
border-radius: 50%;
}
.shape:first-child{
background: linear-gradient(
#1845ad,
#23a2f6
);
left: -80px;
top: -80px;
}
.shape:last-child{
background: linear-gradient(
to right,
#ff512f,
#f09819
);
right: -30px;
bottom: -80px;
}
form{
height: 400px;
width: 400px;
background-color: rgba(255,255,255,0.13);
position: absolute;
transform: translate(-50%,-50%);
top: 50%;
left: 50%;
border-radius: 10px;
backdrop-filter: blur(10px);
border: 2px solid rgba(255,255,255,0.1);
box-shadow: 0 0 40px rgba(8,7,16,0.6);
padding: 50px 35px;
}
form *{
font-family: 'Poppins',sans-serif;
color: #ffffff;
letter-spacing: 0.5px;
outline: none;
border: none;
}
form h3{
font-size: 25px;
font-weight: 450;
line-height: 30px;
text-align: center;
}label{
display: block;
margin-top: 25px;
font-size: 16px;
font-weight: 500;
}
input{
display: block;
height: 40px;
width: 100%;
background-color: rgba(255,255,255,0.07);
border-radius: 3px;
padding: 0 10px;
margin-top: 8px;
font-size: 14px;
font-weight: 300;
}
::placeholder{
color: #e5e5e5;
}
button{
margin-top: 45px;
width: 100%;
background-color: #ffffff;
color: #080710;
padding: 15px 0;
font-size: 18px;
font-weight: 600;
border-radius: 5px;
cursor: pointer;
}
option {
padding: 0 10px;
color:black;
margin-top: 8px;
font-size: 14px;
font-weight: 300;
}
select{
  color:black;
  padding: 5px 10px;
 }
label1{
font-size: 20px;

}

</style>
</head>
<body>
<div class="background">
<div class="shape"></div>
<div class="shape"></div>
</div>
<form action="Register" method="post">
	 
	  <div class="container">
	  
	  
	      	  
	   <br><br><br><br><br><br> <h2> <b>Thank You for Choosing Us!</b></h2>
	          	     
	  </div>
</form>
</body>
</html>


