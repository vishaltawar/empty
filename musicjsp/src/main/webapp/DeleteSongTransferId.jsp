<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="ViewSong.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--<a href="ViewSong.jsp">View Songs</a>  -->
	<form action="./deleteSong.jsp">
		<input type="text" name="id" placeholder="Enter Song Id "> <input
			type="submit" value="Delete Song">
	</form>

</body>
</html>