<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Details!</title>
</head>
<body>
<a href="getallstudents">View All Students!</a><hr>
<a href="updatestudents">Update Students!</a>
<c:if test="${result=='Success'}">
<h3 style="color: green;">Added!</h3>
</c:if>
<c:if test="${result=='failed'}">
<h3 style="color: red;"> Not Added!</h3>
</c:if>
<h3 style="color: gray;">Add New Student!</h3>
<form action="addstudent">
Student Id:     <input type="number" name="sid" required/><br><br>
Student Name:   <input type="text" name="sname" required/><br><br>
Student Rollno: <input type="number" name="sroll" required/><br><br>
Student Course: <input type="text" name="scourse" required/><br><br>
                <button>Add</button>
</form>
<hr>
<h3 style="color: yellow;">Search Student By Name!</h3>
<form action="toviewbyname">
Student Name:   <input type="text" name="sname" required/><br><br>
                <button>View By Name</button>
</form>
<hr>
<h3 style="color: red;">Delete Student By Name!</h3>
<c:if test="${delete=='Success'}">
<h3 style="color: green;">Successfully Deleted!</h3>
</c:if>
<c:if test="${delete=='Failed'}">
<h3 style="color: red;">No Student found with this Name!</h3>
</c:if>
<form action="deletebyname">
Student Name:   <input type="text" name="sname" required/><br><br>
                <button>Delete By Name</button>
</form>
<hr>
<h3 style="color: red;">Get Like Name Student</h3>
<form action="likename">
Student Name:   <input type="text" name="sname" required/><br><br>
                <button>Get</button>
</form>
<hr>

</body>
</html>