<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-width: 700px;
	height: 100vh;
	background: url(https://images.pexels.com/photos/1205651/pexels-photo-1205651.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1) no-repeat;
	background-size: 100% 100%;
}

nav {
	border: 1px solid;
	padding: 10px;
	min-width: 700px;
	height: auto;
	background: linear-gradient(rgb(34, 44, 92), rgb(31, 171, 227));
	display: flex;
	justify-content: space-between;
	box-shadow: 10px 10px 25px;
}

.logo {
	/*border: 1px solid;*/
	padding: 5px 0px 0px 35px;
	min-width: 250px;
	color: white;
	cursor: pointer;
}

.logo:hover {
	color: orangered;
	border-radius: 8px;
}

ul {
	/*border: 1px solid;*/
	display: flex;
	padding: 10px;
}

ul li {
	/*border: 1px solid  red;*/
	margin: 0 2px;
	list-style: none;
}

ul li:hover {
	background-color: rgba(241, 235, 235, 0.622);
	border-radius: 5px;
}

ul li a:hover {
	color: black;
	border-radius: 5px;
}

ul li a {
	/* border: 1px solid;*/
	color: white;
	text-decoration: none;
	padding: 5px 10px;
	font-size: 25px;
}
</style>
</head>
<body>
	<nav>
		<div class="logo">
			<h2>Admin</h2>
		</div>
		<ul>
			<li><a href="AdminRegistration.jsp">Registration</a></li>
			<li><a href="AdminLogin.jsp">Login</a></li>
			<!-- <li><a href="#">Services</a></li>
			<li><a href="#">Cantact</a></li> -->
		</ul>
	</nav>
	<h1 style="text-align: center; margin-top:40px; font-size:80px;">Home page</h1>

</body>
</html>