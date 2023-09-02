<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Courses</title>
</head>
<body>

	<h1>You Can View all Courses here...</h1>
	
	<br><br>
	<a href="/springmvc">HOME</a><br>	<br>
	
	
	<br>	<br>
	<font color="green"><c:out value="${message}"></c:out></font>	
		<br>	<br>
		
		
	<table border="1">
		<thead>
			<th>Course Id</th>
			<th>Course Name</th>
			<th>Course Fees</th>
			<th>Course Details</th>
			<th> Action </th>
		</thead>
		
		<c:forEach items="${courseList}" var="cr"> 
		  <tr>
		    <td>${cr.courseId}</td>
		    <td>${cr.courseName}</td>
		    <td>${cr.courseFees}</td>
		    <td>${cr.courseDetails}</td>
		    <td><a href="/springmvc/course/delete/<c:out value="${cr.courseId}"></c:out>">Delete</a>
		  </tr>
		</c:forEach>
	</table>
</body>
</html>