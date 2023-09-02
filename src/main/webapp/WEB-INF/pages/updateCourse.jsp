<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddCourse</title>
</head>
<body>

	<h1>You Can Add New Courses here...</h1>
	
		<br>	<br>
	<font color="green"><c:out value="${message}"></c:out></font>	
		<br>	<br>
		<a href="/springmvc">HOME</a><br>	<br>
		
	<table border="1">
		<thead>
			<th>Course Id</th>
			<th>Course Name</th>
			<th>Course Fees</th>
			<th>Course Details</th>
			<th>Edit</th>
		</thead>
		
		<c:forEach items="${courseList}" var="cr"> 
		  <tr>
		    <td>${cr.courseId}</td>
		    <td>${cr.courseName}</td>
		    <td>${cr.courseFees}</td>
		    <td>${cr.courseDetails}</td>
		    <td><a href="/springmvc/course/update/<c:out value="${cr.courseId}"></c:out>">EDIT</a>
		  </tr>
		</c:forEach>
	</table>
	
	<hr><hr>
	
	<c:set var = "xyz"  value = "${flag}"/>
<c:if test = "${flag == true}">
 		<form:form method = "POST" action = "/springmvc/course/save/" modelAttribute="courseBean">
         <table>
            <tr>
               <td><form:label path = "courseId">Course Id : </form:label></td>
               <td><form:input path = "courseId" readonly="true"/></td>
            </tr>
            
           <tr>
               <td><form:label path = "courseName">Course Name :</form:label></td>
               <td><form:input path = "courseName" /></td>
            </tr>
            
            <tr>
               <td><form:label path = "courseFees">Course Fees : </form:label></td>
               <td><form:input path = "courseFees" /></td>
            </tr>
            
            <tr>
               <td><form:label path = "courseDetails">Course Remarks</form:label></td>
               <td><form:input path = "courseDetails" /></td>
            </tr>
            
			<input type="submit"> </input>
      </table>
      </form:form> 
</c:if>
	
	
	
	 
		         
</body>
</html>