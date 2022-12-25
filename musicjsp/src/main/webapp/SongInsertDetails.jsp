<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.ServletException"%>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String movie = request.getParameter("movie");
String length = request.getParameter("length");
String singer = request.getParameter("singer");
String composer = request.getParameter("composer");
String lyrics = request.getParameter("lyrics");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>Song Id</td>
			<td>:<%=id%></td>
		</tr>
		<tr>
			<td>Song Name</td>
			<td>:<%=name%></td>
		</tr>
		<tr>
			<td>Movie Name</td>
			<td>:<%=movie%></td>
		</tr>
		<tr>
			<td>Length of song</td>
			<td>:<%=length%></td>
		</tr>
		<tr>
			<td>Singer Name</td>
			<td>:<%=singer%></td>
		</tr>
		<tr>
			<td>Composer Name</td>
			<td>:<%=composer%></td>
		</tr>
		<tr>
			<td>Lyrics Creater</td>
			<td>:<%=composer%></td>
		</tr>
		<tr>
			<td>Lyrics Creater</td>
			<td>:<%=lyrics%></td>
		</tr>

	</table>


	<%!Connection connection;
	PreparedStatement statement;
	int result = 0;%>
	<%
	try {
	%>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weje2", "root", "root");
	String query = "insert into song values(?,?,?,?,?,?,?)";
	statement = connection.prepareStatement(query);
	statement.setString(1, id);
	statement.setString(2, name);
	statement.setString(3, movie);
	statement.setString(4, length);
	statement.setString(5, singer);
	statement.setString(6, composer);
	statement.setString(7, lyrics);
	int result = statement.executeUpdate();
	%>

	<%
	if (result != 0) {
	%>
	<h1><%=result + " Song Successfully Saved In Database."%></h1>
	<%
	}
	%>
	<%
	} catch (ClassNotFoundException e) {
	%>
	<%=e%>
	<%
	} catch (SQLException e) {
	%>
	<%=e%>
	<%
	} finally {
	if (connection != null) {
		try {
			connection.close();
		} catch (SQLException e) {
	%>
	<%=e%>
	<%
	}
	}
	if (statement != null) {
	try {
	statement.close();
	} catch (SQLException e) {
	%>
	<%=e%>
	<%
	}
	}
	}
	%>



</body>
</html>