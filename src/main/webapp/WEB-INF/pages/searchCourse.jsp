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
	
	
	 <form:form action = "/springmvc/course/search/" method="GET">
				<input type="text" name="courseId" id="courseId"> </input>
				&nbsp;&nbsp;&nbsp; <input type="submit"> </input>
      </form:form>
      
      <h2><font color="red"><c:out value="${message}"></c:out></font></h2>

	 <c:out value="${courseBean}"></c:out>

</body>
</html>