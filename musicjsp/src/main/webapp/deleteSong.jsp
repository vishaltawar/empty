<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!Connection connection;
	PreparedStatement statement;
	int result = 0;%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Song</title>
</head>
<body>


	<%
	try {

		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weje2", "root", "root");
		statement = connection.prepareStatement("delete from song where id=?");
	%>

	<%
	statement.setString(1, request.getParameter("id"));
	%>

	<%
	result = statement.executeUpdate();
	if (result != 0) {
	%>
	<h3 style="color: green"><%=result + " row(s) Deleted."%></h3>
	<%
	}
	%>
	<%
	} catch (SQLException e) {
	%>
	<%=e%>
	<%
	}
	%>

</body>
</html>