<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="Navbar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Student</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: radial-gradient(rgb(187, 220, 95), rgb(241, 123, 12))
		no-repeat;
	background-size: cover;
	height: 100vh;
}

#main {
	border: 1px solid;
	margin: 150px auto;
	min-width: 250px;
	max-width: 30%;
	padding: 20px;
	border-radius: 10px;
	background-color: rgba(30, 95, 152, 0.259);
}

table {
	margin: 0 auto;
}

input {
	width: 100%;
	margin: 5px;
	border-radius: 5px;
	background: none;
	outline: none;
	padding: 8px;
	color: red;
}

#remove {
	background-color: rgb(252, 90, 21);
	font-weight: bolder;
	color: black;
}

h2 {
	text-align: center;
	padding: 5px 0px 15px 0px;
	color: black;
}
</style>
</head>
<body>
	<div id="main">
		<h2>Remove Student</h2>
		<form action="">
			<table>
				<tr>
					<td><input type="text" placeholder="Enter Student Id"></td>
				</tr>
				<tr>
					<td><input id="remove" type="submit" value="Remove"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>